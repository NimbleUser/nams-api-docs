# OrderItemTestData class

Builder class for dealing with OrderItem__c records. Solely used for testing, NOT a data factory.

---
## Properties

### `DefaultOrderItem` → `OrderItem__c`

Returns the most recently created OrderItem__c. @return An OrderItem__c object.

---
## Methods
### `asBillMe()` → `OrderItemTestData`

Sets the BillMe__c field for the OrderItem__c that is being built as true.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `asDonation()` → `OrderItemTestData`

Sets the RecordTypeId for the OrderItem__c being built to the donation record Type.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `asMembership()` → `OrderItemTestData`

Sets the RecordTypeId for the OrderItem__c being built to the Membership record Type.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `asMerchandise()` → `OrderItemTestData`

Sets the RecordTypeId for the OrderItem__c being built to the merchandise record Type.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `asRegistration()` → `OrderItemTestData`

Sets the RecordTypeId for the OrderItem__c being built to the registration record Type.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `asSubscription()` → `OrderItemTestData`

Sets the RecordTypeId for the OrderItem__c being built to the subscription record Type.

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `create()` → `OrderItem__c`

Builds the OrderItem__c object.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderIdsArg` |  The set of order id's to use. |
|`versionNumber` |  The version number to set. |
|`totalShipping` |  The total shipping to set. |
|`totalTax` |  The total tax to set. |
|`salesTaxId` |  The sales tax id to set. |
|`shipMethodId` |  The ship method id to set. |

#### Return

**Type**

OrderItem__c

**Description**

The created OrderItem__c object.

### `forCustomer(Id customerId)` → `OrderItemTestData`

Sets the Customer__c for the OrderItem__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`customerId` |  The account id to set for the Customer__c field. |

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `inOrder(Id orderId)` → `OrderItemTestData`

Sets the Order__c for the OrderItem__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderId` |  The order id to set for the Order__c field. |

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `insertRecord()` → `OrderItem__c`

Builds and inserts a OrderItem.

#### Return

**Type**

OrderItem__c

**Description**

The built and inserted OrderItem.

### `newInstance()` → `OrderItemTestData`

Method for getting a new instance of OrderItemTestData.

#### Return

**Type**

OrderItemTestData

**Description**

A new instance of OrderItemTestData.

### `with(Schema.SObjectField field, Object value)` → `OrderItemTestData`

Dynamically sets the Schema.SObjectField noted by field to value for OrderItems being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`howMany` |  The number of order items to insert. |
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `withEntity(Id entityId)` → `OrderItemTestData`

Sets the Entity__c for the OrderItem__c being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity id to set for the Entity__c field. |

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

### `withShippingAddress(Address address)` → `OrderItemTestData`

Define the shipping address of the order item.

#### Parameters
|Param|Description|
|-----|-----------|
|`address` |  An Address representation of the address that will set |

#### Return

**Type**

OrderItemTestData

**Description**

The instance of OrderItemTestData.

---
