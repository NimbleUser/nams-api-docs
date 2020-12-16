# CartDisplayComponentController class

Controls CartDisplay.component

---
## Properties

### `GrandTotal` → `Decimal`

Grand total of all products in cart.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getProductsInCart()` → `List<znu.BundleComponent>`

List of optional products to display in the component.

### `getShouldRenderComponent()` → `Boolean`

Determines the visibility of this component.

#### Parameters
|Param|Description|
|-----|-----------|
|`True` |  if should be visible, false otherwise. |

### `initialize()` → `void`

Called after the card is set to subscribe to events.

---
