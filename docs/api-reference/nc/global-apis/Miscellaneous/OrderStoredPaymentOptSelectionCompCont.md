# OrderStoredPaymentOptSelectionCompCont class

Controls the OptionSelection card in a standalone checkout page.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Reacts to the AuthorizePaymentMessage and the PaymentOptionSelectedMessage.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The received message. |

### `initialize()` → `void`

Subscribes this controller to the PaymentOptionSelectedMessage and the AuthorizePaymentMessage.

### `validate()` → `OperationResult`

Validates that a payment method has been selected.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
