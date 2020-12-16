# FileDeleteResponse class

Used to determine the success or failure of a file deletion.

---
## Constructors
### `FileDeleteResponse(OperationResult operationResultParam)`

Creates a FileDeleteResponse instance with the specified OperationResult instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`failedResult` |  An OperationResult instance indicating the status of the operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

### `FileDeleteResponse()`

Creates a FileDeleteResponse instance with a successful OperationResult.
---
## Properties

### `Result` → `Operation`

An OperationResult indicating the success or failure of a file delete operation.

---
