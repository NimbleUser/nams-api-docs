# EditOrderButton class

A button which allows a user to adjust an existing order. Currently only supports registration editing.

---
## Constructors
### `EditOrderButton(Button.request buttonRequest)`

Creates the button using the constructor for the Button object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

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

Always returns true. This button is designed to execute an action rather than simply navigate to a URL.

### `getShouldRender()` → `Boolean`

Whether or not this button should render on the page.

#### Return

**Type**

Boolean

**Description**

False if execution would return the checkout page, true otherwise.

---
