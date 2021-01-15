# OrderController class

Manages the Nimble AMS Order Process. Global so that custom order pages can be implemented and controlled by this class.

---
## Constructors
### `OrderController(ApexPages.StandardController controller)`

Constructor that takes in a StandardController. Loads information based on the Order Id, Order Item Id, or Cart Item Id passed in through the page parameters.
#### Parameters
|Param|Description|
|-----|-----------|
|`cartId` |  The Cart Id to gather the Cart Items by. |
|`controller` |  The standard controller passed in by the page. |
|`p` |  The parameters passed in by the page. |
|`controller` |  The standard controller passed in by the page. |

---
## Methods
### `redirectInvalidCart()` → `PageReference`

Redirects if the cart cannot be loaded.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderItemId` |  The Order Item Id to request Cart Item Lines for. |

#### Return

**Type**

PageReference

**Description**

A PageReference to Home if the cart is invalid, otherwise null.

---
