# PasscodeComponentController class

Controller for Passcode.component.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Handles RegistrationTypeSelectedMessage sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `submit(UnitOfWork unitOfWork)` → `void`

Sets the Passcode as the String typed by the users on the Cart Item for this registration.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The unit of work to save the mpasscode in. |

### `validate()` → `OperationResult`

Checks that the correct passcode was entered.

#### Return

**Type**

OperationResult

**Description**

The operation result with the outcome of the validation.

---
