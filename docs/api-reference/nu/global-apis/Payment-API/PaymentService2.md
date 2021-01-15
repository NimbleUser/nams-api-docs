# PaymentService2 class

Handles requests for payment. Version 2 created to enforce entity payment method selection from the provided cart's entity.

---
## Properties

### `Instance` → `PaymentService2`

Maintains an instance of PaymentService2.

---
## Methods
### `apply(List<PaymentApplierRequest> requests)` → `List<PaymentApplierResponse>`

Applies payment to the requested orders from the requested payment.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The request containing orders, payment to apply. |

#### Return

**Type**

List<PaymentApplierResponse>

**Description**

A list of PaymentApplierResponse containing the inserted payment line Ids.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if requests is null. |

### `process(PaymentServiceRequest request)` → `OperationResult`

Processes a single payment request. Uses request's cart entity to determine the entity payment method.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A payment request. |

#### Return

**Type**

OperationResult

**Description**

The result of the operation.

---
