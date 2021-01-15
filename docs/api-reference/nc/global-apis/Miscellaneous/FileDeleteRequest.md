# FileDeleteRequest class

Utilized to generate requests for the FileDeleteService.

---
## Constructors
### `FileDeleteRequest(String fileNameParam, IFileDeleteService implementationParam)`

Constructs a FileDeleteRequest with the specified file name.
#### Parameters
|Param|Description|
|-----|-----------|
|`fileNameParam` |  The name the file that will be deleted. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Properties

### `ActualFileName` → `String`

The actual file name for this request being uploaded by the client e.g. "pikachu.png" Some implementations may use this to extrapolate what type of file it is.

### `SObjectRecordId` → `Id`

The Id of an SObject record which this uploaded file should be related to in some way.

---
