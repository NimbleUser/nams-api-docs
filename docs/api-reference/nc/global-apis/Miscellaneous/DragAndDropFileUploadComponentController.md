# DragAndDropFileUploadComponentController class

Controls DragAndDropFileUpload.component, providing a means of uploading files asynchronously through a drag and drop user interface.

---
## Properties

### `AccountId` → `String`

The AccountId being passed in by the component.

### `Base64Data` → `String`

The base64 encoded data being passed in by the component.

### `DummyFile` → `Blob`

In order to have an apex:inputFile on the page, we need a value to tie it to. This is used explicitly for that need and is not utilized at all in the upload process.

### `FileName` → `String`

The file name being passed in by the component.

### `ServiceImplementation` → `String`

The implementation of IDragAndDrop being passed in by the component.

---
## Methods
### `uploadFile()` → `PageReference`

Performs upload with the values set in the properties.

#### Return

**Type**

PageReference

**Description**

A null PageReference to partially refresh the current page. As this is being used async in a partial

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the required properties are null. |

---
