# BatchRecurringMembershipRenewer class

Batch job that automatically renews auto renewing memberships whose 		"Automatic Renewal Date" is the date this job runs or whose renewal date 		matches the renewal date given to this job.

---
## Constructors
### `BatchRecurringMembershipRenewer()`

Instantiates the Batch Recurring Membership Renewer with a renewal date of today.
### `BatchRecurringMembershipRenewer(Date renewalDateArg)`

Instantiates the Batch Recurring Membership Renewer 		with the given renewal date.
#### Parameters
|Param|Description|
|-----|-----------|
|`Date` |  the date on which auto renewing memberships with this date |

---
## Properties

### `SCHEDULE_NAME` → `String`

---
