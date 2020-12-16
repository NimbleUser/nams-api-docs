# BatchRecurringMembershipRepricer class

Batch job that reprices auto renewing membership's 		"Automatic Renewal Dues Amount" whose Automatic Renewal Repricing Date 		is on or before the given repricing date and hasn't been renewed yet. 		The repricing date defaults to today, but it can also be specified, 		if needed.

---
## Constructors
### `BatchRecurringMembershipRepricer()`

Instantiates the Batch Recurring Membership Repricer with a repricing date of today.
### `BatchRecurringMembershipRepricer(Date repricingDateArg)`

Instantiates the Batch Recurring Membership Repricer with the given repricing date.
#### Parameters
|Param|Description|
|-----|-----------|
|`Date` |  the date on which auto renewing memberships with this |

---
## Properties

### `DEFAULT_BATCH_SIZE` → `Integer`

### `REPRICING_DATE_REQUIRED_VAL_MSG` → `String`

### `SCHEDULE_NAME` → `String`

---
