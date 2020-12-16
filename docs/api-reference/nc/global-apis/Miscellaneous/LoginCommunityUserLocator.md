# LoginCommunityUserLocator class

ICommunityUserLocator used on social sign on to find an existing community user or create a new one if it does not exist.

---
## Methods
### `findOrCreateUser(LocatorRequest request)` → `LocatorResponse`

Looks for an existing community user based on the email passed in through the request. If an existing user is found the CustomizationSettings__c.SocialSignOnEnhancedSecurityEnabled__c custom setting determines if the user is returned or if an error is displayed to the user. If an existing user is not found, an account and a new user get created.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  LocatorRequest with the Auth.UserData object containing the user's email. |

#### Return

**Type**

LocatorResponse

**Description**

LocatorResponse object containing the user record.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `newInstance()` → `LoginCommunityUserLocator`

Returns a new instance of LoginCommunityUserLocator.

#### Return

**Type**

LoginCommunityUserLocator

**Description**

A new instance of LoginCommunityUserLocator.

---
