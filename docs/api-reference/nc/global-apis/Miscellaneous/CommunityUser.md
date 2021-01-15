# CommunityUser class
---
## Properties

### `CartId` → `Id`

Gets the Id of the primary cart for the current user. @return Id of the primary cart for the current user, if the user is a guest user will return null.

### `IsCompanyManager` → `Boolean`

Tells you if current user is a manager of their primary affiliation. This will return false if the user does not have a primary affiliation. @return true if company manager, false if not.

### `IsLoggedIn` → `Boolean`

Tells you if current user is logged in or not. @return false if UserInfo.getUserType() == 'Guest', else true

---
## Methods
### `clearCache()` → `void`

Clears the Cart value.

### `createCart()` → `Id`

Creates a new cart for the user.

#### Return

**Type**

Id

**Description**

The Id of the new Cart.

### `getAccountId()` → `Id`

Gets the account Id of the current user

#### Return

**Type**

Id

**Description**

Id of the current user's person account.

### `getAnonymousAccountId()` → `Id`

Retrieve the Id of the anonymous account from customization settings, if one exists.

#### Return

**Type**

Id

**Description**

The Id of the anonymous account. Null if none is set or if the configured Id is invalid.

### `getPrimaryAffiliateId()` → `Id`

Fetches the primary affiliate Id of the current account.

#### Return

**Type**

Id

**Description**

Id of the account set to the current user's primary affiliation.

### `hasPrimaryCart()` → `Boolean`

Tells you if the current user has a primary cart in a simple, succinct manner without attempting to insert one if one does not exist.

#### Return

**Type**

Boolean

**Description**

True if the calling user has a primary cart, else false.

---
