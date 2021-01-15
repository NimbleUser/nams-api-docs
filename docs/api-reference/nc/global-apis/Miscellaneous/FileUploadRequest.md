# FileUploadRequest class

Utilized to generate requests for the FileUploadService.

---
## Constructors
### `FileUploadRequest(String fileNameParam)`

Constructs a FileUploadRequest with the specified file name.
#### Parameters
|Param|Description|
|-----|-----------|
|`fileNameParam` |  The name the file should be stored as. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if fileNameParam argument is null. |

### `FileUploadRequest(String fileNameParam, IFileUploadService implementationParam)`

Constructs a FileUploadRequest with the specified file name and IFileUploadService implementation object.
#### Parameters
|Param|Description|
|-----|-----------|
|`fileNameParam` |  The name the file should be stored as. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Properties

### `ActualFileName` → `String`

The actual file name for this request being uploaded by the client e.g. "pikachu.png" Some implementations may use this to extrapolate what type of file it is.

### `BinaryFile` → `Blob`

The actual binary file data being uploaded.

### `SObjectRecordId` → `Id`

The Id of an SObject record which this uploaded file should be related to in some way.

---
