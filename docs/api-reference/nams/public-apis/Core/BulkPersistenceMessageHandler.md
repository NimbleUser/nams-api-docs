## BulkPersistenceMessageHandler interface

`NamespaceAccessible`

Implement this interface when you want to get notified of all of the IPersistenceSupport records that will be committed to the database before DML occurs.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `notify(List<IPersistenceSupport> persistenceSupports)` → `void`

`NamespaceAccessible`

Gets called by the PersistenceService before DML occurs, passing all of the IPersistenceSupport objects for a given SObjectType. Allows you to make bulk operation on all IPersistenceSupport records just before DML.

##### Parameters
|Param|Description|
|-----|-----------|
|`persistenceSupports` |  All IPersistenceSupport objects for a given SObjectType. |

<!-- panels:end -->
---
