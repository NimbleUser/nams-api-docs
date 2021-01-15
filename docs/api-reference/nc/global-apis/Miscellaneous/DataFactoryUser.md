# DataFactoryUser class

Handles data management for the User and Auth.User objects. Primarily used for testing.

---
## Properties

### `DEFAULT_PROVIDER` → `String`

---
## Methods
### `createCustomerCommunityUsers(Integer count)` → `List<User>`

Creates the specified number of customer community users.

#### Parameters
|Param|Description|
|-----|-----------|
|`count` |  The number of customer community users to create. |

#### Return

**Type**

List<User>

**Description**

List<User>

### `createGuestCommunityUser()` → `User`

Creates an un-authenticated guest user associated with our Guest permission set. The user inherits all rights, or lack thereof from that permission set. Used for testing with logged out users.

#### Return

**Type**

User

**Description**

The created Guest user.

### `createGuestCommunityUsers(Integer count)` → `List<User>`

Creates specified number of community guest users.

#### Parameters
|Param|Description|
|-----|-----------|
|`count` |  The number of customer community users to insert. |
|`affiliateWithCompanies` |  Optionally, create one |
|`count` |  The number of guest users to create. |

#### Return

**Type**

List<User>

**Description**

List<User>

### `createUser(Auth.UserData userData)` → `User`

Creates a User populated by the passed in Auth.UserData object. The User's alias is email address left of the '@', up to 8 characters long. The community nickname is the User's email address up to 40 characters long.

#### Parameters
|Param|Description|
|-----|-----------|
|`Auth.UserData` |  Provides the information to populate the |

#### Return

**Type**

User

**Description**

a User object.

### `createUserData(Contact contact)` → `Auth.UserData`

Creates an Auth.UserData object using the information from the passed in Contact. The Auth.UserData.identifier is populated with the Id of the passed in Contact and is linked to the Account passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Contact` |  Provides the information to populate the |

#### Return

**Type**

Auth.UserData

**Description**

an Auth.UserData object.

### `insertCustomerCommunityUsers(Integer count)` → `List<User>`

Inserts the specified number of customer community users.

#### Parameters
|Param|Description|
|-----|-----------|
|`count` |  The number of customer community users to create. |
|`affiliateWithCompanies` |  Optionally, create one |
|`count` |  The number of customer community users to insert. |

#### Return

**Type**

List<User>

**Description**

List<User>

### `insertUser(Auth.UserData userData)` → `User`

Inserts a User populated by the passed in Auth.UserData object. The User's alias is email address left of the '@', up to 8 characters long. The community nickname is the User's email address up to 40 characters long.

#### Parameters
|Param|Description|
|-----|-----------|
|`Auth.UserData` |  Provides the information to populate the |

#### Return

**Type**

User

**Description**

a User object.

---
