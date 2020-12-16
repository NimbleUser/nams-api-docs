# SchedulePaymentComponentController class

Controls the ScheduledPayment.component, providing a message if the current user has no stored payment methods.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the ScheduleAndSubmitMessage we validate the message type to see if we should render the card.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `getCardConfiguration()` → `String`

Gets the card's JSON configuration, merging in the current cart Id into the '{!recordId}' field.

#### Return

**Type**

String

**Description**

The String JSON configuration with cart record Id merged in.

### `getDetail()` → `String`

Gets the description for the card.

#### Return

**Type**

String

**Description**

String value of the ToEditAddorRemovePaymentMethodsScheduled label, merged with the URL of the my

### `getShouldRender()` → `Boolean`

Determines if the card should render or not. The card should render if the Configure Scheduled Payment button was selected by the user and they have stored payment methods.

### `getShouldRenderLightningComponent()` → `Boolean`

Determines if the lightning component within the card should render. Renders when savePayment toggle is enabled otherwise when the user has stored payment methods available.

### `initialize()` → `void`

Initialization handling. Subscribes the card to the PaymentOptionSelectedMessage.

### `validate()` → `OperationResult`

Validates that a payment is available, and if one is, that payment was scheduled.

#### Return

**Type**

OperationResult

**Description**

The result of the validation.

---
