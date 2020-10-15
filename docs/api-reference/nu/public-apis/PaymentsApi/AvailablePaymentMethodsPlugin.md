## AvailablePaymentMethodsPlugin class

Plugin for getting the available payment methods and setting them on the PaymentBase.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `AvailablePaymentMethodsPlugin(Id entityId)`

Constructs a new AvailablePaymentMethodsPlugin for the provided entity Id.
##### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id to get the available payment methods for. |

##### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if entityId is null. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `onBeforeCreate(List<Object> queriedRecords)` → `void`

Called by a factory before its base objects are built. Gets payment methods and sets to local variable for use in `onCreate`.
##### Parameters
|Param|Description|
|-----|-----------|
|`queriedRecords` |  The records that were queried to query for more data. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onCreate(Object originalRecord, Object generatedWrapper)` → `void`

Modifies the PaymentBase wrapper by setting the available payment methods.
##### Parameters
|Param|Description|
|-----|-----------|
|`originalRecord` |  Source SObject from which the wrapper was created. |
|`generatedWrapper` |  The generated wrapper that will be modified. |

<!-- panels:end -->
---
