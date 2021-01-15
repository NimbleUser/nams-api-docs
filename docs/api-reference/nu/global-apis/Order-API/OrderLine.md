# OrderLine class

This class represents an Order Item Line and is used to facilitate the entry of orders into the system.

---
## Constructors
### `OrderLine(OrderLineRequest request)`

Default constructor for creating a new Order Line.
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A class containing the basic information necessary for an order line. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
## Properties

### `CustomerId` → `Id`

The Id of the account who will be receiving the goods/services.

### `EntityId` → `Id`

The entity Id of the product used to create this order line.

### `HistoryDatas` → `List<HistoryData>`

The data representing the history records related to this order line. An empty list is returned if not set.

### `IsShippable` → `Boolean`

Whether this OrderLine is shippable or not.

### `ItemRecordTypeId` → `Id`

The Id of the order item record type that this order line should belong to.

### `MembershipId` → `Id`

The Id of the Membership__c related to the order line being generated.

### `MembershipTypeProductLinkId` → `Id`

The Id of the MembershipTypeProductLink__c related to the order line being generated.

### `PriceClassId` → `Id`

The Id of the price class used to calculate the price for this order line.

### `ProductId` → `Id`

The Id of the product this order line is for.

### `Quantity` → `Integer`

The quantity that will be purchased for this order line. Returns zero if not set.

### `RecordTypeName` → `String`

The record type name of the product used to create this order line.

### `RelatedHistoryData` → `HistoryData`

The HistoryData object related to this line.

### `SubscriptionId` → `Id`

The Id of the Subscription__c related to the order line being generated.

### `UnitPrice` → `Decimal`

The unit price for this order line. Returns zero if not set.

---
## Methods
### `addValueToField(Schema.SObjectField field, Object value)` → `void`

Assign a value to an Schema.SObjectField to assign it to the SObject this wrapper represents before it is built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  Schema.SObjectField to assign the value to. |
|`value` |  The value that will be assigned to the field. |

### `getCurrencyIsoCode()` → `String`

Returns the CurrencyIsoCode of the SObject if salesforce multi-currency is turned on.

#### Return

**Type**

String

**Description**

OrderItemLine__c.SObjectType.

### `getGroupIdentifier()` → `String`

Identifier that distinguishes this item from others. Composed of the RecordTypeId of the parent item + the Entity Id + the Customer Id. Can be overridden using the Context property.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  The UnitOfWork the SObject will be registered into. |
|`relatedObject` |  An SObjectWrapper object that relates to the OrderItemLine__c that will be created. |
|`updateWork` |  The UnitOfWork that will be passed along to the OrderItem objects. |

#### Return

**Type**

String

**Description**

String with the identifier for this line.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |
|`ArgumentNullException` |  if updateWork is null. |

### `getTotalPrice()` → `Decimal`

Calculates the total price for this order line by multiplying Quantity and UnitPrice. If this OrderLine represents a discount then a negative value will be returned.

#### Return

**Type**

Decimal

**Description**

A decimal representing the total price.

### `isActive()` → `Boolean`

Whether this OrderLine is cancelled or not.

#### Return

**Type**

Boolean

**Description**

Whether this OrderLine is cancelled or not.

### `isDiscount()` → `Boolean`

Whether this OrderLine represents a discount or not. The OrderLine is a discount if the OrderItemLine__c.IsCouponOrderItemLine__c field is true.

#### Return

**Type**

Boolean

**Description**

Whether this OrderLine is a discount or not.

### `setGroupIdentifier(String groupIdentifier)` → `void`

Sets the group identifier to force this line to be added to a particular item.

#### Parameters
|Param|Description|
|-----|-----------|
|`groupIdentifier` |  The identifier of the item this line should be added to. |

---
