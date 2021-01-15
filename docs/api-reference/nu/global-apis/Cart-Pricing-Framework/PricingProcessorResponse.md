# PricingProcessorResponse class

The response returned by IPricingProcessor classes. The response will indicate the success or failure of the processing operation and contain errors.

---
## Constructors
### `PricingProcessorResponse()`

Default constructor for a successful response.
### `PricingProcessorResponse(Exception e)`

Constructor for creating a failed response from an exception.
#### Parameters
|Param|Description|
|-----|-----------|
|`e` |  The exception that is the reason for a failed operation. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the exception is null. |

---
## Properties

### `IsSuccessful` → `Boolean`

Determines if the wrapped OperationResult instance is successful. @return True if the wrapped operation result is successful, else false.

---
## Methods
### `getErrors()` → `String`

Gets the errors from the wrapped OperationResult instance.

#### Return

**Type**

String

**Description**

A String of errors retrieved from the wrapped OperationResult.

---
