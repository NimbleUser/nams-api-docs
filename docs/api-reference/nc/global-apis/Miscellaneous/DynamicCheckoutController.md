# DynamicCheckoutController class

Dynamic controller for the Dynamic Checkout Page.

---
## Constructors
### `DynamicCheckoutController(CardData cardDataInstance)`

Constructs a DynamicCheckoutController instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`cardDataInstance` |  The CardData instance that this page will use with the QueryService and MessageService. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cardDataInstance is null. |

---
## Properties

### `Messages` → `MessageService`

The MessageService instance received from the PageController through the Constructor.

### `Querier` → `QueryService`

The QueryService instance received from the PageController through the Constructor.

---
## Methods
### `allowAccess()` → `Boolean`

Identifies if the user has access to the page.

#### Return

**Type**

Boolean

**Description**

Boolean Returns true if the user is logged in, false otherwise.

### `getAllItems()` → `List<znu__CartItem__c>`

Returns a list of znu__CartItem__c records from CartAndOrderItemDataSource.

#### Return

**Type**

List<znu__CartItem__c>

**Description**

List of znu__CartItem__c records.

### `getCartItemService()` → `CartItemService`

Gets the CartItemService implementation to use.

#### Return

**Type**

CartItemService

**Description**

CartItemService.Instance by default.

### `getFallbackPage()` → `PageReference`

Not used.

#### Return

**Type**

PageReference

**Description**

Null PageReference.

### `getNoAccessPage()` → `PageReference`

If the allowAccess() method returns false, the user will be redirected to this page.

#### Return

**Type**

PageReference

**Description**

PageReference to the Login page.

### `getShouldRenderCards()` → `Boolean`

Determines if the cards on the page should be rendered or not.

#### Return

**Type**

Boolean

**Description**

Boolean True if the cart being paid has items, false otherwise.

### `handleMessage(Message message)` → `void`

Handles messages sent by other components.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to handle, containing information on the event that occurred. |

### `onLoad()` → `PageReference`

Gets excecuted when the page loads. Notifies that the page has loaded and which IOptionSelections implementation the Option Selection card in this page should use.

### `subscribeToMessages()` → `void`

Subscribes to the Messages this class should handle: ItemLineUpdatedMessage, ValidateMessage.

---
