# OrderProcessorMonitor class

Sends an email to ndev@nimbleams.com if any self service orders have 		remained in the queue for longer than a day. This schedulable Batch Apex 		class finds potential problems in the Self Service Order Process.

---
## Methods
### `execute(SchedulableContext context)` → `void`

Runs via the Apex scheduler to start the Batch Apex execution.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |

### `schedule()` → `void`

Schedules the class to run every night at 1:00 AM. 		Based on the TimeZone of the current User logged in.

---
