# BatchApexUtil class

Utility methods for batch apex

---
## Methods
### `sendNotificationForFailures(Database.BatchableContext context)` → `void`

Sends an email alert if a batch apex job finishes with errors

#### Parameters
|Param|Description|
|-----|-----------|
|`The` |  current batch apex context |

### `sendNotificationForFailures(Database.BatchableContext context, List<OperationResult> operationResults)` → `void`

Sends an email alert if a batch apex job finishes with errors

#### Parameters
|Param|Description|
|-----|-----------|
|`The` |  current batch apex context |
|`An` |  optional list of operationResults from essential operations. |

---
