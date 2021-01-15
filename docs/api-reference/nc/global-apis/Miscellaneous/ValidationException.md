# ValidationException class

Thrown when validation did not succeed.

---
## Constructors
### `ValidationException(String message, Boolean displayMessageToUser)`

Constructs a ValidationException with the given message and a flag for whether or not to display the message to the end user.
#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to be added to the exception. |
|`displayMessageToUser` |  Indicates if getUserMessage() should display the inner exception message or |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the displayMessageToUser argument is null. |

---
## Properties

### `DisplayToUser` → `Boolean`

Flag for whether or not to show the message to the end user.

---
## Methods
### `getUserMessage()` → `String`

Gets the message to display to the user. If the message is enabled to display, return that, otherwise return the default.

#### Return

**Type**

String

**Description**

String message to display to the end user.

---
