# MultipleFileUploadResponse class

Used to determine the success or failure of a multiple file upload.

---
## Constructors
### `MultipleFileUploadResponse(OperationResult failedResult)`

Creates a MultipleFileUploadResponse instance with the specified OperationResult instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`failedResult` |  An OperationResult instance indicating the failure of an upload operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

### `MultipleFileUploadResponse(List<ContentVersion> contentVersions, OperationResult resultParam)`

Creates a MultipleFileUploadResponse instance with the list of uploaded ContentVersion and OperationResult instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`contentVersions` |  A list of uploaded contentVersion. |
|`resultParam` |  An OperationResult instance indicating the success or failure of an upload operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of argument is null. |

---
## Properties

### `ContentVersions` → `List<ContentVersion>`

A list of uploaded contentVersion.

### `Result` → `Operation`

An OperationResult indicating the success or failure of a file upload operation.

---
