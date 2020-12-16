# DataFactoryContact class

Handles data management for the Contact object. Primarily used for testing.

---
## Properties

### `DEFAULT_EMAIL` → `String`

### `DEFAULT_FIRST_NAME` → `String`

### `DEFAULT_LAST_NAME` → `String`

---
## Methods
### `createContact(Account acct)` → `Contact`

Creates a Contact using the default information and is linked to the Account passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Account` |  The Account Id will be linked to the Contact. |

#### Return

**Type**

Contact

**Description**

a Contact object

### `createContact()` → `Contact`

Creates a Contact using the default information.

#### Return

**Type**

Contact

**Description**

a Contact object

### `insertContact(Account acct)` → `Contact`

Inserts a Contact using the default information and is linked to the Account passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Account` |  The Account Id will be linked to the Contact. |

#### Return

**Type**

Contact

**Description**

a Contact object

---
