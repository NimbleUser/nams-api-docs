# CookieMessageComponentController class

An extension of the PlainTextComponentController to support displaying description messages stored in encrypted cookies.

---
## Methods
### `getDetail()` → `String`

Gets the detail message for the card which was retrieved at the time of initialization.

#### Return

**Type**

String

**Description**

String to use for the detail.

### `getShouldRender()` → `Boolean`

Determines if this card should render.

#### Return

**Type**

Boolean

**Description**

True if a message was retrieved from a cookie and has a value. Otherwise, false.

### `getUseDescriptionLabel()` → `Boolean`

Determines that this card should never use the label, and should instead use getDetail().

#### Return

**Type**

Boolean

**Description**

Always false in this class.

---
