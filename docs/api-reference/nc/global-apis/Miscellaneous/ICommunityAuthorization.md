# ICommunityAuthorization interface

Determines if a User has access to a community.

---
## Methods
### `isAuthorizedForCommunity(AuthorizationRequest request)` → `AuthorizationResponse`

Determines if a User should be able to access a community, even if they have authenticated with an Auth. Provider successfully.

#### Parameters
|Param|Description|
|-----|-----------|
|`AuthorizationRequest` |  Contains the User to authorize. |

#### Return

**Type**

AuthorizationResponse

**Description**

AuthorizationResponse.isAuthorized true if the User has access

---
