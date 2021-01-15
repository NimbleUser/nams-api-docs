# IDragAndDrop interface

Describes methods to be used for drag and drop file upload functionality.

---
## Methods
### `upload(Id sObjectId, String fileName, String base64Data)` → `OperationResult`

Describes a method for asynchronously receiving data to upload.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObjectId` |  The SObject Id to tie the uploaded file to. |
|`fileName` |  The file name of the file being uploaded. |
|`base64Data` |  A Base64 encoded String containing the data being uploaded. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure of the operation.

---
