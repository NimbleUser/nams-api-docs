# CartItem class

Used as the base class for classes used to wrap the CartItem__c sObject. This class is primarily used when adding products to a cart. The CartItem classes in conjunction with the BundleComponent classes specify the criteria which determines how products should be grouped in a cart.

---
## Constructors
### `CartItem(CartItem.Request request)`

Default constructor for the CartItem base class that sub-classes can use to set the base properties. If the request contains CartItemLine__c records, they will be stored internally.
#### Parameters
|Param|Description|
|-----|-----------|
|`item` |  The CartItem__c record that will be represented by the requested CartItem wrapper class. |
|`cartItemLines` |  The CartItemLine__c records belonging to the specified CartItem__c record. Optional. |
|`request` |  The CartItem.Request that contains the CartItem__c record which will be represented by this class. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if item is null. |
|`ArgumentNullException` |  if the request is null. |

---
## Properties

### `CustomerId` → `Id`

The Id of the customer account for the record wrapped by an instance of this class.

### `EntityId` → `Id`

The entity Id the record wrapped by an instance of this class.

### `PriceClassId` → `Id`

The Id of the price class linked to the CartItem__c record wrapped by an instance of this class.

### `RecordId` → `Id`

The Id of the CartItem__c record wrapped by an instance of this class.

### `RecordTypeId` → `Id`

The Id of the RecordType for the record wrapped by an instance of this class.

---
## Methods
### `getFieldValue(Schema.SObjectField objectField)` → `Object`

This method can be used to dynamically retrieve the value of a field from the CartItem record stored in this class.

#### Parameters
|Param|Description|
|-----|-----------|
|`component` |  A bundle component to use when updating the CartItemData. |
|`fieldsToSet` |  The map of Schema.SObjectField and the values that should be set. |
|`feesToCreate` |  A Fees domain class wrapping all the fees to create. |
|`feesToInsert` |  The Fees domain class containing all fees to be |
|`feeInsertionWork` |  The unit of work to register our newly created fee cart item lines with. |
|`objectField` |  The SObjectField whose value should be retrieved. |

#### Return

**Type**

Object

**Description**

The value of the requested field as a generic object.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if fieldsToSet is null. |
|`ArgumentNullException` |  if any of the provided parameters are null. |
|`NUArgumentException` |  if either parameter is null. |
|`ArgumentNullException` |  if the objectField is null. |

### `getIdentifier()` → `String`

Override this method to return an identifier that should be used to group bundle components with the correct cart item. The corresponding bundle components will need to return the same value in order to be added to the correct cart items. The default value is a concatenation of RecordTypeId, Entity Id, and Customer Id in that order.

#### Return

**Type**

String

**Description**

The RecordTypeId, Entity Id, and Customer Id concatenated into a single string.

### `getType()` → `String`

Override this method to return the class type name. For example: global override String getType() { return CustomCartItem.class.toString(); }

---
## Inner Classes

### CartItem.Request class

A request class for creating instances of the CartItem class. This class is used by ICartItemConstructor and sub-classes of the CartItem class.

---
#### Constructors
##### `Request(CartItem__c item)`

Default constructor containing a CartItem__c record. When using this class with existing CartItem__c records, they should at least have the following fields queried: 1. Customer__c 2. Data__c 3. RecordTypeId 4. Entity__c 5. PriceClass__c
###### Parameters
|Param|Description|
|-----|-----------|
|`item` |  The CartItem__c record that will be represented by the requested CartItem wrapper class. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the specified item is null. |

---
