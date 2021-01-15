# IDynamicPageController2 interface

Interface to handle dynamic page controllers. Builds on the v1 concept by adding the requirement to define the heading, description text to render as well as when to render them.

---
## Methods
### `getDescriptionText()` → `String`

Gets the heading text to display on this page.

#### Return

**Type**

String

**Description**

The String heading text to be displayed on the page.

### `getHeadingText()` → `String`

Gets the heading text to display on this page.

#### Return

**Type**

String

**Description**

The String heading text to be displayed on the page.

### `getShouldRenderDescription()` → `Boolean`

Determines if the description should be rendered.

#### Return

**Type**

Boolean

**Description**

Boolean that determines if the description should be rendered on this page.

### `getShouldRenderHeading()` → `Boolean`

Determines if the heading should be rendered.

#### Return

**Type**

Boolean

**Description**

Boolean that determines if the heading should be rendered on this page.

---
