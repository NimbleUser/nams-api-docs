# SocialRegistrationHandler class

Registration Handler for Social Sign On functionality.

---
## Constructors
### `SocialRegistrationHandler()`

Global parameterless constructor for global class.
---
## Methods
### `createUser(Id portalId, Auth.UserData userData)` → `User`

Called when the user is logging in through an Auth. Provider for the first time, or if there is not an existing ThirdPartyAccountLink record linking the user to the Auth. Provider. Uses the LoginCommunityUserLocator implementation to determine if the user should be created or an existing user should be returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`portalId` |  Id of the portal or community the User is registering with. Not used. |
|`Auth.UserData` |  The data passed in from the Auth. Provider about the User. |

#### Return

**Type**

User

**Description**

User that will be logged in. If the user does not exist, it gets automatically created.

#### Throws
|Exception|Description|
|---------|-----------|
|`SocialRegistrationHandlerException` |  if no user is located. |

### `updateUser(Id userId, Id portalId, Auth.UserData userData)` → `void`

Makes sure that the user is able to log in. Called when there is an existing ThirdPartyAccountLink record linking the user to the Auth. Provider, or if the Existing User Linking Url is being used.

#### Parameters
|Param|Description|
|-----|-----------|
|`userId` |  Id of the existing user. |
|`portalId` |  Id of the portal or community. Not used. |
|`Auth.UserData` |  The data passed in from the Auth. Provider about the User. Not used. |

#### Throws
|Exception|Description|
|---------|-----------|
|`SocialRegistrationHandler` |  exception if UserService.Instance.ensureUserAccess returns |

---
## Inner Classes

### SocialRegistrationHandler.SocialRegistrationHandlerException class

Thrown when an error occurs within the SocialRegistrationHandler.

---
