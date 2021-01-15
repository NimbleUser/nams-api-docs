# ManageExtPmtCardProfileCompController class

Controls the Manage External Profile Card.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles the ManagePaymentMethodMessage Message. When handling ManagePaymentMethodMessage, the properties of the ManagePaymentMethodRequest passed in as a parameter get populated.

### `initialize()` → `void`

Subscribes to the ManagePaymentMethodMessage Message.

### `submit(UnitOfWork unitOfWork)` → `void`

Unimplemented submit method to prevent any kind of payment submission to occur.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  Not used. |

### `validate()` → `OperationResult`

Validates that the Payment fields were populated correctly.

---
