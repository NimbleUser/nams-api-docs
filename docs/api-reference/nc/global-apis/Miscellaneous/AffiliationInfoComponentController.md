# AffiliationInfoComponentController class

A controller for the Affiliation Info card.

---
## Methods
### `doHandleMessage(Message message)` → `void`

Not implemented.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. Not used. |

### `initialize()` → `void`

Overrides initialize and calls the Super's initialize method.

### `submit(UnitOfWork submitWork)` → `void`

Overrides submit to not do anything, since we can't submit the affiliation until the account has been inserted.

#### Parameters
|Param|Description|
|-----|-----------|
|`submitWork` |  The unit of work that would normally need things to be submitted registered to it. |

---
