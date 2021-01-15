# ProductFrequenciesComponentController class

Controls the ProductFrequencies card.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles messages sent by other components. On receiving the the SetAsRecurringMessage it updates the znu.RecurringItem with information regarding the frequency selected by the user.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Subscribes to the SetAsRecurringMessage message so that on order submission this can populate the received znu.RecurringItem object with any frequency that was selected by the user.

---
