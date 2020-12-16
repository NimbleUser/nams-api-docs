# CreateAccountService class

Contains methods associated with User and Account creation.

---
## Properties

### `Instance` → `CreateAccountService`

Gets an instance of CreateAccountService. @return CreateAccountService instance.

---
## Methods
### `getReturnUrl()` → `String`

Gets the Url the user will be redirected to on login based on the startUrl query param. If no startUrl is specified returns the ProfileSnapShot url.

#### Return

**Type**

String

**Description**

String for the return url.

### `sendWelcomeEmail(Id contactId)` → `void`

Sends a welcome email to the email associated with the passed in user.

#### Parameters
|Param|Description|
|-----|-----------|
|`contactId` |  Id of the contact associated with the user that the email will be sent to. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if contactId is null. |

---
