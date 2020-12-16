# EventHandlerRequest class

Request class for classes that implement the IEventHandler interface.

---
## Constructors
### `EventHandlerRequest(String eventName)`

Constructor that takes in the name of the event to handle.
#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name of the event to handle. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the eventName argument is blank. |

### `EventHandlerRequest(String eventName, IEventHandler fallbackHandler, Object data)`

Constructor that takes in the event name, fallback handler, and data object.
#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name of the event to handle. |
|`fallbackHandler` |  An implementation of IEventHandler that will be called if it is set, |
|`data` |  Holds any data for the interface implementation to use. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the eventName argument is blank or any other argument is null. |

---
## Properties

### `ActionName` → `String`

The action name for a Callable call.

### `Data` → `Object`

Holds any data for the interface implementation to use.

### `EventName` → `String`

The name of the event to handle.

### `FallbackHandler` → `IEventHandler`

An implementation of IEventHandler that will be called if it is set, and there are no other configured handlers.

### `PreviousResponse` → `EventHandlerResponse`

When chaining Event Handlers, this holds the previous Event Handler's response.

---
## Methods
### `newInstance(String eventName, String action, Map<String, Object> params)` → `EventHandlerRequest`

Constructor that builds a request for an implementation of Callable.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name of the event an event handler MDT is configured for. |
|`action` |  The action to call on that Callable. |
|`params` |  The params to pass along toe the Callable. |
|`The` |  result of the call, or null if there is a misconfiguration. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
