# PaymentServiceRequest class

A payment request.

---
## Properties

### `AdditionalCartPaymentData` → `Object>`

A map of additional data to be written back to the CartPayment record created from submitting a payment. Currently assumes the cart payment converter is prepared to then convert your cart payment fields to their respective payment record field upon successful order submission.

### `CartId` → `Id`

The Id of the cart associated with this payment.

### `PayerId` → `Id`

The Id of the account responsible for making this payment. Not necessarily the recipient of the product or service being paid for.

### `PaymentDetail` → `global`

The payment details for this request.

---
