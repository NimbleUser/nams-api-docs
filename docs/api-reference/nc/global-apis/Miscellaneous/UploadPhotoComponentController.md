# UploadPhotoComponentController class

Controls UploadPhoto.component, allowing photos to be uploaded.

---
## Methods
### `getDragAndDropImplementationClassName()` → `String`

Gets the class name of the service to facilitate drag and drop Javascript functionality.

#### Return

**Type**

String

**Description**

The namespaced version of the ProfilePhotoDragAndDropService class in this base implementation.

### `getFileDeleteServiceImplementation()` → `IFileDeleteService`

IFileDeleteService implementation that should be used by this controller to delete images.

#### Return

**Type**

IFileDeleteService

**Description**

ProfileImageFileDeleteService implementation of the IFileDeleteService.

### `getFileUploadServiceImplementation()` → `IFileUploadService`

IFileUploadService implementation that should be used by this controller to upload images.

#### Return

**Type**

IFileUploadService

**Description**

ProfileImageFileUploadService implementation of the IFileUploadService.

### `getIsThumbnailRound()` → `Boolean`

Returns if the image should be round or not.

#### Return

**Type**

Boolean

**Description**

True by default.

### `initialize()` → `void`

Registers additional fields to query with the query service.

---
