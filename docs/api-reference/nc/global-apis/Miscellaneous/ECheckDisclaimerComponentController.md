# ECheckDisclaimerComponentController class

Controls the eCheck Disclaimer card.

---
## Constructors
### `ECheckDisclaimerComponentController()`

Parameterless constructor for global class.
---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles received messages. When the StoredPaymentOptionSelectedMessage is received, the card renders if an eCheck stored payment method was selected, otherwise it hides.

### `initialize()` → `void`

Initializes the component by subscribing to the StoredPaymentOptionSelectedMessage.

### `postInitialize()` → `void`

Sends out a message to subscribing cards to indicate this card is present on the page.

---
