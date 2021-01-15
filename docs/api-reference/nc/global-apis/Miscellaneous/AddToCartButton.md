# AddToCartButton class

Controls the Add To Cart button.

---
## Properties

### `Record` → `znu__Product__c`

The merchandise product on the page.

---
## Methods
### `execute()` → `Action.Result`

Submits the page this button is on.

#### Return

**Type**

Action.Result

**Description**

An Action.Result with the result of the operation.

### `getCanExecuteAction()` → `Boolean`

Determines if this button can execute an action.

#### Return

**Type**

Boolean

**Description**

Always true.

### `getIsEnabled()` → `Boolean`

Determines if this button should be enabled or not. True if there is inventory available for the product, false otherwise.

#### Return

**Type**

Boolean

**Description**

True if this button is enabled, false if not.

### `getIsInventoryAvailable()` → `Boolean`
---
