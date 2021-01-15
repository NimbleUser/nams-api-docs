# TagServiceRequest class

Contains the information needed to request the TagService class.

---
## Constructors
### `TagServiceRequest(Set<Id> recordId, Integer recordLimit, Boolean randomize)`

Builds a request for the TagService.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The record Id for which we want get another record Ids based on associated tags. |
|`recordLimit` |  Limit the number of records needs to fetch. |
|`randomize` |  The randomize for the request. This will use to randomize the list of related record. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any param is null. |

### `TagServiceRequest(Set<Id> recordId)`
---
## Properties

### `Randomize` → `Boolean`

If set, represents the Randomize which was used to populate this request.

### `RecordIds` → `Set<Id>`

If set, represents the Record Id which was used to populate this request.

### `RecordLimit` → `Integer`

If set, represents the RecordLimit which was used to populate this request.

---
