# IDynamicPageController interface

Interface to handle dynamic page controllers.

---
## Methods
### `allowAccess()` → `Boolean`

Identifies if the user has access to the dynamic page.

#### Return

**Type**

Boolean

**Description**

Boolean value that determines if the user has access to the page.

### `getFallbackPage()` → `PageReference`

Page where users will be redirected to if, for some reason, the dynamic page can't display correctly.

#### Return

**Type**

PageReference

**Description**

PageReference the user shall be redirected to.

### `getNoAccessPage()` → `PageReference`

If the allowAccess() method returns false, this is the page the user shall be redirected to.

#### Return

**Type**

PageReference

**Description**

PageReference the user shall be redirected to.

### `getShouldRenderCards()` → `Boolean`

Determines if cards should be rendered on this page.

#### Return

**Type**

Boolean

**Description**

Boolean that determines if cards should be rendered on this page.

### `onLoad()` → `PageReference`

Gets executed when the dynamic page loads.

#### Return

**Type**

PageReference

**Description**

PageReference the user shall be redirected to, if null the user stays in the page.

---
