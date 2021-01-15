# BillingAddressComponentController class

Controls the BillingAddress card.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles the PrepareForSubmissionMessage to in turn send an AddressMessage to notify other cards of the Billing Address introduced by the user.

### `getShouldRender()` → `Boolean`

Determines whether or not this component should render on the page.

#### Return

**Type**

Boolean

**Description**

False if the super class shouldn't render or if a payment option other than credit card is selected,

### `initialize()` → `void`

Subscribes to the CardIsPresentMessage, PrepareForSubmissionMessage and AddressMessage.

---
