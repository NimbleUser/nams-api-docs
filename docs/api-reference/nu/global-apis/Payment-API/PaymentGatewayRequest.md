# PaymentGatewayRequest class

Used when calling out to a configured payment gateway. Contains necessary information for sending an attempt to authorize, void or refund a credit card.

---
## Constructors
### `PaymentGatewayRequest()`

Constructs a PaymentGatewayRequest.
---
## Properties

### `Amount` → `Decimal`

The amount to send to the payment gateway.

### `BankAccountNumber` → `String`

The routing number for a bank account.

### `BankAccountType` → `BankAccountDetail.AccountTypeOption`

The type of a bank account.

### `BankName` → `String`

The name of a bank.

### `BankRoutingNumber` → `String`

The routing number for a bank.

### `BatchId` → `String`

The Id of a transaction batch relevant to a payment gateway operation.

### `BillingCity` → `String`

The billing city to send to the payment gateway.

### `BillingCountry` → `String`

The billing country to send to the payment gateway.

### `BillingName` → `String`

The billing name to send to the payment gateway.

### `BillingPostalCode` → `String`

The billing postal code to send to the payment gateway.

### `BillingState` → `String`

The billing state to send to the payment gateway.

### `BillingStreet` → `String`

The billing street to send to the payment gateway.

### `CheckType` → `BankAccountDetail.`

The type of checks to write for this account.

### `CreditCardExpirationMonth` → `String`

The credit card expiration month to send to the payment gateway.

### `CreditCardExpirationYear` → `String`

The credit card expiration year to send to the payment gateway.

### `CreditCardNumber` → `String`

The credit card number month to send to the payment gateway.

### `CreditCardSecurityCode` → `String`

The credit card security code to send to the payment gateway.

### `EndDate` → `Datetime`

A date / time intended to represent the end of a date range in a gateway operation.

### `EnhancedPayment` → `global`

Additional transaction-related data for payment gateways which support L2, L2 and L3 data.

### `EntityCreditCardIssuerId` → `Id`

The entity credit card issuer Id for this request.

### `EntityId` → `Id`

Id of the Entity for this request.

### `EntityPaymentMethodId` → `Id`

The entity payment method Id for this request.

### `ExternalPaymentProfileId` → `String`

Id of the ExternalPaymentProfile for this request.

### `ExternalProfileId` → `String`

Id of the ExternalProfile for this request.

### `GLAccountId` → `Id`

The GL Account for this request.

### `GatewayAuthorizationId` → `String`

The gateway authorization Id to send to the payment gateway if this operation is related to a previous gateway operation.

### `GatewaySplitTenderId` → `String`

The gateway split tender Id to send to the payment gateway if this operation is related to a previous gateway operation.

### `GatewayTransactionId` → `String`

The gateway transaction Id to send to the payment gateway if this operation is related to a previous gateway operation.

### `InvoiceNumber` → `String`

If set, represents a merchant-defined invoice number associated with the order. We often use this to send the batch number over to the gateway.

### `LegacyRequest` → `Object`

A legacy-code-related request object instance which can be utilized by a payment gateway.

### `Note` → `String`

The note to send to the payment gateway.

### `PayerId` → `Id`

The payer Account Id for this request.

### `PaymentDetailType` → `String`

If set, represents the type of PaymentDetail which was used to populate this request.

### `PaymentGatewayId` → `Id`

Id of the payment gateway for this request.

### `Source` → `String`

The transaction source system for this request.

### `StartDate` → `Datetime`

A date / time intended to represent the start of a date range in a gateway operation.

### `SubscriptionId` → `String`

The Id of a subscription relevant to a payment gateway operation.

### `TransType` → `String`

The transaction type for the payment gateway operation.

### `UpdateStoredPaymentIfResponseContainsUpdates` → `Boolean`

Controls if stored payments are automatically updated if the PaymentGatewayResponse contains differences.

---
