# MultipleFileUploadComponentController class

Controls the MultipleFileUpload component.

---
## Methods
### `getUploadedFiles()` → `List<ContentDocument>`

Gets a list of currently existing contentDocument records for the parentId.

#### Return

**Type**

List<ContentDocument>

**Description**

A list of existing contentDocument for the parent record.

### `initialize()` → `void`

Initializes the card with a list of attachments to insert with empty records. Also sets the parentId with the id url param.

### `submit(UnitOfWork submitWork)` → `void`

Uploads the file chosen in the view using the service implementation on the request.

#### Parameters
|Param|Description|
|-----|-----------|
|`submitWork` |  A unit of work instance. |

---
