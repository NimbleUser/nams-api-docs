# BatchRecurringPaymentTransactions class

Batch job that looks for successfully settled 		Authorize.Net credit card transactions with the date range given. 		By default, the date range is within the past 31 days 		or since the last scheduled job ran. 		For each successfully settled Authorize.Net credit card, 		an ARB credit card payment, payment line, and transaction records 		are created and a processed payment email is sent to the payer. 		For declined credit cards, a declined payment email is sent to the payer. 		Note: An email is sent only if the payer is a person account with an email.

---
## Constructors
### `BatchRecurringPaymentTransactions()`

Instantiates the Batch Recurring Payment Transactions.
### `BatchRecurringPaymentTransactions(DateTime firstSettlementDateTime, DateTime lastSettlementDateTime)`

Instantiates the Batch Recurring Payment Transactions 		with the given first settlement date time and last settlement date time.
#### Parameters
|Param|Description|
|-----|-----------|
|`DateTime` |  The date and time to start searching for settled recurring |
|`DateTime` |  The date and time to end searching for settled recurring |

---
## Properties

### `DATE_NOT_VALID_MSG` → `String`

### `DATE_RANGE_TOO_LARGE_MSG` → `String`

### `LAST_SETTLEMENT_DATE_BEFORE_FIRST_SETTLEMENT_DATE` → `String`

### `SCHEDULE_NAME` → `String`

---
## Methods
### `execute()` → `void`

Runs the Batch Recurring Payment Transactions 		looking for settled recurring credit card payments within the last 31 days 		or since the last scheduled job ran using a batch size of the 		number of allowed callouts.

---
