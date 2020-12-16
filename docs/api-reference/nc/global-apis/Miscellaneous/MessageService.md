# MessageService class

Manages Messaging notifications and subscriptions.

---
## Methods
### `notify(Message message)` → `void`

Notify the subscribers of a given event.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message containing details on the event that occurred. |

### `subscribe(Type eventType, IMessageHandler handler)` → `void`

Subscribes to the given event.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name of the event to subscribe to. |
|`handler` |  The handler that will be invoked when the event occurs. |
|`eventType` |  The type of event to subscribe to. |
|`handler` |  The handler that will be invoked when the event occurs. |

---
