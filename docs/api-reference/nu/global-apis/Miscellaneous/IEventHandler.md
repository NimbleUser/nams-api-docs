# IEventHandler interface

Interface implemented by all classes used for handling events.

---
## Methods
### `handleEvent(EventHandlerRequest request)` → `EventHandlerResponse`

Handles an event in the application.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An EventHandlerRequest that holds the name of the event and any additional data. |

#### Return

**Type**

EventHandlerResponse

**Description**

EventHandlerResponse with any returned data from the implementation.

---
