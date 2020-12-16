# ExpressCartGuestSubmitButton class

Extends DynamicCheckoutSubmitButton with the ability to only render if logged out.

---
## Constructors
### `ExpressCartGuestSubmitButton(Button.Request buttonRequest)`

Constructs a ExpressCartGuestSubmitButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
## Methods
### `getShouldRender()` → `Boolean`

Determines if the button should be rendered.

#### Return

**Type**

Boolean

**Description**

True if the superclass getShouldRender returns true and the user is not logged in.

---
