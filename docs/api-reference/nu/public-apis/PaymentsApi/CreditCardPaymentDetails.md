## CreditCardPaymentDetails class

Credit card payment details.

---
### Properties

#### `PAYMENT_TYPE` → `String`

Constant for getting the Credit Card payment type.

#### `billingAddress` → `Address`

The card holder's billing address.

#### `capture` → `Boolean`

Flag for whether or not to capture the payment. True by default.

#### `cardHolderName` → `String`

The name on the credit card i.e. "John Smith".

#### `cardNumber` → `String`

The credit card number.

#### `entityId` → `Id`

The entity Id from the lightning component.

#### `expirationMonth` → `String`

The month the credit card being used expires. Expects the number of the month in two digits (01-12) formatted as a String.

#### `expirationYear` → `String`

The year the credit card being used expires. Expects the year number formatted as a four-digit String.

#### `methodId` → `Id`

The selected payment method Id from the lightning component.

#### `note` → `String`

The note from the lightning component.

#### `securityCode` → `String`

The credit card security string.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `build(SObject record)` → `PaymentDetailsBase`

Builder method to initialize a PaymentDetailsBase with information from an SObject.
##### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record to use to initialize the instance. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getBillingAddress()` → `Address`

Returns the card expiration year.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCapture()` → `Boolean`

Returns the flag for whether or not to capture the payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCardHolderName()` → `String`

Returns the name of the card holder.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCardNumber()` → `String`

Returns the card number.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEntityCreditCardIssuer()` → `Id`

Returns the entity credit card issuer.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEntityId()` → `Id`

Returns the Id of the payment method entity.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getExpirationMonth()` → `String`

Returns the card expiration month.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getExpirationYear()` → `String`

Returns the card expiration year.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getMethodId()` → `Id`

Returns the Id of the payer account.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getNote()` → `String`

Returns the note for the payment.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPaymentData()` → `Object>`

Returns data specific to the payment type.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getSecurityCode()` → `String`

Returns the card securtity code.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getType()` → `String`

Returns the Type of Payment Details.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance()` → `CreditCardPaymentDetails`

Creates a new instance of CreditCardPaymentDetails.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setBillingAddress(Address billingAddress)` → `CreditCardPaymentDetails`

Sets the card holder's billing address.
##### Parameters
|Param|Description|
|-----|-----------|
|`billingAddress` |  The card holder's billing address. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setCapture(Boolean capture)` → `CreditCardPaymentDetails`

Sets capture flag for whether or not to capture the payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`capture` |  Flag for whether or not to capture the payment. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setCardHolderName(String name)` → `CreditCardPaymentDetails`

Sets the card holder's name.
##### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name on the credit card i.e. "John Smith". |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setCardNumber(String cardNumber)` → `CreditCardPaymentDetails`

Sets the credit card number.
##### Parameters
|Param|Description|
|-----|-----------|
|`cardNumber` |  The card number. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEntityCreditCardIssuer(Id entityCreditCardIssuerId)` → `CreditCardPaymentDetails`

Sets the entity credit card issuer.
##### Parameters
|Param|Description|
|-----|-----------|
|`entityCreditCardIssuerId` |  The Id of the entity credit card issuer record. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEntityId(Id entityId)` → `PaymentDetailsBase`

Sets the Id of the payment method entity.
##### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The entity Id of the payment method. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setExpirationMonth(String expirationMonth)` → `CreditCardPaymentDetails`

Sets the credit card expiration month.
##### Parameters
|Param|Description|
|-----|-----------|
|`expirationMonth` |  The card expiration month. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setExpirationYear(String expirationYear)` → `CreditCardPaymentDetails`

Sets the credit card expiration year.
##### Parameters
|Param|Description|
|-----|-----------|
|`expirationYear` |  The card expiration year. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMethodId(Id paymentMethodId)` → `PaymentDetailsBase`

Sets the Id of the payment method.
##### Parameters
|Param|Description|
|-----|-----------|
|`paymentMethodId` |  Payment method Id to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setNote(String note)` → `PaymentDetailsBase`

Sets the note for the payment.
##### Parameters
|Param|Description|
|-----|-----------|
|`note` |  The payment note. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setSecurityCode(String securityCode)` → `CreditCardPaymentDetails`

Sets the credit card security code.
##### Parameters
|Param|Description|
|-----|-----------|
|`securityCode` |  The card security code. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `truncateCardNumber()` → `CreditCardPaymentDetails`

Truncates the card number to only the last 4 digits.
<!-- panels:end -->
---
