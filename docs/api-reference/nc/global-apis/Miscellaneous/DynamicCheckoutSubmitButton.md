# DynamicCheckoutSubmitButton class

Button used for submitting the Dynamic Checkout page.

---
## Constructors
### `DynamicCheckoutSubmitButton(Button.Request buttonRequest)`

Constructs a DynamicCheckoutSubmitButton.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

---
## Methods
### `execute()` → `Action.Result`

Submits the cart and sets the page reference on the Action.Result for where the user should be redirected to.

#### Return

**Type**

Action.Result

**Description**

Action.Result with the page reference to redirect to.

### `getCanExecuteAction()` → `Boolean`

Returns true to indicate that this button executes an action.

#### Return

**Type**

Boolean

**Description**

True because this button should execute an action.

### `getCartId()` → `Id`

Gets the cart Id for the znu__Cart__c being submitted.

#### Return

**Type**

Id

**Description**

Id of the cart Id being submitted.

### `getCartItemService()` → `CartItemService`

Gets the CartItemService implementation to use.

#### Return

**Type**

CartItemService

**Description**

CartItemService.Instance by default.

### `getIsEnabled()` → `Boolean`

Determines if the button should be enabled to the user.

#### Return

**Type**

Boolean

**Description**

False if there are any invalid cart item lines. True otherwise.

### `getShouldRender()` → `Boolean`

Determines if the button should be rendered.

#### Return

**Type**

Boolean

**Description**

True if the cart has items and either has a zero dollar or positive balance or it has a refundable item

### `handleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `initialize()` → `void`

Subscribes to PaymentOptionSelectedMessage to listen for messages.

### `submit()` → `PageReference`

Publishes the submit message to all current subscribers. This method will catch any exceptions that are thrown and return a failed operation result in those scenarios. This method can be overridden.

#### Return

**Type**

PageReference

**Description**

PageReference that specifies where the user should be redirected to.

---
