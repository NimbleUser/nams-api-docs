# DynamicPageController class

The controller for a dynamic page.

---
## Constructors
### `DynamicPageController()`

Constructs a DynamicPageController and instantiates the page controller if set.
---
## Methods
### `getCurrentPageUrl()` → `String`

The url of the page to use using the page specified with the page query parameter.

#### Return

**Type**

String

**Description**

String The url of the page to use using the page specified with the page query parameter.

### `getPageData()` → `VisualforcePage`

The page data for the desired page.

#### Return

**Type**

VisualforcePage

**Description**

The domain class for accessing information about the page setting.

### `getShouldRenderCards()` → `Boolean`

Determines if cards should be rendered on this page.

#### Return

**Type**

Boolean

**Description**

Boolean tha determines if cards should be rendered on this page.

### `onLoad()` → `PageReference`

Called when the page loads. If a controller is set for the dynamic page the allowAccess is executed to identify if the user has access to the page, if so, the controller's onLoad method is called.

#### Return

**Type**

PageReference

**Description**

PageReference for the page the user shall be redirected to. If null, the user will

---
