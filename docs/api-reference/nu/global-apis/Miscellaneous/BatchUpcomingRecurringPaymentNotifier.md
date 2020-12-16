# BatchUpcomingRecurringPaymentNotifier class

Batch job that sends an upcoming email to 		the account whose next payment date is 15 days after 		the given notification date. By default, the notification 		date is today. 		Note: An email is sent only if the account is a person account 			with an email or a company whose primary contact has an email.

---
## Constructors
### `BatchUpcomingRecurringPaymentNotifier()`

Instantiates the Batch Upcoming Recurring 		Payment Notifier with a notification date of today.
### `BatchUpcomingRecurringPaymentNotifier(Date notificationDateArg)`

Instantiates the Batch Upcoming Recurring 		Payment Notifier with the given notification date.
#### Parameters
|Param|Description|
|-----|-----------|
|`Date` |  The notification date. |

---
## Properties

### `NUMBER_OF_DAYS_PRIOR_TO_PAYMENT_TO_SEND` → `Integer`

### `SCHEDULE_NAME` → `String`

---
