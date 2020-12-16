# HostedCheckoutUrlGeneratorResponse class

The wrapper class containing the response from the hosted checkout generate url request.

---
## Constructors
### `HostedCheckoutUrlGeneratorResponse(String hostedCheckoutUrl)`

Constructs a successful HostedCheckoutUrlGeneratorResponse with a hosted checkout URL.
#### Parameters
|Param|Description|
|-----|-----------|
|`hostedCheckoutUrl` |  The hosted checkout URL. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if hostedCheckoutUrl is null or empty. |

### `HostedCheckoutUrlGeneratorResponse(OperationResult failureResult)`

Constructs a failed HostedCheckoutUrlGeneratorResponse.
#### Parameters
|Param|Description|
|-----|-----------|
|`failureResult` |  Failed OperationResult. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failureResult is null or ArgumentException if successful operation result. |

---
## Properties

### `HostedCheckoutURL` → `String`

The hosted checkout URL.

### `Result` → `Operation`

The result of the operation.

---
