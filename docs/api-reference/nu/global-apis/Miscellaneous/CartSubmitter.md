# CartSubmitter class

Creates an order from a cart.

---
## Properties

### `CART_NOT_FOUND_ERR_MSG` → `String`

The error message to return if the Cart Id passed in does not return a cart when queried.

### `EMPTY_CART_ERR_MSG` → `String`

The error message to return if the Cart Id provided yielded an empty cart.

### `NO_CART_ID_ERR_MSG` → `String`

The error message to return if no Cart Id is provided.

---
## Methods
### `submit(Id cartIdToSubmit)` → `CartSubmissionResult`

Creates order and payment records from the specified cart and deletes the cart.

#### Parameters
|Param|Description|
|-----|-----------|
|`cartIdToSubmit` |  The Id of the cart to submit. |

#### Return

**Type**

CartSubmissionResult

**Description**

The result of the cart submission.

---
