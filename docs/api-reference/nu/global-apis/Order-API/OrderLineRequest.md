# OrderLineRequest class

A request class for creating an Order Line.

---
## Constructors
### `OrderLineRequest(sObject record, Decimal price, Integer quantity, Id priceClassId,Id customerId, String recordTypeName)`

Constructor for an OrderLineRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The SObject that will drive the creation of an order line. This is generally a Product__c SObject. |
|`price` |  Decimal representing the price determined by the pricing manager. |
|`quantity` |  The quantity amount that will be assigned to the order line. |
|`priceClassId` |  Id of the price class used to determine the price. |
|`customerId` |  Id of the account record used to determine price. |
|`recordTypeName` |  Name of a product record type that the requested order line will be created for. This is |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameters are null. |

### `OrderLineRequest(SObject record, Decimal price, Integer quantity, Id priceClassId,Id customerId, String recordTypeName, Id membershipTypeProductLinkId)`

Constructor for an OrderLineRequest which includes MTPL info.
#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The SObject that will drive the creation of an order line. This is generally a Product__c SObject. |
|`price` |  Decimal representing the price determined by the pricing manager. |
|`quantity` |  The quantity amount that will be assigned to the order line. |
|`priceClassId` |  Id of the price class used to determine the price. |
|`customerId` |  Id of the account record used to determine price. |
|`recordTypeName` |  Name of a product record type that the requested order line will be created for. This is |
|`membershipTypeProductLinkId` |  The Id of a membership type product link associated with the requested |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameters are null. |

---
## Properties

### `CalculatedPrice` → `Decimal`

The price that was calculated for the order line using the special pricing manager or some other means.

### `Context` → `Object>`

A map containing any additional data that may be necessary for creating an order line.

### `CustomerId` → `Id`

The Id of the account who will be receiving the goods/services.

### `HistoryDataGeneratorHelper` → `HistoryDataGenerator`

HistoryDataGenerator that controls if and how automatic HistoryData instances are created for the line.

### `MembershipTypeProductLinkId` → `Id`

The Id of the membership type product link associated with this line (if any).

### `PriceClassId` → `Id`

The Id of the price class used to determine the calculated price.

### `Quantity` → `Integer`

The Product Quantity for the order line.

### `RecordId` → `Id`

The Id of the record representing the product to create an order line for.

### `RecordTypeName` → `String`

String representing the name of a product record type.

---
## Methods
### `getFieldValue(Schema.SObjectField objectField)` → `Object`

Used to access field values on the record contained within this request. The record within is typically a Product__c SObject but may be a junction object depending on the type of order line that is being created. For example, membership uses MembershipTypeProductLink__c SObjects. Consumers of this method should expect the possibility of a null value being returned since we are unable to guarantee which fields are populated on the contained record.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectField` |  Schema.SObjectField whose value should be retrieved. |

#### Return

**Type**

Object

**Description**

The generic Object representing the value of the specified field on the SObject record.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if objectField is null. |

---
