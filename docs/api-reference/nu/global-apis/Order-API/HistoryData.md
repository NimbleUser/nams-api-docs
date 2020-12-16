# HistoryData class

This class represents the data needed to create history records.

---
## Constructors
### `HistoryData()`

Default constructor.
---
## Properties

### `AccountId` → `Id`

The Id of the Account that the generated history record will belong to.

### `AccountRelationship` → `Schema.SObjectField`

The SObjectField on the history type that is used to link a history record to an account.

### `HistoryRelationship` → `Schema.SObjectField`

The SObjectField from the OrderItemLine__c used to link an OrderItemLine__c to a history record.

### `HistoryType` → `Schema.SObjectType`

The SObjectType to generate as the history record.

### `OrderItemRelationship` → `Schema.SObjectField`

The SObjectField from the history type used to link a history record to an OrderItem__c.

### `OrderLineRelationship` → `Schema.SObjectField`

The SObjectField from the history type used to link a history record to an OrderItemLine__c.

### `ProductRelationship` → `Schema.SObjectField`

The SObjectField on the history type that is used to link a history record to a product.

---
## Methods
### `addValueToField(Schema.SObjectField field, Object value)` → `void`

Assign a value to an Schema.SObjectField to assign it to the SObject this wrapper represents before it is built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  Schema.SObjectField to assign the value to. |
|`value` |  The value that will be assigned to the field. |

### `afterSave(UnitOfWork updateWork)` → `void`

Not implemented.

### `construct(OrderLine line, SObject record)` → `void`

Constructs a new HistoryData wrapper for the specified SObject.

#### Parameters
|Param|Description|
|-----|-----------|
|`line` |  The parent OrderLine. |
|`record` |  The history record to be wrapped. |

### `getFieldsToQueryByRelationship()` → `Set<Schema.SObjectField>>`

Gets the Schema.SObjectFields related to an OrderItemLine__c for this history wrapper.

#### Return

**Type**

Set<Schema.SObjectField>>

**Description**

Null in the base implementation.

### `getValueFromField(SObjectField field)` → `Object`

Gets the value on this wrapper that corresponds to the passed in field.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field we want to get the value for. |

#### Return

**Type**

Object

**Description**

The value for the passed in field.

### `onAdjustmentAdd(OrderLine lineWrapper, Map<String, Object> contextDataByKey)` → `void`

Called by AdjustmentOrder when history data is being loaded back into an order from SObject for adjustment.

#### Parameters
|Param|Description|
|-----|-----------|
|`lineWrapper` |  The OrderLine instance this HistoryData is associated with. |
|`contextDataByKey` |  Additional contextual data passed along by the OrderLine class. |

### `register(UnitOfWork saveWork, HistoryData relatedObject)` → `void`

Registers the built SObject represented by this object into the passed in UnitOfWork.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  Unit of work the SObject will register to. |
|`relatedObject` |  The HistoryData this object will relate to. |

### `register(UnitOfWork saveWork, OrderLine relatedLine, OrderItem parentItem)` → `void`

Registers the built SObject represented by this object into the passed in UnitOfWork.

#### Parameters
|Param|Description|
|-----|-----------|
|`saveWork` |  Unit of work the SObject will register to. |
|`relatedLine` |  The OrderLine that this object will relate to. |
|`parentItem` |  An optional OrderItem representing the line's parent. Used when the OrderItemRelationship |

---
