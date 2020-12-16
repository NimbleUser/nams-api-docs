# BatchRecurringPaymentDeclinedNotifier class

Batch job that sends recurring payment 		declined emails to the payers for the specified 		declined recurring payments. 		Note: An email is sent only if the payer is a person account with an email or 			a company whose primary contact has an email.

---
## Constructors
### `BatchRecurringPaymentDeclinedNotifier(Set<Id> recurringPaymentWithDeclinedTransactionIds)`

Instantiates the Batch Recurring Payment Declined Notifier 		with the given declined recurring payment Ids.
#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  the declined recurring payment ids to which |

---
