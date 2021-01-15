# Action class

Represents potential actions for a specific user to take re: registering for a specific event.

---
## Constructors
### `Action()`

A default Action constructor.
---
## Properties

### `Reason` → `String`

The reason why the action can be taken

---
## Methods
### `execute()` → `Result`

Represents executing an action. Default behavior is to return a successful Action.Result with a null Page Reference.

#### Return

**Type**

Result

**Description**

An Action.Result instance.

### `getName()` → `String`

The name of the action.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | d |
|`` | d |
|`` | d |

#### Return

**Type**

String

**Description**

A new Action instance.

---
## Inner Classes

### Action.Result class

Represents the result of executing an action.

---
#### Constructors
##### `Result()`

Creates an Action.Result instance initialized with a successful znu.OperationResult.
---
#### Properties

##### `Data` → `Object>`

A simple key / value store to use for storing / retrieving additional data in a result.

##### `OpResult` → `OperationResult`

Contains whether or not an Action was successful and any related success or error messages.

##### `PageRef` → `global`

The PageReference that the action determined to navigate to. By default, this is null.

---
