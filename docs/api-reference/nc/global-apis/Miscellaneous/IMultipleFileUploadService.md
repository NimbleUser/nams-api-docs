# IMultipleFileUploadService interface

Describes implementations for uploading files to a storage mechanism.

---
## Methods
### `uploadVersions(MultipleFileUploadRequest request)` → `MultipleFileUploadResponse`

Uploads list of files for the specified MultipleFileUploadRequest.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The MultipleFileUploadRequest containing list of FileUploadRequest with information required to |

#### Return

**Type**

MultipleFileUploadResponse

**Description**

A MultipleFileUploadResponse containing the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
