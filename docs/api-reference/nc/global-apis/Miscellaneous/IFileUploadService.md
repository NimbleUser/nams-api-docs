# IFileUploadService interface

Describes implementations for uploading files to a storage mechanism.

---
## Methods
### `uploadVersion(FileUploadRequest request)` → `FileUploadResponse`

Uploads a file for the specified FileUploadRequest.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The FileUploadRequest containing relevant information required to upload a version of a file. |

#### Return

**Type**

FileUploadResponse

**Description**

A FileUploadResponse containing the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
