## RefundResponse class

Represents a response for a single payment being refunded.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `RefundResponse(PaymentBase paymentInstance)`

Constructs a new RefundResponse.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentInstance` |  The PaymentBase being refunded. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getError()` → `String`

If the refund operation was unsuccessful, this holds the error message.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPayment()` → `PaymentBase`

Returns the Payment for which the refund operation was executed.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isSuccess()` → `Boolean`

Whether the refund operation was successful or not.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setError(String errorMessage)` → `RefundResponse`

Sets an error on this response and marks it as not successful.
##### Parameters
|Param|Description|
|-----|-----------|
|`errorMessage` |  The error message to set. |

<!-- panels:end -->
---
