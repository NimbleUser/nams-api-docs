# EventHandlerResponse class

Response class for classes that implement the IEventHandler interface.

---
## Constructors
### `EventHandlerResponse()`

No-arg constructor that sets a default HandlerStatus of SUCCESS.
### `EventHandlerResponse(Object data)`

Constructor taking in the Data object to set. Also sets the HandlerStatus to SUCCESS.
#### Parameters
|Param|Description|
|-----|-----------|
|`data` |  The Object to set as the Data property. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if data is null. |

### `EventHandlerResponse(Status handlerStatusParam)`

Constructor taking in a status to set.
#### Parameters
|Param|Description|
|-----|-----------|
|`handlerStatusParam` |  The Status to set. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if handlerStatusParam is null. |

### `EventHandlerResponse(OperationResult failedResult)`

A constructor for purposes of constructing an error'ed EventHandlerResponse.
#### Parameters
|Param|Description|
|-----|-----------|
|`failedResult` |  An OperationResult instance containing an error message.. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

---
## Enums
### Status


Available status' for an EventHandlerResponse.

---
## Properties

### `Data` → `Object`

Property to hold any data returned from the interface implementation.

### `HandlerStatus` → `Status`

Status for how the handling went.

### `Result` → `Operation`

Holds any operation result for use in the caller.

---
