# JoinRenewButton class

A join or renew button to display to an end user. Overrides default button behavior to: a) Return different labels to member, non-member, and users with invoices. b) Take users to the join / renew page, or to an outstanding invoice depending on the circumstances. There are also a number of factors which determine if this button is rendered at all. See getShouldRender for more information.

---
## Constructors
### `JoinRenewButton(Button.Request buttonRequest)`

Creates an instance of JoinRenewButton for the given Button Request.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `execute()` → `Action.Result`

Calls the execute action on GetCartFromOrderAction if the user has an outstanding invoice, otherwise calls the execute action on JoinRenewAction.

#### Return

**Type**

Action.Result

**Description**

The Action.Result returned from the action executing.

### `getCanExecuteAction()` → `Boolean`

Overrides getCanExecuteAction so it is always true.

#### Return

**Type**

Boolean

**Description**

Always true.

### `getLabel()` → `String`

Gets the name of the appropriate label for the current situation. TO BE CLEAR: This is the hard-coded name of the label, NOT the contents of the label.

#### Return

**Type**

String

**Description**

The Pay Balance label if the current account has an outstanding invoice,

### `getShouldRender()` → `Boolean`

Returns true if the JoinRenew button should be rendered.

#### Return

**Type**

Boolean

**Description**

True if the we should render a join button, or a renew button. Else false.

### `shouldDisplayJoinButton()` → `Boolean`

Determines if the join button should show for the current user.

#### Return

**Type**

Boolean

**Description**

True if the user is not a member and eligible membership types are available. Else false.

### `shouldDisplayRenewButton()` → `Boolean`

Determines if the renew button should show for the current user.

#### Return

**Type**

Boolean

**Description**

True if they can renew and they have an individual membership, or are the company manager. Else false.

---
## Inner Classes

### JoinRenewButton.Constructor class

Constructs a JoinRenewButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `JoinRenewButton`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

JoinRenewButton

**Description**

Button which has been constructed.

---
### JoinRenewButton.JoinRenewAction class

Represents the action of loading the join / renew page.

---
#### Methods
##### `execute()` → `Action.Result`

Executes the JoinRenewAction action.

###### Return

**Type**

Action.Result

**Description**

An Action.Result instance.

##### `getName()` → `String`

The name of the JoinRenewAction action.

###### Return

**Type**

String

**Description**

The name as a string.

---
