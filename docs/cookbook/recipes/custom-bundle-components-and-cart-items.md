# Custom Bundle Components and Cart Items

## Background

In the course of an implementation of Community Hub, often times the need arises for custom product types beyond the stock, packaged types. From this need, we also require the ability to build custom bundle component types and cart items so they can be viewed and purchased online.

### The Scenario

As an example, we'll be creating a custom product record type named `**Exhibitor**`. An exhibitor attends an event or trade show in order to exhibit their offerings to attendees. An exhibitor product acts similarly to other product types, but has one key item. It looks up to an **event** record. Once a user has paid for an exhibitor product, they are able to select a booth on the show floor and specify additional details regarding their booth.

## Exhibitor Product Record Type

The first step in being able to utilize custom bundle components and cart items in Community Hub is to create the Exhibitor record type. Follow the standard [Salesforce platform documentation](https://help.salesforce.com/apex/HTViewHelpDoc?id=creating_custom_object_recordtypes.htm&language=en) if you are unfamiliar with this process. For the purposes of this document, let's assume the record type is named `**Exhibitor**`.

## Exhibitor Bundle Component

The `ExhibitorBundleComponent` class will allow Community Hub to request bundles containing exhibitor products.

```apex
public with sharing class ExhibitorBundleComponent extends NU.BundleComponent {
    private static final String REQUEST_PARAM = 'request';
 
    /**
     * @description Constructs an instance of ExhibitorBundleComponent.
     */
    public ExhibitorBundleComponent() { }
 
    /**
     * @description Used to generate a unique identifier that will
     *              distinguish this component from other bundle components.
     * @return String representing identifier.
     */
    public override String getIdentifier() {
        return (String)ProductId;
    }
     
    /**
     * @description The event Id used to represent which event this product is associatted with.
     */
    public String EventId { get; set; }
     
    /**
     * @description This method is overridden to provide a map of CartItem__c fields and their values. The map
     *              is consumed by the Nimble AMS CartService to populate fields on the NU__CartItem__c record that this
     *              BundleComponent will be added to. In this example, we are overriding it to send the EventId along to
     *              the NU__CartItem__c record.
     * @return A map of SObjectFields and desired values.
     */
    public override Map<Schema.SObjectField, Object> getCartItemValues() {
        Map<Schema.SObjectField, Object> myMap = new Map<Schema.SObjectField, Object>();
        myMap.put(NU__CartItem__c.Event__c, EventId);
        return myMap;
    }
     
    /**
     * @description This method is overridden to append the EventId to the standard cart item identifier.
     * @return The ItemRecordTypeId, Entity Id, Customer Id, and Event Id concatenated into a single string.
     */
    public override String getCartItemIdentifier() {
        return super.getCartItemIdentifier() + EventId;
    }
 
    /**
     * @description Inner class used to instantiate instances of ExhibitorBundleComponent.
     */
    public class Constructor implements NU.IBundleComponentConstructor {
        private final String RECORD_TYPE = 'RecordType';
 
        /**
         * @description Constructs bundle component.
         * @param request Instance of NU.BundleComponentRequest.
         * @return ExhibitorBundleComponent
         */
        public ExhibitorBundleComponent construct(NU.BundleComponentRequest request) {
            NC.ArgumentNullException.throwIfNull(request, REQUEST_PARAM);
 
            ExhibitorBundleComponent component = new ExhibitorBundleComponent();
            component.Name = (String)request.getFieldValue(NU__Product__c.Name);
            component.ProductId = (Id)request.getFieldValue(NU__Product__c.Id);
            component.PriceClassId = request.PriceClassId;
            component.EntityId = (Id)request.getFieldValue(NU__Product__c.NU__Entity__c);
            component.CustomerId = request.CustomerId;
            component.EventId = (String)request.getFieldValue(NU__Product__c.NU__Event2__c);
            component.Quantity = 1;
            component.Description = (String)request.getFieldValue(NU__Product__c.NU__Description__c);
            component.MaxQuantity = (Decimal)request.getFieldValue(NU__Product__c.NU__QuantityMax__c);
            component.IsTaxable = (Boolean)request.getFieldValue(NU__Product__c.NU__IsTaxable__c);
            component.IsShippable = (Boolean)request.getFieldValue(NU__Product__c.NU__IsShippable__c);
            component.setPrice(request.CalculatedPrice);
            component.RecordTypeName = request.RecordTypeName;
 
            Map<String, Schema.RecordTypeInfo> cartItemRecordTypes = Schema.SObjectType.NU__CartItem__c.getRecordTypeInfosByName();
            Schema.RecordTypeInfo exhibitorRTI = cartItemRecordTypes.get(component.RecordTypeName);
            component.ItemRecordTypeId = exhibitorRTI.getRecordTypeId();
 
            return component;
        }
    }
}
```

## Exhibitor Cart Item

Our `ExhibitorCartItem` class will allow cart items to be constructed specifically for exhibitor orders. to do this we:

1. Define a class that extends `NU.CartItem`
2. Extend `getIdentifier()` so that our cart item will be properly associated with its bundle components.
3. Define a constructor for the creation of cart items.

This can be as simple as falling back on the default behavior, or as complex as individual needs require. Here's the most basic possible implementation:

```apex
public with sharing class ExhibitorCartItem extends NU.CartItem {
    private static final String REQUEST_PARAM = 'request';
 
    public ExhibitorCartItem(NU.CartItem.Request request) {
        super(request);
    }
 
    /**
     * @description Overriding the getIdentifier() method is the main reason we need the ExhibitorCartItem class. 
     *              We want the Bundle Component and the Cart Item to include the Event Id when generating the 
     *              CartItem Identifiers so that these products get grouped properly.
     * @return The custom identifier.
     */
    public override String getIdentifier() {
         return super.getIdentifier() + getFieldValue(NU__CartItem__c.Event__c.getDescribe().getSObjectField());
    }
 
    /**
     * @description Inner constructor class that implements the ICartItemConstructor interface.
     */
    public class ExhibitorCartItemConstructor implements NU.ICartItemConstructor {
        private final String CART_ITEM_PARAM = 'cartItem';
 
        /**
         * @description Constructs an instance of the CartItem class.
         * @param cartItem The CartItem.Request which contains the CartItem__c record.
         * @return An instance of the CartItem class.
         * @throws ArgumentNullException if the request is null.
         */
        public ExhibitorCartItem construct(NU.CartItem.Request request) {
            NC.ArgumentNullException.throwIfNull(request, REQUEST_PARAM);
 
            return new ExhibitorCartItem(request);
        }
    }
}
```

## Summary

Hopefully this document provides a good overview of what goes in to a custom bundle tied to a specified event. That's only one example of a bundle extension though – custom bundle components are designed to allow connections between groups of products, so if your business requirements call for that look no further!
