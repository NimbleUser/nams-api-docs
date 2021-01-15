# DeleteSObjectButton class

A button for deleting objects.

---
## Constructors
### `DeleteSObjectButton(Button.Request buttonRequest)`

Constructs a DeleteSObjectButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

---
## Methods
### `execute()` → `Action.Result`

Executes the associated action.

#### Return

**Type**

Action.Result

**Description**

The result of the action.

### `getCanExecuteAction()` → `Boolean`

Whether or not this button wrapper can execute its associated action.

#### Return

**Type**

Boolean

**Description**

True. It can.

### `getConfirmationMessage()` → `String`

Falls back on the default Button behavior. Override to change.

#### Return

**Type**

String

**Description**

The default confirmation message to display before executing.

### `getIsEnabled()` → `Boolean`

Falls back on the default Button behavior. Override to change.

#### Return

**Type**

Boolean

**Description**

Whether or not this button is enabled.

### `getLabel()` → `String`

Falls back on the default Button behavior. Override to change.

#### Return

**Type**

String

**Description**

This button's label.

### `getNeedsConfirmation()` → `Boolean`

Whether or not this button needs confirmation once clicked.

#### Return

**Type**

Boolean

**Description**

True. A confirmation box will appear.

### `getRecordId()` → `Id`

Falls back on the default Button behavior. Override to change.

#### Return

**Type**

Id

**Description**

The Id of the record this button references.

### `getShouldRender()` → `Boolean`

Determines whether or not this button will be rendered. Defaults to true, override in subclass. Rendered buttons always show to an end user. If false, will not show to the end user.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

### `getUrl()` → `String`

Falls back on the default Button behavior. Override to change.

#### Return

**Type**

String

**Description**

A string that represents the url this button navigates to after being clicked.

### `setRecordId(Id recordId)` → `void`

Falls back on the default Button behavior. Override to change.

---
