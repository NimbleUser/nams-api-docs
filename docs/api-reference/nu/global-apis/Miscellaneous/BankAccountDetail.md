# BankAccountDetail class

A PaymentDetail extension to represent the payment details of a bank account at the time of add, edit.

---
## Constructors
### `BankAccountDetail()`

A no-arg constructor for building instances of BankAccountDetail.
---
## Enums
### AccountTypeOption


An enum to determine a type of bank account.

### CheckTypeOption


An enum to determine a type of eCheck. Some gateways might not support all types. Accounts Receivable Conversion (ARC) This transaction type is a one-time charge against a customer's checking account. ARC allows merchants to collect payments received in the mail or left in a drop-box, and convert them to an electronic payment. When you use this eCheck type, NACHA requires that you use a Magnetic Ink Character Recognition Reader to provide proof of a paper check. Back Office Conversion (BOC) This transaction type is a one-time charge against a customer's checking account. BOC allows merchants to collect a check written at a point of sale (checkout counter, manned bill payment location, service call location) and convert it to an ACH debit during back office processing. When you use this eCheck type, NACHA requires that you use a Magnetic Ink Character Recognition Reader to provide proof of a paper check. Cash Concentration or Disbursement (CCD) This transaction type is a one-time or recurring charge or refund against a business checking account. CCD transactions are fund transfers to or from a corporate entity. Prearranged Payment and Deposit Entry (PPD) This transaction type is a one-time or recurring charge or refund against a consumer checking or savings account. PPD transactions may only be originated when payment and deposit terms between the merchant and the customer are prearranged. Telephone-Initiated Entry (TEL) This transaction type is a one-time charge against a consumer checking or savings account that was originated by telephone. TEL transactions can only be originated when an existing relationship between the merchant and the customer exists; or if no relationship exists, the customer must initiate the telephone call to the merchant. Internet-Initiated Entry (WEB) This transaction type is a one-time or recurring charge against a consumer checking or savings account and for which payment authorization was obtained from the customer via the Internet.

---
## Properties

### `AccountNumber` → `String`

The account number of a bank account.

### `AccountType` → `global`

The type of bank account.

### `BankName` → `String`

The full name of the institution associated with a bank account.

### `BillingAddress` → `Address`

The billing address associated with a bank account.

### `CheckType` → `global`

The type of checks to virtually write for the account.

### `ExternalPaymentProfileExternalId` → `String`

The External Id representing an ExternalPaymentProfile to send to a payment gateway.

### `ExternalProfileExternalId` → `String`

The External Id representing an External Profile to send to a payment gateway.

### `Name` → `String`

The full name of the bank account holder.

### `RoutingNumber` → `String`

The routing number associated with a banking institution.

---
