# OrderTestData class

Builder class for dealing with Order__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultOrder` → `Order__c`

Returns the most recently created Order__c. @return an Order__c.

---
## Methods
### `asBillMe()` → `OrderTestData`

Sets the BillMe__c field for the Order__c that is being built as true.

#### Return

**Type**

OrderTestData

**Description**

The instance of OrderTestData.

### `billTo(Id billToId)` → `OrderTestData`

Sets the BillTo__c field for the Order__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`billToId` |  The account Id to use for the value of the BillTo__c field. |

#### Return

**Type**

OrderTestData

**Description**

The instance of OrderTestData.

### `create()` → `Order__c`

Builds the Order__c object.

#### Return

**Type**

Order__c

**Description**

The created Order__c object.

### `insertRecord()` → `Order__c`

Builds and inserts a Order.

#### Return

**Type**

Order__c

**Description**

The built and inserted Order.

### `newInstance()` → `OrderTestData`

Method for getting a new instance of OrderTestData.

#### Return

**Type**

OrderTestData

**Description**

A new instance of OrderTestData.

### `with(Schema.SObjectField field, Object value)` → `OrderTestData`

Dynamically sets the Schema.SObjectField noted by field to value for Orders being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`howMany` |  The number of orders to insert. |
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

OrderTestData

**Description**

The instance of OrderTestData.

### `withBalance(Decimal balance)` → `OrderTestData`

Sets the Balance__c field for the Order__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`balance` |  The Balance__c to set. |

#### Return

**Type**

OrderTestData

**Description**

The instance of OrderTestData.

### `withEntity(Id entityId)` → `OrderTestData`

Sets the Entity__c field for the Order__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id to use for the value of the Entity__c field. |

#### Return

**Type**

OrderTestData

**Description**

The instance of OrderTestData.

---
