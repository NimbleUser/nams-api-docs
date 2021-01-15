# EventHandlerService class

Service class for handling events in the application.

---
## Properties

### `Instance` → `EventHandlerService`

Gets the instance of EventHandlerService. @return The Instance of EventHandlerService.

---
## Methods
### `handleCallable(EventHandlerRequest request)` → `EventHandlerResponse`

Performs calls into implementations of Callable configured in the request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The EventHandlerRequest that holds the event name and any additional data for the |

#### Return

**Type**

EventHandlerResponse

**Description**

EventHandlerResponse from the executed implementation of Callable,

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

### `handleEvent(EventHandlerRequest request)` → `EventHandlerResponse`

Queries for configured Event Handlers for the specified event name. If none are found, the FallbackHandler in the request will be called. If there is no FallbackHandler, an empty response with a status of NO_HANDLER is returned. Event Handlers will be executed in order of their configured Execution Order.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The EventHandlerRequest that holds the event name and any additional data for the |

#### Return

**Type**

EventHandlerResponse

**Description**

EventHandlerResponse from the executed implementation of IEventHandler,

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
