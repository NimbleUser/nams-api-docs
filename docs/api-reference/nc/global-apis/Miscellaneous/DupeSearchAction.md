# DupeSearchAction class

Action to execute duplicate checking and send a RecordsMessage with the records received.

---
## Constructors
### `DupeSearchAction(MessageService messageServiceParam,IDupeService2 dupeServiceParam, DupeServiceRequest requestParam)`

Constructs a DupeSearchAction with the passed in parameters.
#### Parameters
|Param|Description|
|-----|-----------|
|`messageServiceParam` |  MessageService instance that will be used by the execute message to send messages. |
|`dupeServiceParam` |  IDupeService2 implementation that will be used to find duplicates. |
|`requestParam` |  DupeService request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
## Methods
### `execute()` → `Action.Result`

Executes the findDupes method of the passed in IDupeService2 and sends a RecordsMessage with any records found.

#### Return

**Type**

Action.Result

**Description**

An Action.Result.

### `getName()` → `String`

Returns the name of this action.

#### Return

**Type**

String

**Description**

The string "CancelAction".

---
