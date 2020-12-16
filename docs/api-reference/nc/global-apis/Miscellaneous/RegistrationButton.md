# RegistrationButton class

An event registration button. Overrides default button functionality to only be enabled if the registration action is available.

---
## Constructors
### `RegistrationButton(Button.Request buttonRequest)`

Creates an instance of RegistrationButton for the given Button Request.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `execute()` → `Action.Result`

Executes an Action. If getCanExecuteAction() is false or the action variable is null, a configuration exception is thrown. Preloads the primary cart for registration.

#### Return

**Type**

Action.Result

**Description**

The Action.Result returned from the action executing.

### `getAction()` → `Action`
### `getCanExecuteAction()` → `Boolean`

A RegistrationButton is intended to execute an action and not render as a link with a url.

#### Return

**Type**

Boolean

**Description**

True.

### `getIsEnabled()` → `Boolean`

Overrides default button functionality to only be enabled if the registration action is available, or user is logged out.

#### Return

**Type**

Boolean

**Description**

Boolean indicating whether or not the user is able to use this button.

### `getLabel()` → `String`

Returns the label to be placed on the button.

#### Return

**Type**

String

**Description**

The button label as a string.

### `preloadPrimaryCart()` → `void`
---
## Inner Classes

### RegistrationButton.Constructor class

Constructs a RegistrationButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `RegistrationButton`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

RegistrationButton

**Description**

Button which has been constructed.

---
