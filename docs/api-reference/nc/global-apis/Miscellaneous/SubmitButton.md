# SubmitButton class

This class is a sub-class of the button class that uses the Messaging Service to publish a submit message that will cause all subscribers to the submit message to execute validation and submit logic.

---
## Constructors
### `SubmitButton(Button.Request buttonRequest)`

Constructs a SubmitButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

---
## Methods
### `execute()` → `Action.Result`

Executes an Action. If getCanExecuteAction() is false or the action variable is null, a configuration exception is thrown. If the submission and validation are successful, a cookie is added to the returned page with the configured success label. If there is no success label configured, a 'Got it, thanks.' cookie is added to the page.

#### Return

**Type**

Action.Result

**Description**

The Action.Result returned from the action executing.

### `getCanExecuteAction()` → `Boolean`

Returns true to indicate that this button executes an action.

#### Return

**Type**

Boolean

**Description**

True because this button can execute an action.

### `submit()` → `OperationResult`

Publishes the submit message to all current subscribers. This method will catch any exceptions that are thrown and return a failed operation result in those scenarios. This method can be overridden.

#### Return

**Type**

OperationResult

**Description**

An operation result that indicates the success or failure of the operation.

### `submit(UnitOfWork submitWork)` → `OperationResult`

Publishes the submit message to all current subscribers. This method will catch any exceptions that are thrown and return a failed operation result in those scenarios. This method can be overridden.

#### Parameters
|Param|Description|
|-----|-----------|
|`submitWork` |  An optional UnitOfWork to pass through with instances pre-registered as needed. |

#### Return

**Type**

OperationResult

**Description**

An operation result that indicates the success or failure of the operation.

### `validate()` → `OperationResult`

Invokes the validate event on all subscribers and adds any error messages to an operation result that will be used to display errors on the page. This method can be overridden.

#### Return

**Type**

OperationResult

**Description**

An operation result that indicates the success or failure of the validate operation.

---
