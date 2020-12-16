# CartItemHandlerRequest class

Request class for an ICartItemHandler implementation.

---
## Constructors
### `CartItemHandlerRequest(List<znu__CartItem__c> cartItems)`

Constructs a CartItemHandlerRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`cartItems` |  List of cart items for this request. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if cartItems is null. |

---
## Properties

### `CartItems` → `List<znu__CartItem__c>`

List of Cart Items on the request.

---
