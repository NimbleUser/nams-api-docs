# CouponCodeComponentController class

Controls CouponCode.component.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the ItemLineUpdatedMessage: We should nullify the cached shouldRender, forcing us to requery.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Initialization handling.

---
