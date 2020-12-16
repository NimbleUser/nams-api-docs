# BatchRecurringPaymentProcessedNotifier class

Batch job that sends recurring payment 		processed emails to the payers for the specified 		processed payments. Note: An email is sent only if the payer is a person account with an email or 			a company whose primary contact has an email.

---
## Constructors
### `BatchRecurringPaymentProcessedNotifier(Set<Id> arbProcessedPaymentIdsArg)`

Instantiates the Batch Recurring Payment Processed Notifier 		with the given processed payment Ids.
#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  the processed ARB payment ids to which |

---
