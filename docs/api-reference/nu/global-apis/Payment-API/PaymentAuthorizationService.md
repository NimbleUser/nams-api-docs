# PaymentAuthorizationService class

This class is used to authorize payment information for an entity and amount specified by the caller. If the payment details are valid, this class will prepare a payment that can be applied to an order. This class will not insert anything into the database.

---
## Properties

### `Amount` → `Decimal`

The amount to authorize.

### `EntityId` → `Id`

The Id of the entity that will receive the payment.

### `EntityPaymentMethodId` → `Id`

The entity payment method Id for this request.

### `Instance` → `PaymentAuthorizationService`

Singleton instance for the Payment Authorization Service.

### `OrderInstance` → `Order`

The Order being paid. If present this is used for Level 2 and Level 3 payment processing.

### `OriginalRequest` → `Request`

The original request for authorization.

### `PayerId` → `Id`

The Id of the account making the payment.

### `Payment` → `global`

The authorized payment that is ready to be applied to an order.

### `PaymentDetails` → `PaymentDetail`

Additional payment information such as credit card info.

### `Result` → `Operation`

The results and status of the authorization.

---
## Methods
### `authorize(Request authorizationRequest)` → `Response`

Authorizes a payment using a payment gateway based on the payment details provided. If authorization fails, the details for the failure will be captured in the response. If payment authorization is successful, the response will include an instance of the Payment class. This method will not insert any payment records into the database.

#### Parameters
|Param|Description|
|-----|-----------|
|`authorizationRequest` |  A request containing the payment details. |

#### Return

**Type**

Response

**Description**

A response containing the authorized payment or errors which prevented the authorization from occurring.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if authorizationRequest is null. |

### `authorize(List<Request> authorizationRequests)` → `List<Response>`

Authorizes payments using a payment gateway based on the payment details provided. If authorization fails, the details for the failure will be captured in the responses. If payment authorization is successful, the responses will include an instance of the Payment class. This method will not insert any payment records into the database.

#### Parameters
|Param|Description|
|-----|-----------|
|`authorizationRequests` |  A list of requests containing the payment details. |

#### Return

**Type**

List<Response>

**Description**

A list of responses containing the authorized payments or errors which prevented the authorization from

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if authorizationRequests is null. |

---
## Inner Classes

### PaymentAuthorizationService.Request class

A request for authorizing a payment which contains the payer Id, entity Id, payment amount, and additional payment details such as credit card information.

---
#### Constructors
##### `Request(Id paymentPayerId, Id paymentEntityId, Decimal paymentAmount, PaymentDetail paymentInfo)`

Constructor for the request.
###### Parameters
|Param|Description|
|-----|-----------|
|`paymentPayerId` |  The Id of the account who is making the payment. |
|`paymentEntityId` |  The Id of the entity that the payment will go towards. |
|`paymentAmount` |  The amount to authorize. |
|`paymentInfo` |  Additional payment details such as credit card information. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameters are null. |

##### `Request(Id paymentPayerId, Id paymentEntityId, Decimal paymentAmount, PaymentDetail paymentInfo,Order orderToPay)`

Constructor for the request.
###### Parameters
|Param|Description|
|-----|-----------|
|`paymentPayerId` |  The Id of the account who is making the payment. |
|`paymentEntityId` |  The Id of the entity that the payment will go towards. |
|`paymentAmount` |  The amount to authorize. |
|`paymentInfo` |  Additional payment details such as credit card information. |
|`orderToPay` |  The Order being paid. Send along for Level 2 and Level 3 payment rates. |

---
### PaymentAuthorizationService.Response class

A response which will contain the status of the authorization. If successful, the response will contain an authorized payment that can be applied to orders.

---
