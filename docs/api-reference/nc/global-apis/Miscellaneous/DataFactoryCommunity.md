# DataFactoryCommunity class

Handles data creation for the Nimble Community product. Primarily used for testing.

---
## Properties

### `DEFAULT_PORTAL_ID` → `String`

---
## Methods
### `setupDefaultTestData()` → `Auth.UserData`

Inserts a new instance of NC__CommunitySettings__c, inserts a related Account and Contact, and creates an Auth.UserData object with the information from the created Contact.

#### Return

**Type**

Auth.UserData

**Description**

an Auth.UserData object

---
