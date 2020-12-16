# StoredPaymentOptSelectionCompController class

Extends the OptionSelectionComponentController2 to handle the selection and process of stored payment methods.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the ItemLineUpdatedMessage we should: 1. Clear the results for this card's datasource, forcing us to requery for getRecords(). On receiving the PaymentOptionSelectedMessage we compare the parameter with the CreditCardPaymentOption's name to see if we should render the card.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Initialization handling. Subscribes the card to the ItemLineUpdatedMessage and the PaymentOptionSelectedMessage.

### `submit(UnitOfWork unitOfWork)` → `void`

Overridden to handle processing stored payments.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  A transaction context for DML. |

### `validate()` → `OperationResult`

Validates that a payment method has been selected.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
