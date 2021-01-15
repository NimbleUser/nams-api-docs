# RegistrationHandler class

Provides hooks for the ICommunityUserLocator, ICommunityUserPopulater, and ICommunityAuthorization interfaces. The default classes can be overridden using the NC__CommunitySettings__c Custom Setting.

---
## Constructors
### `RegistrationHandler()`
---
## Properties

### `USER_NOT_AUTHORIZED_MSG` → `String`

---
## Methods
### `createUser(Id portalId, Auth.UserData userData)` → `User`

Creates a User based on the implementation of the ICommunityUserLocator. Then the user is updated based on the implementation of the ICommunityUserPopulater. Finally, it decides if the User should have access based on the implementation of the ICommunityAuthorization.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  Id of the portal or community the User is registering with. |
|`Auth.UserData` |  The data passed in from OpenID about the User. |

#### Return

**Type**

User

**Description**

a User object

### `updateUser(Id userId, Id portalId, Auth.UserData userData)` → `void`

Updates a user based on the implementation of ICommunityUser. this method is called when the User has used OpenID to authenticate before.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  Id of the User that has logged in before. |
|`Id` |  Id of the portal or community the User is registering with. |
|`Auth.UserData` |  The data passed in from OpenID about the User. |

#### Return

**Type**

void

**Description**

a User object

---
## Inner Classes

### RegistrationHandler.RegistrationHandlerException class
---
