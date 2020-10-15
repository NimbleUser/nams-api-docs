## TriggerHandlerManager class

`NamespaceAccessible`

Entry-point for trigger execution.

---
### Properties

#### `DisableAllTriggers` → `Boolean`

`NamespaceAccessible`

Whether all triggers are disabled for the current context.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `disableTriggerForThisRequest(String disabledTriggerName)` → `void`

`NamespaceAccessible`

Disables a trigger for this request (execution context) only. 		        If another request is executing, the trigger will still execute in there.

##### Parameters
|Param|Description|
|-----|-----------|
|`disabledTriggerName` |  The name of the trigger to disable |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `executeHandlers(String triggerName, Schema.SObjectType objectType)` → `void`

`NamespaceAccessible`

Executes the trigger for the passed in SObject.

##### Parameters
|Param|Description|
|-----|-----------|
|`triggerName` |  The name of the trigger handler to run. |
|`objectType` |  The SObjectType for the trigger to run. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `executeHandlers(String triggerName, Schema.SObjectType objectType, TriggeringContext context)` → `void`

`NamespaceAccessible`

Executes the trigger for the passed in SObject

##### Parameters
|Param|Description|
|-----|-----------|
|`triggerName` |  The name of the trigger handler to run. |
|`objectType` |  The SObjectType for the trigger to run. |
|`context` |  A custom [TriggeringContext](apis/Core/TriggeringContext.md) to pass to the trigger handler. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `reEnableTriggerForThisRequest(String disabledTriggerName)` → `void`

`NamespaceAccessible`

Re-enables a disabled trigger for this request (execution context) only. 		If another request is executing and the trigger is disabled, it will 		not execute in there.

##### Parameters
|Param|Description|
|-----|-----------|
|`disabledTriggerName` |  The name of the disabled trigger to re-enable for this |

<!-- panels:end -->
---
