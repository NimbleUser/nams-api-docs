# JoinRenewButton2 class

A version 2 of the JoinRenewButton which is designed to operate off an account passed in from the card it is displayed on rather than the current account. Expects that the account is provided by a card, sharing the same data source name.

---
## Constructors
### `JoinRenewButton2(Button.Request buttonRequest)`

Creates an instance of JoinRenewButton2 for the given Button Request.
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

### `shouldDisplayRenewButton()` → `Boolean`

Determines if the renew button should show for the account associated with this button.

#### Return

**Type**

Boolean

**Description**

True if they can renew and they have an individual membership. Else false.

---
## Inner Classes

### JoinRenewButton2.Constructor class

Constructs a JoinRenewButton2 instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `JoinRenewButton2`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

JoinRenewButton2

**Description**

Button which has been constructed.

---
### JoinRenewButton2.JoinRenewAction2 class

Represents the action of loading the join / renew page.

---
#### Constructors
##### `JoinRenewAction2(Account accountForMembership)`

Constructs a JoinRenewAction for the specified account.
###### Parameters
|Param|Description|
|-----|-----------|
|`accountForMembership` |  The account for the membership. |

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

The name of the JoinRenewAction2 action.

###### Return

**Type**

String

**Description**

The name as a string.

---
