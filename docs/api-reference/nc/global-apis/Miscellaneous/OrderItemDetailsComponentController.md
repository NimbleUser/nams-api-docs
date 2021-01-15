# OrderItemDetailsComponentController class

Controls OrderItemDetails.component

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages that this component is subscribed to.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message instance that this component will respond to. |

### `getCurrentAccountId()` → `Id`

Gets the Id of the current account viewing this page. This could be null.

#### Return

**Type**

Id

**Description**

The Id of the current account viewing this page. This could be null.

### `initialize()` → `void`

Subscribes to events after the card is set.

#### Return

**Type**

void

**Description**

A null PageReference. We want the page to update /without/ a full refresh, after all!

### `validate()` → `OperationResult`

Returns an error if an item display is not marked as completed.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
