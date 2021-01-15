# ValidateCallback class

Implementation of ICallback that sets IsValid to false whenever the callback result is not successful.

---
## Constructors
### `ValidateCallback()`

Constructs a ValidateCallback that defaults to being valid.
---
## Properties

### `ErrorMessages` → `List<String>`

List of messages that are captured from invokers who specify an error message on the callback.

### `IsValid` → `Boolean`

Whether or not the validation is successful. The property is modified by callers that return an unsuccessful result during the validation event.

---
## Methods
### `invoke(Object callbackResult)` → `void`

Invoked by callers where they may declare that the validation has failed and provide an an error message. This method can be overridden.

#### Parameters
|Param|Description|
|-----|-----------|
|`callbackResult` |  An instance of Result that tracks whether validation is successful and is used |

---
