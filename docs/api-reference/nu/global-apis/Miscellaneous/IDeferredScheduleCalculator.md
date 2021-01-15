# IDeferredScheduleCalculator interface

Implement this interface to calculate the start date of a deferred schedule & number of times a deferred schedule will be recognized.

---
## Methods
### `calculateDeferredSchedules(List<DeferredScheduleCalculatorRequest> requests)` → `List<DeferredScheduleCalculatorResponse>`

Calculates the start date and remaining recognition count for each request passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<DeferredScheduleCalculatorRequest>` |  the list of requests to be calculated |

#### Return

**Type**

List<DeferredScheduleCalculatorResponse>

**Description**

s a List of DeferredScheduleCalculatorResponse objects

---
