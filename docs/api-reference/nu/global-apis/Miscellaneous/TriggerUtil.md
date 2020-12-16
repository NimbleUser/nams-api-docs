# TriggerUtil class

A utility class for trigger handlers

---
## Methods
### `AddErrorMessagesFromResult(OperationResult result, List<sObject> sObjects)` → `void`

Adds the error messages from an OperationResult to sObjects.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The result to add error messages from. |
|`sObjects` |  The sObjects to add the errors to. |

### `isTriggerInDisabledTriggerList(String triggerName)` → `Boolean`

Checks if a trigger is in the disabled triggers list.

#### Parameters
|Param|Description|
|-----|-----------|
|`triggerName` |  The name of the trigger to check. |

#### Return

**Type**

Boolean

**Description**

Whether the trigger is in the disabled triggers list.

---
