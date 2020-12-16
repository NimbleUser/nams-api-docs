# ShippingCalculatorException class

An exception to be used with Shipping Calculators. This globally accessible so that it can be used by Custom Shipping Calculators.

---
## Constructors
### `ShippingCalculatorException(String message, Boolean displayMessageToUser)`

 Constructs a ShippingCalculatorException with the given message and a DisplayToUser Flag
#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to be added to the exception |
|`displayMessageToUser` |  - Indicates if getUserMessage() should display the inner exception message or a default message to the user. |

---
## Methods
### `getUserMessage()` → `String`

 Gets the message to display to the user. If the message is enabled to display, return that, otherwise return the default.

---
