# TriggerHandlerManager class

A class for managing trigger handlers that can be disabled

---
## Methods
### `disableTriggerForThisRequest(String disabledTriggerName)` → `void`

Disables a trigger for this request (execution context) only. 		If another request is executing, the trigger will still execute in there.

#### Parameters
|Param|Description|
|-----|-----------|
|`disabledTriggerName` |  The name of the trigger to disable |

### `executeHandlers(String triggerName, TriggerHandlersBase triggerHandler)` → `void`

Executes handlers for a trigger if its name 		is not in the disabled trigger list

#### Parameters
|Param|Description|
|-----|-----------|
|`triggerName` |  The name of the trigger |
|`triggerHandler` |  The trigger handlers to execute |

#### Return

**Type**

void

**Description**

Whether the triggers are disabled.

### `reenableTriggerForThisRequest(String disabledTriggerName)` → `void`

Re-enables a disabled trigger for this request (execution context) only. 		If another request is executing and the trigger is disabled, it will 		not execute in there.

#### Parameters
|Param|Description|
|-----|-----------|
|`disabledTriggerName` |  The name of the disabled trigger to re-enable for this |

---
