# BundleComponentRequest class

This class is used to request a bundle component. A BundleComponentRequest will contain the record used to create a BundleComponent. Other information will be included such as special pricing data and term data. Bundle Component requests are created by IBundleConstructor classes then passed into the BundleComponentFactory class. The BundleComponentFactory determines which IBundleComponentConstructor should be used based on the Record Type specified on the request. The request is then provided to the IBundleComponentConstructor to create the BundleComponent.

---
## Constructors
### `BundleComponentRequest(sObject record, Decimal calculatedPrice, Id priceClassId,Id customerId, String recordTypeName)`

Constructor for BundleComponentRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The SObject that will drive the creation of a bundle component. This is generally a Product__c |
|`calculatedPrice` |  Decimal representing the price determined by the pricing manager. |
|`priceClassId` |  Id of the price class used to determine the calculated price. This can be null if customerId |
|`customerId` |  Id of the account record used to determine price and terms. This can be null if priceClassId is |
|`recordTypeName` |  Name of a product record type that the requested bundle component will be created for. This |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the required parameters are null. |

---
## Properties

### `CalculatedPrice` → `Decimal`

Calculated price determined by the pricing manager for the record this request wraps.

### `CustomerId` → `Id`

Id of the Account record the component is being requested for.

### `PriceClassId` → `Id`

Id of the PriceClass__c record used to determine the calculated price.

### `RecordId` → `Id`

Represents the Id of the record this request wraps.

### `RecordTypeName` → `String`

String representing the name of a product record type.

---
## Methods
### `getFieldValue(Schema.SObjectField objectField)` → `Object`

Used to access field values on the record contained within this request. The record within is typically a Product__c SObject but may be a junction object depending on the type of bundle that is being created. For example, membership uses MembershipTypeProductLink__c SObjects. Consumers of this method should expect the possibility of a null value being returned since we are unable to guarantee which fields are populated on the contained record.

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
