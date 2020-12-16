# IFileDeleteService interface

Describes implementations for deleting files to a storage mechanism.

---
## Methods
### `deleteFile(FileDeleteRequest request)` → `FileDeleteResponse`

Deletes a file for the specified FileDeleteRequest.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The FileDeleteRequest containing relevant information required to delete a file. |

#### Return

**Type**

FileDeleteResponse

**Description**

A FileDeleteResponse containing the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
