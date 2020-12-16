# PaymentApplierResponse class

Creates responses intended to be returned from implementations of IPaymentApplier.

---
## Constructors
### `PaymentApplierResponse(PaymentApplierRequest request, List<Id> paymentLineIdsForResponse,StatusOptions applicationStatus)`

Constructs a successful PaymentApplierResponse with the specified PaymentLine__c record Ids and appliation status.
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The original request that spawned this response. |
|`paymentLineIdsForResponse` |  The list of PaymentLine__c record Ids for the response. |
|`applicationStatus` |  A StatusOptions  choice indicating the success, or partial success of application. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

### `PaymentApplierResponse(PaymentApplierRequest request, OperationResult failedResult)`

Constructs a PaymentApplierResponse with the specified OperationResult intended to indicate failure.
#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The original request that spawned this response. |
|`failedResult` |  The failed result indicating why payment failed to be applied. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if failedResult is null. |

---
## Enums
### StatusOptions


Represents possible outcomes of attempting to apply payment.

---
## Properties

### `PaymentLineIds` → `List<Id>`

The PaymentLine__c record Ids for the applied payments.

### `Request` → `PaymentApplier`

The original request that spawned this response.

### `Result` → `Operation`

An OperationResult indicating the success or failure of an attempt to apply payment.

### `Status` → `global`

The Status of payment application.

---
