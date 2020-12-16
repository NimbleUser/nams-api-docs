# WelcomeEmailComponentController class

Controls user facing email related components.

---
## Properties

### `MergeFields` → `WelcomeEmail`

A globally available inner class of merge fields for the welcome email. @return An instance of WelcomeEmailMergeFields.

---
## Inner Classes

### WelcomeEmailComponentController.WelcomeEmailMergeFields class

A globally available inner class of merge fields for emails.

---
#### Constructors
##### `WelcomeEmailMergeFields(String firstName, String commName, String commUrl)`

Constructs a WelcomeEmailMergeFields object instance.
###### Parameters
|Param|Description|
|-----|-----------|
|`firstName` |  The first name of the email recipient. |
|`commName` |  The name of the community associated with the email. |
|`commUrl,` |  The URL of the community associated with the email. |

##### `WelcomeEmailMergeFields(String firstName, String lastName, String username, String commName, String commUrl)`

Constructs a WelcomeEmailMergeFields object instance.
###### Parameters
|Param|Description|
|-----|-----------|
|`firstName` |  The first name of the email recipient. |
|`lastName` |  The last name of the email recipient. |
|`username` |  The username of the recipient. |
|`commName` |  The name of the community associated with the email. |
|`commUrl` |  The URL of the community associated with the email. |

---
#### Properties

##### `CommunityName` → `String`

The name of the Community sending the email. @return Community's Name.

##### `CommunityUrl` → `String`

The URL of the Community sending the email. @return Community's URL.

##### `RecipientFirstName` → `String`

The first name of the email recipient. @return Recipient first name.

##### `RecipientLastName` → `String`

The last name of the email recipient. @return Recipient last name.

##### `RecipientUsername` → `String`

The username of the email recipient. @return Recipient username.

---
