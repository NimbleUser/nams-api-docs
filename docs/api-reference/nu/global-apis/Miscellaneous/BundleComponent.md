# BundleComponent class

Bundle Components represent products.

---
## Constructors
### `BundleComponent()`

Bundle Component constructor.
---
## Properties

### `CurrencyIsoCode` → `String`

Currency ISO Code of the SObject.

### `CustomerId` → `Id`

The Id of the account this component is for.

### `Description` → `String`

A description of this component.

### `EntityId` → `Id`

The entity Id of the product used to create this bundle component.

### `IsInventoryTracked` → `Boolean`

Determines if inventory is tracked on this bundle component. The value is set in the Constructor inner class. @return True if inventory is tracked, else false.

### `IsQuantityEditable` → `Boolean`

Represents whether or not online users can alter the quantity.

### `IsSelected` → `Boolean`

Represents whether or not this component has been selected.

### `IsShippable` → `Boolean`

Whether this component is shippable or not.

### `IsTaxable` → `Boolean`

Whether this component is taxable or not.

### `ItemId` → `Id`

The Id of the CartItem__c record this component would be grouped within. This will return null if this bundle component has not yet been added to a cart.

### `ItemLineId` → `Id`

The Id of the CartItemLine__c record this component is linked to. This will return null if this bundle component has not yet been added to a cart.

### `ItemRecordTypeId` → `Id`

the record type Id of the relevant cart item

### `MaxQuantity` → `Decimal`

The maximum number of the items the user can purchase.

### `Name` → `String`

The name of the Product__c record used to create this component.

### `Price` → `Decimal`

The current calculated price of this component. This will be updated based on special pricing.

### `PriceClassId` → `Id`

The Id of the price class that applies to this component.

### `ProductId` → `Id`

The Id of the Product__c record used to create this component.

### `Quantity` → `Integer`

The number of components represented with this component.

### `RecordTypeName` → `String`

The record type name of the product used to create this bundle component.

### `ShortDescription` → `String`

A short description of this component.

---
## Methods
### `getCartItemIdentifier()` → `String`

Override this method to return an identifier that should be used to group bundle components with the correct cart item. The default value is a concatenation of ItemRecordTypeId, Entity Id, and Customer Id in that order. The ItemRecordTypeId is set during the construction of a BundleComponent. This Id corresponds to the record type of the Cart Items that will contain the products represented by this bundle component.

#### Return

**Type**

String

**Description**

The ItemRecordTypeId, Entity Id, and Customer Id concatenated into a single string.

### `getCartItemValues()` → `Object>`

This method can be overridden to provide a map of CartItem__c fields and their values. The map will be consumed by the Nimble AMS CartService to populate fields on the CartItem__c record that this BundleComponent will be added to.

#### Return

**Type**

Object>

**Description**

A map of SObjectFields and desired values.

### `getIdentifier()` → `String`

Implement to generate a unique identifier that will distinguish this component from other bundle components. In most cases, the product Id will be sufficient. In cases where the product type relies on a junction object (e.g. MembershipTypeProductLink, ProgramTypeProductLink) you should include the junction object Id as well.

#### Return

**Type**

String

**Description**

String representing identifier.

### `getIsPriceEditable()` → `Boolean`

Implement to make the price of a bundle component editable by the user.

#### Return

**Type**

Boolean

**Description**

False; prices are not editable unless this is overriden.

### `getIsSelectable()` → `Boolean`

Whether or not this bundle component can be selected. By default returns true. Override to change behavior.

#### Return

**Type**

Boolean

**Description**

True.

### `getMessage()` → `String`

Returns any informational messages that should adorn this component's visualforce representation. Defaults to an empty string, override to change behavior.

#### Return

**Type**

String

**Description**

An empty string.

### `getType()` → `String`

Returns the class type name of this bundle component.

#### Parameters
|Param|Description|
|-----|-----------|
|`the` |  Set of cart item line Ids that were deleted. |
|`itemId` |  - Id of cart item that this components cart item lines should be linked to. |

#### Return

**Type**

String

**Description**

String value of the Bundle Component's class name.

### `setPrice(Decimal newPrice)` → `void`

Set the current calculated price of this component. To be used during the initial construction to bypass the isPriceAdjustable method enforced when setting the Price property directly. This validation is used to prevent users from changing the price of a product before adding it to their cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`newPrice` |  The new decimal price to set. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the specified newPrice is null. |

---
