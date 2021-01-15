# MembershipCancelAutoRenewAction class

Represents the action of Cancelling the Auto Renewal of a Cart Item.

---
## Methods
### `execute()` → `Action.Result`

Executes the MembershipCancelAutoRenew action.

#### Return

**Type**

Action.Result

**Description**

An Action.Result instance.

### `getName()` → `String`

The name of the object Cancel Renewal action.

#### Return

**Type**

String

**Description**

The name as a string.

### `newInstance(znu__CartItem__c cartItemRecord)` → `MembershipCancelAutoRenewAction`

Returns a new MembershipCancelAutoRenewAction instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItemRecord` |  The znu__CartItem__c record for which recurring will be canceled. |

#### Return

**Type**

MembershipCancelAutoRenewAction

**Description**

New MembershipCancelAutoRenewAction instance.

---
