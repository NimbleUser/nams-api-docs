# ColleagueDisplay class

A wrapper to contain colleague accounts for display during the registration process.

---
## Constructors
### `ColleagueDisplay(Account colleagueRecord, Id pageEventId)`

Constructs a ColleagueDisplay wrapper based on an account record.
#### Parameters
|Param|Description|
|-----|-----------|
|`colleagueRecord` |  An account record. |

---
## Properties

### `NameOverride` → `String`

Allows custom text to be displayed in place of the account name.

### `Selected` → `Boolean`

Whether or not this colleague account has been selected by the user in terms of the GUI.

---
## Methods
### `getId()` → `String`

Retrieves the unique identifier of this colleague account.

#### Return

**Type**

String

**Description**

String The Id as a String.

### `getIsRegistered()` → `Boolean`

Determines whether or not the colleague account wrapped by this object has been registered for any events.

#### Return

**Type**

Boolean

**Description**

True if account has a registration, otherwise false.

### `getName()` → `String`

Retrieves the name of this colleague account.

#### Return

**Type**

String

**Description**

The name as a string or the specified override value.

---
