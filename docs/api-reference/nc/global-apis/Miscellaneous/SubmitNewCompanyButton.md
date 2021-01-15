# SubmitNewCompanyButton class

The button used for submitting new companies in the affiliation new company process. Utilized to automatically make the account doing the creating a company manager, and set it as their primary affiliation.

---
## Constructors
### `SubmitNewCompanyButton(Button.Request buttonRequest)`

Constructs a SubmitNewCompanyButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

---
## Methods
### `createAndRegisterAffiliation(AccountCreatedMessage message)` → `void`

Creates an affiliation record based upon the account in the message param, and the affiliation returned from the data source, setting it as a primary affiliation, and the account a company manager.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the company account being inserted. |

### `handleMessage(Message message)` → `void`

Handles messages sent by other components. Inserts an affiliation based on the current field values and the account provided by a received AccountCreatedMessage.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `submit()` → `OperationResult`

Publishes the submit message to all current subscribers. This method will catch any exceptions that are thrown and return a failed operation result in those scenarios. This method can be overridden.

#### Return

**Type**

OperationResult

**Description**

An operation result that indicates the success or failure of the operation.

---
