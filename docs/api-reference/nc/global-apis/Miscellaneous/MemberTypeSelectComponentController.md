# MemberTypeSelectComponentController class

Controls MemberTypeSelect.component

---
## Constructors
### `MemberTypeSelectComponentController()`

Class constructor.
---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles the MEMBERSHIP_TYPE_ALREADY_SELECTED_MESSAGE sent by the JoinRenewController. When extending this class and overriding this method, implementors will be unable to assert in unit tests that the MembershipTypeId property is being set when handling the MEMBERSHIP_TYPE_ALREADY_SELECTED_MESSAGE message. The recommended approach is to call the super class implentation in any overrides before executing any custom logic.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

#### Return

**Type**

void

**Description**

A List<znu__MembershipType__c>.

### `initialize()` → `void`

Subscribe to the Membership type selected message so that on join renew page load we can update the selected MembershipTypeId.

---
