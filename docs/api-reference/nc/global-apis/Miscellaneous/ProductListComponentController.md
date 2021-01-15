# ProductListComponentController class

Controls ProductList.component

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Subscribes to events after the card is set.

### `validate()` → `OperationResult`

Checks to make sure that a session has been selected for all groups that require at least one session to be selected. Also enforces quantity selection.

#### Parameters
|Param|Description|
|-----|-----------|
|`True` |  if should be visible, false otherwise. |

#### Return

**Type**

OperationResult

**Description**

A list of component group displays.

---
