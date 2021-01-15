# FileUploadResponse class

Used to determine the success or failure of a file upload.

---
## Constructors
### `FileUploadResponse(OperationResult failedResult)`

Creates a FileUploadResponse instance with the specified OperationResult instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`failedResult` |  An OperationResult instance indicating the failure of an upload operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

### `FileUploadResponse(String recordIdParam, String versionIdParam, OperationResult resultParam)`

Creates a FileUploadResponse instance with the specified record Id and OperationResult instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordIdParam` |  The resulting record Id from a file upload operation. |
|`versionIdParam` |  The resulting version Id from a file upload operation. |
|`resultParam` |  An OperationResult instance indicating the success or failure of an upload operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

---
## Properties

### `Data` → `Object>`

A simple key / value store to use for storing / retrieving additional data in a response.

### `RecordId` → `String`

A record Id related to this response. Stored as a string since the origin of this response could be any system, not just Salesforce.

### `Result` → `Operation`

An OperationResult indicating the success or failure of a file upload operation.

### `VersionId` → `String`

A version Id related to this response. Stored as a string since the origin of this response could be any system, not just Salesforce.

---
