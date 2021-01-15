# ProductComponentController class

Controls Product.component.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages that this component is subscribed to.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message instance to respond to. |

### `initialize()` → `void`

Subscribes to events after the card is set. If the Advanced Store is enabled, adds the FieldSet to the QueryService.

#### Return

**Type**

void

**Description**

Boolean specifying if there are products on inventory

### `submit(UnitOfWork unitOfWork)` → `void`

Saves the product to the user's cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The unit of work instance used to save cart items. |

---
