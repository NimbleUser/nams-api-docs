# AttachmentService class

A service that handles inserting attachments.

---
## Constructors
### `AttachmentService(Request request)`

Handle accepting and validating the AttachmentService.Request. Note: This simply wraps the passed request in a list and passes it on to the overloaded constructor: AttachmentService(List<Request> requests)
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The AttachmentService.Request that is being made. |

### `AttachmentService(List<Request> requests)`

Handle accepting a collection of requests to create, validate, and insert Attachment records.
#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The collection of AttachmentService.Request objects that are being |

---
## Methods
### `save()` → `List<AttachmentInfo>`

Save the file to the Attachment object in Salesforce.

#### Return

**Type**

List<AttachmentInfo>

**Description**

List of AttachmentService.AttachmentInfo objects with

---
## Inner Classes

### AttachmentService.AttachmentInfo class

A response object that will be passed back after processing a request. This wrapped object will offer the consumer immediate access to the download link to improve processing and minimize additional overhead.

---
#### Properties

##### `DownloadLink` → `String`

Gets the Download Link for the Attachment record.

##### `File` → `Attachment`

The attachment that has been inserted.

---
### AttachmentService.Request class

A request object that handles collecting the Attachment properties.

---
#### Constructors
##### `Request()`

A generic constructor that will allow creation of this request object.
---
#### Properties

##### `Body` → `blob`

The content of the attachment to insert. Note: Required.

##### `ContentType` → `String`

The extension of the attachment to insert.

##### `Description` → `String`

The description of the attachment to insert.

##### `IsPrivate` → `Boolean`

Indicates whether this record is viewable only by the owner and administrators (true) or viewable by all otherwise-allowed users (false). Note: This will default to false.

##### `Name` → `String`

The name of the attachment to insert. Note: Required.

##### `OwnerId` → `Id`

The Id of the User that owns the attachment to insert. Note: This will default to the user that is creating the record.

##### `ParentId` → `Id`

The Id of the record to relate the attachment to insert to. Note: Required.

---
