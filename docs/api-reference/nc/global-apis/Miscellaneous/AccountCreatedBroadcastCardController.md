# AccountCreatedBroadcastCardController class

Controls a card for creating accounts. Expects an AccountCreatedMessage once that account is inserted by the submit action. Once that is received sends along a further AccountCreatedMessage to inform any other cards of the newly-inserted account's Id.

---
## Methods
### `submit(UnitOfWork submitWork)` → `void`

Overrides submit to broadcast the AccountCreatedMessage so that the account can be registered against an affiliation.

#### Parameters
|Param|Description|
|-----|-----------|
|`submitWork` |  The unit of work associated with the submit action. |

---
