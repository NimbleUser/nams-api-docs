# PaymentGatewayResponse class

Used when generating responses from configured payment gateway. Contains necessary information for determining the success or failure of an authorization, void or refund attempt.

---
## Constructors
### `PaymentGatewayResponse()`

Constructs a PaymentGatewayResponse with a successful operation result.
### `PaymentGatewayResponse(OperationResult opResult)`

Constructs a PaymentGatewayResponse with the specified operation result.
#### Parameters
|Param|Description|
|-----|-----------|
|`opResult` |  The OperationResult to assign. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if opResult is null. |

---
## Properties

### `AuthorizationId` → `String`

The authorization Id from the payment gateway.

### `AvsCode` → `String`

The AVS code from the payment gateway.

### `BatchResponses` → `List<PaymentGatewayBatchResponse>`

The list of batch responses.

### `CardHolderVerifCode` → `String`

The card holder verification code from the payment gateway.

### `Code` → `String`

The code from the payment gateway.

### `CreditCardNumber` → `String`

The masked credit card number returned when getting an external payment profile.

### `ExpirationMonth` → `String`

The expiration date month returned when getting an external payment profile.

### `ExpirationYear` → `String`

The expiration date year returned when getting an external payment profile.

### `ExternalPaymentProfileExternalId` → `String`

The Id of an external payment profile in a payment gateway.

### `ExternalProfileExternalId` → `String`

The Id of an external profile in a payment gateway.

### `FirstName` → `String`

The first name returned when getting an external payment profile.

### `IsTransactionSettled` → `Boolean`

Whether or not a transaction is settled.

### `LastName` → `String`

The last name returned when getting an external payment profile.

### `OriginalExternalPaymentProfileExternalId` → `String`

The Id of an external payment profile sent in the initial request.

### `OriginalTransactionId` → `String`

The transaction Id from the original payment gateway request.

### `RawResponse` → `String`

The raw response from the payment gateway.

### `ReasonCode` → `String`

The reason code from the payment gateway.

### `ReasonMessage` → `String`

The reason messaege from the payment gateway.

### `RecordTypeName` → `String`

The record type name (if any) which should be used on any created records.

### `Result` → `Operation`

The operation result indicating the success or failure of an operation with the payment gateway.

### `SercurityVerifCode` → `String`

The security verification code from the payment gateway.

### `SplitTenderId` → `String`

The split tender Id from the payment gateway.

### `SubscriptionId` → `String`

The Id for the Subscription from the payment gateway.

### `TransactionId` → `String`

The transaction Id from the payment gateway.

### `TransactionResponses` → `List<PaymentGatewayTransactionResponse>`

The list of transaction responses.

### `TransactionSettlementDate` → `Date`

The date which a transaction was settled in an external gateway.

### `TransactionStatus` → `String`

The status of the external transaction.

---
