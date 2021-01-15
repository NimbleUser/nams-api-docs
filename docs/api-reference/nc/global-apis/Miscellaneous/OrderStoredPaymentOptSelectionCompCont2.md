# OrderStoredPaymentOptSelectionCompCont2 class

Extension of OrderStoredPaymentOptSelectionCompCont to use a znu.Order based DataSource.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Reacts to the OptionalDonationChangedMessage to have an updated Order total amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The received message. |

### `initialize()` → `void`

Subscribes this controller to the OptionalDonationChangedMessage on top of the parent's subscriptions.

---
