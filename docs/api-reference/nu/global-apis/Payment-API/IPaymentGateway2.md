# IPaymentGateway2 interface

Describes methods used to interact with a payment gateway.

---
## Methods
### `addPaymentProfile(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Creates a new Payment Profile in the Payment Gateway's system.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to create the new Payment Profile. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the operation.

### `authorize(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Authorizes payment for the specified request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to send to the payment gateway. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the authorization.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if req is null. |

### `authorizeAndCapture(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Authorizes and captures payment for the specified request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to send to the payment gateway. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the authorization / capture.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if req is null. |

### `capturePriorAuthorization(List<PaymentGatewayRequest> requests)` → `List<PaymentGatewayResponse>`

Captures funds for one or more payment transactions which were previously authorized only.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The list of Request instances containing information to send to the payment gateway. |

#### Return

**Type**

List<PaymentGatewayResponse>

**Description**

A list of Response instances containing the success or failure of the capture(s).

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if requests is null. |

### `deletePaymentProfile(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Deletes a Payment Profile in the Payment Gateway's system.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to delete the new Payment Profile. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the operation.

### `getPaymentProfile(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Gets a Payment Profile from Payment Gateway's system.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to retrieve the Payment Profile. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the operation.

### `getTransactionStatus(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Gets the status of an existing payment transaction in the Payment Gateway's system.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to retrieve the transaction status. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the status of the existing transaction.

### `refund(List<PaymentGatewayRequest> requests)` → `List<PaymentGatewayResponse>`

Refunds payment for the specified request(s).

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The requests containing information to send to the payment gateway. |

#### Return

**Type**

List<PaymentGatewayResponse>

**Description**

A list of PaymentGatewayResponses containing the success or failure of the refund(s).

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if requests are null. |

### `updatePaymentProfile(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Updates a Payment Profile in the Payment Gateway's system.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to update the new Payment Profile. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the operation.

### `void(PaymentGatewayRequest request)` → `PaymentGatewayResponse`

Voids payment for the specified request. This assumes your request includes transaction info.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The Request containing information to send to the payment gateway. |

#### Return

**Type**

PaymentGatewayResponse

**Description**

A Response containing the success or failure of the void.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

### `void(List<PaymentGatewayRequest> requests)` → `List<PaymentGatewayResponse>`

Voids payment(s) for the specified request(s). This assumes your request(s) include transaction info.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The Request(s) containing information to send to the payment gateway. |

#### Return

**Type**

List<PaymentGatewayResponse>

**Description**

A List<PaymentGatewayResponse> containing the success or failure of the void(s).

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if requests is null. |

---
