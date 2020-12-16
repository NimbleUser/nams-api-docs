# BillMeAddressComponentController class

 Controls the Bill Me Address card.

---
## Methods
### `doHandleMessage(Message message)` → `void`

When a PaymentOptionSelectedMessage is received, identifies if the card should render or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  Message implementation to handle. |

### `getDetail()` → `String`

The card details.

#### Return

**Type**

String

**Description**

If the user's account has the correct billing address, Label.BillMeAddressSummary

### `getHeading()` → `String`

The heading of the card.

#### Return

**Type**

String

**Description**

String for the heading of the card. Label.BillingAddress by default.

### `getShouldRender()` → `Boolean`

Identifies if the card should render.

#### Return

**Type**

Boolean

**Description**

True if Bill Me was selected as the payment option, false otherwise.

### `initialize()` → `void`

Subscribes to the PaymentOptionSelectedMessage and adds an alert to the card if the address is not set.

---
