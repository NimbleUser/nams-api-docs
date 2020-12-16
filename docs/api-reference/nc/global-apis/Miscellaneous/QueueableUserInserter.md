# QueueableUserInserter class

Used for inserting users asynchronous via Queueable. Circumvents the synchronous limitations of Mixed DML following account insertion and Site.createExternalUser failing if already logged in.

---
## Constructors
### `QueueableUserInserter(Set<Id> accountIds)`

Constructs an instance of QueueableUserInserter.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountIds` |  The Set of account Ids to create users for. |

---
