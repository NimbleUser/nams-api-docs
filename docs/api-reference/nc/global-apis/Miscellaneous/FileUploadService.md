# FileUploadService class

Used for uploading files to Salesforce.

---
## Properties

### `Instance` → `FileUploadService`

Gets an instance of FileUploadService. @return FileUploadService instance.

---
## Methods
### `uploadVersion(FileUploadRequest request)` → `FileUploadResponse`

Uploads a version of the specified FileUploadRequest utilizing the configured implementation of IFileUploadService.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An instance of FileUploadRequest containing the necessary details for uploading a file. |

#### Return

**Type**

FileUploadResponse

**Description**

A FileUploadResponse indicating the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request or request.Implementation is null. |

### `uploadVersions(MultipleFileUploadRequest request)` → `MultipleFileUploadResponse`

Uploads a version of the specified files in MultipleFileUploadRequest utilizing the configured implementation of IMultipleFileUploadService.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An instance of MultipleFileUploadRequest containing the necessary details for uploading files. |

#### Return

**Type**

MultipleFileUploadResponse

**Description**

A MultipleFileUploadResponse indicating the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
