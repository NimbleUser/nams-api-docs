# ICommunityUserLocator interface

Defines how a User should be located or created when logging into a community with OpenID.

---
## Methods
### `findOrCreateUser(LocatorRequest request)` → `LocatorResponse`

Finds or creates a User based on implementation, and populates fields not handled by the ICommunityUserPopulater interface such as profileId.

#### Parameters
|Param|Description|
|-----|-----------|
|`LocatorRequest` |  Contains the Auth.UserData to lookup or create a |

#### Return

**Type**

LocatorResponse

**Description**

LocatorResponse

---
