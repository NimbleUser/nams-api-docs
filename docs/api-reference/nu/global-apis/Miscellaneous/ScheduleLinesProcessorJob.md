# ScheduleLinesProcessorJob class

Executed nightly to process ScheduleLine objects with today's date.

---
## Constructors
### `ScheduleLinesProcessorJob(Date scheduledDate)`

Returns a new instance of a ScheduleLinesProcessorJob with the date overridden as specified.
#### Parameters
|Param|Description|
|-----|-----------|
|`scheduleDate` |  The date to retrieve records for processing. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if scheduledDate is null. |

---
