# SystemUtil class

Contains various utility methods for interacting with the platform.

---
## Methods
### `getCommunityUserTypes()` → `List<String>`

Gets the user types which the system acknowledges as community users in calls to isCommunityUser().

#### Return

**Type**

List<String>

**Description**

A List<String> of acceptable community user types.

### `isCommunityUser()` → `Boolean`

Whether the logged in user is a Community Hub user or not.

#### Return

**Type**

Boolean

**Description**

True if the user is a Community Hub user, false otherwise.

### `setTestIsCommunityUser()` → `void`

Makes the isCommunityUser() method return true for testing purposes.

---
