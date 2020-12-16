# ProfilePhotoDragAndDropService class

Facilitates drag and drop upload functionality for account profile photos.

---
## Constructors
### `ProfilePhotoDragAndDropService()`

A default constructor for creating an instance of ProfilePhotoDragAndDropService. We don't use a singleton or a newInstance as this needs to be dynamically instantiated by name.
---
## Methods
### `upload(Id accountId, String fileName, String base64Data)` → `OperationResult`

Uploads the specified base64 encoded image file for the specified Account Id. Intended to be called from a Javascript remote action.

#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Id of the account to set the profile photo for. |
|`fileName` |  The file name of the file being uploaded. |
|`base64Data` |  A Base64 encoded String containing the image being uploaded. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
