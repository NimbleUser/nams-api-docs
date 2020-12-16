# MembershipPrimProdComponentController class

Controls MembershipPrimProducts.component

---
## Methods
### `dohandleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

#### Return

**Type**

void

**Description**

True if should be visible, false otherwise.

### `initialize()` → `void`

Subscribes to events after the card is set.

### `validate()` → `OperationResult`

Checks that at least one primary product has been selected.

---
