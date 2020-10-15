## PaymentsApiV1PersistenceService class

V1 implementation of the PaymentsApiPersistenceService. Service for saving model objects from the PaymentsApi into the database.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PaymentsApiV1PersistenceService()`

Creates a new PaymentsApiV1PersistenceService.
<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `commitWork()` → `void`

Commits all of the registered objects into the database.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(PaymentBase objectToRegister)` → `PaymentsApiPersistenceService`

Registers a PaymentBase for upsertion. The PaymentBase along with all of it's internal data (lines) will be saved into the database when commitWork is called.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectToRegister` |  The PaymentBase object to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `register(List<PaymentBase> objectsToRegister)` → `PaymentsApiPersistenceService`

Registers a list of PaymentBase for upsertion. The PaymentBase along with all of it's internal data (lines) will be saved into the database when commitWork is called.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectsToRegister` |  The PaymentBase objects to register. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `registerDeleted(IPersistenceSupport objectToRegister)` → `PaymentsApiPersistenceService`

Registers an IPersistenceSupport object for deletion when commitWork is called.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectToRegister` |  The object to register for deletion. |

<!-- panels:end -->
---
