# SubmitOrderButton class

Handles the submission process for already existing orders to apply payment (such as express payments).

---
## Constructors
### `SubmitOrderButton(Button.Request buttonRequest)`

Constructs an instance of SubmitOrderButton with the specified Button.Request instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  The Button.Request instance to use for this button. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
## Methods
### `execute()` → `Action.Result`

Authorized payment, submits the adjusted order.

#### Return

**Type**

Action.Result

**Description**

An Action.Result indicating the status and result of the submission.

### `handleOptionalDonationChangedMessage(Message message)` → `void`

Handles the OptionalDonationChangedMessage received by this button, adjusting the znu.Order wrapper in the data source as needed.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle. |
|`message` |  The instance of message being handled. This execution is skipped if message is null, or is not |

---
