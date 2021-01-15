# IDupeService2 interface

Interface implemented by classes that handle duplicate checking.

---
## Methods
### `findDupes(DupeServiceRequest dupeServiceRequest)` → `DupeServiceResponse`

findDupes takes in a request containing the criteria to search for dupes and returns the list of matching records in the response.

#### Parameters
|Param|Description|
|-----|-----------|
|`dupeServiceRequest` |  The request that contains the input needs for finding duplicates |

#### Return

**Type**

DupeServiceResponse

**Description**

The response containing the found dupe records, if any.

### `setFieldSetName(String fieldSet)` → `void`

Sets the field set this DupeService implementation will use.

#### Parameters
|Param|Description|
|-----|-----------|
|`fieldSet` |  The name of the field set as a string. |

---
