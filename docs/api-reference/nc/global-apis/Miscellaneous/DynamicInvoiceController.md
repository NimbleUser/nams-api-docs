# DynamicInvoiceController class

Dynamic controller for the Dynamic Invoice page.

---
## Constructors
### `DynamicInvoiceController(CardData cardDataParam)`

Constructs a DynamicInvoiceController instance, putting relevant data into the card data dictionary.
---
## Methods
### `allowAccess()` → `Boolean`

Identifies if the user has access to the page.

#### Return

**Type**

Boolean

**Description**

Boolean Returns true if the user is logged in, false otherwise.

### `getFallbackPage()` → `PageReference`

The fallback page in case the user should not be in this page.

#### Return

**Type**

PageReference

**Description**

The My Orders page.

### `getNoAccessPage()` → `PageReference`

If the allowAccess() method returns false, the user will be redirected to this page.

#### Return

**Type**

PageReference

**Description**

PageReference to the Login page.

### `getShouldRenderCards()` → `Boolean`

Whether or not the cards on this page should render.

#### Return

**Type**

Boolean

**Description**

Always true.

### `onLoad()` → `PageReference`

Gets executed when the page loads. Make sure that an Order Id is set through the query params and that the order has an adjustment cart.

#### Return

**Type**

PageReference

**Description**

PageReference to redirect to. If the conditions listed in the description are not met the fallback page

### `shouldFallBack()` → `Boolean`

Determines if the user should be redirected to the getFallbackPage().

#### Return

**Type**

Boolean

**Description**

True if the Order Id is not set through the query params or the order

---
