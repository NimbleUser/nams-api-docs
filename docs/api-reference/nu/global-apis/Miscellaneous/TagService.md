# TagService class

Get Related Record Ids based on the Tags associated with given Record.

---
## Properties

### `Instance` → `TagService`

A static singleton access for retrieving a shared instance of TagService. @return An instance of TagService.

---
## Methods
### `getRelatedRecords(TagServiceRequest request)` → `TagServiceResponse`

Constructs a successful TagServiceResponse with related record Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request containing the record Ids, record limit and randomize. |

#### Return

**Type**

TagServiceResponse

**Description**

TagServiceResponse with set of related record Ids.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
