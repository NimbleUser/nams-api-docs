# SyncAllRecordJob class

An on demand job for syncing all record objects as defined by FieldMapping__c custom settings.

---
## Constructors
### `SyncAllRecordJob()`

Instantiates SyncAllRecordJob. Pre-fetches formula field mappings so potential exceptions aren't gobbled up by the batch start sequence.
#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  If no field mappings are found. |

---
