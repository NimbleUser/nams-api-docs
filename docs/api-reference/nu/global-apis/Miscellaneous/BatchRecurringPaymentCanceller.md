# BatchRecurringPaymentCanceller class

Batch job that cancels recurring payments 		with a status of "Cancel Pending". Scheduled as-needed 		and run every hour to catch stragglers.

---
## Properties

### `SCHEDULE_NAME` → `String`

---
## Methods
### `execute()` → `void`

Executes the Batch Recurring Payment Canceller with 		a batch size equal to the number of allowed callouts since it 		has to cancel the ARB schedule in authorize.net and only so many 		callouts are allowed.

---
