# CartItemService class

Manages Cart Item records.

---
## Methods
### `getHandlers()` → `List<ICartItemHandler>`

Returns a list of ICartItemHandler used by the handleCartItems() method.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventId` |  The event this registration is for. |
|`attendeeId` |  the account Id for the attendee of this event. |
|`entityId` |  The entityId for the event. |
|`cartId` |  The cart Id to remove item(s) from. |
|`accountId` |  The Id of the account to check matching memberships for. |
|`membershipTypeId` |  The Id of the membership type you want to remove matches for. |

#### Return

**Type**

List<ICartItemHandler>

**Description**

List of ICartItemHandler with the following handlers:

### `getRegistrationItemLinesWithDepletedInventory(List<znu__CartItem__c> cartItems)` → `List<znu__CartItemLine__c>`

Gets all registration cart item lines (in the specified list) which have depleted inventory (based upon the quantity on the item line).

#### Parameters
|Param|Description|
|-----|-----------|
|`cartItems` |  The list of cart item lines to check for depleted inventory. |

#### Return

**Type**

List<znu__CartItemLine__c>

**Description**

A List<znu__CartItemLine__c> whose referenced products no longer have available inventory.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cartItems is null. |

### `handleCartItems(CartItemHandlerRequest request)` → `List<CartItemHandlerResponse>`

Handles cart items in a cart based on the ICartItemHandler list returned by getHandlers().

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The CartItemHandlerRequest that contains the list of cart items to handle. |

#### Return

**Type**

List<CartItemHandlerResponse>

**Description**

List of CartItemHandlerResponse with a response from each ICartItemHandler.

---
