# ShippingComponentController class

Collects the address of the shippable cart items, the logged account associated with the account, and displays the appropriate shipping address if any.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles events that have been subscribed to. If the message is an ItemLineUpdatedMessage, we invalidate the cache on shippableCartItems, the selected shipping method and the card datasource to force it to reload information pertinent to the control of displaying this card.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Subscribe to the page loaded message.

### `postInitialize()` → `void`

Sends the CardIsPresentMessage for this card if this card is being rendered.

### `validate()` → `OperationResult`

Validate will insure that there are shippable CartItems and that a valid ShipMethod has been selected.

---
