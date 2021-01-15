# ExpressCartSubmitButton class

Extends DynamicCheckoutSubmitButton with the ability to only render if logged in.

---
## Constructors
### `ExpressCartSubmitButton(Button.Request buttonRequest)`

Constructs a ExpressCartSubmitButton.
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

True if the superclass getShouldRender returns true and the user is logged in.

---
