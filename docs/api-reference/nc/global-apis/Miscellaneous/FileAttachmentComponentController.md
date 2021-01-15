# FileAttachmentComponentController class

Controls the FileAttachment component.

---
## Properties

### `AttachmentsToInsert` → `List<Attachment>`

List of new attachments to create. @return The list of new attachments that will be created.

### `RenderAttachments` → `Boolean`

If true component with attachments will be rendered. Otherwise component with files will be rendered.

---
## Methods
### `getAcceptedExtensions()` → `String`

Gets the accepted files extensions that can be uploaded for this component. An empty string means all file extensions are allowed, by default everything is allowed.

#### Return

**Type**

String

**Description**

Comma separated string with the allowed file extensions, e.g - '.txt, .pdf'.

### `getAttachmentsToAddQuantity()` → `Integer`

Gets the number of attachment buttons that will be added for the user when clicking the Add Additional Files button. Returns 5 by default.

#### Return

**Type**

Integer

**Description**

Integer with the number of attachment buttons that will be added.

### `getCanAddAdditionalAttachments()` → `Boolean`

Gets if additional attachments can be added based on the limit set.

#### Return

**Type**

Boolean

**Description**

True if more attachments can be added, false otherwise.

### `getCanEdit()` → `Boolean`

Gets if attachments can be added or removed.

#### Return

**Type**

Boolean

**Description**

True if attachments can be added or removed, false otherwise.

### `getLimit()` → `Integer`

Default limit of 0 means there is no limit.

#### Return

**Type**

Integer

**Description**

The limit of allowed attachments. Defaults to 0.

### `getParentId()` → `Id`

Gets the currently set parentId.

#### Return

**Type**

Id

**Description**

The parentId to use for the attachments to create.

### `getUploadedAttachments()` → `List<Attachment>`

Gets a list of currently existing attachment records for the parentId.

#### Return

**Type**

List<Attachment>

**Description**

A list of existing attachments for the parent record.

### `getUploadedFiles()` → `List<ContentDocument>`

Always returns an empty list of ContentDocument.

#### Return

**Type**

List<ContentDocument>

**Description**

An empty list of contentDocument.

### `initialize()` → `void`

Initializes the card with a list of attachments to insert with empty records. Also sets the parentId with the id url param.

### `saveAttachments()` → `void`

Calls the AttachmentService in Nimble AMS with a request built based on the AttachmentsToInsert list.

### `submit(UnitOfWork unit)` → `void`

Submits the card, calling the saveAttachments() method.

#### Parameters
|Param|Description|
|-----|-----------|
|`unit` |  A unit of work instance. |

---
