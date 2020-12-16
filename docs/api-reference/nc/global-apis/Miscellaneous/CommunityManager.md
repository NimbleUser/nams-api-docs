# CommunityManager class

Provides convenience methods for interacting with the NU__CommunitySettings__c object.

---
## Properties

### `EMPTY_PROFILE_NAME_MSG` → `String`

---
## Methods
### `getCommunityProfileId()` → `Id`

Returns the Id of the profile specified in the NC__CommunitySettings__c.NC__UserProfileName__c field.

#### Return

**Type**

Id

**Description**

a Profile Id

### `getCommunityProfileName()` → `String`

Returns the Name of the profile specified in the NC__CommunitySettings__c.NC__UserProfileName__c field.

#### Return

**Type**

String

**Description**

a String

### `getCommunityProfileNotFoundMsg(String profileName)` → `String`

Returns the message when the profile cannot be found by name.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  name of the profile that was not found. |

#### Return

**Type**

String

**Description**

String message.

---
## Inner Classes

### CommunityManager.CommunityNullPointerException class
---
### CommunityManager.CommunityProfileNotFoundException class
---
### CommunityManager.CommunityProfileNotSetException class
---
