# CompanyListViewDataSource class

A data source which provides schedule line list view data specifically for companies affiliated with certain Community Hub users. Used to provide data for the 'Company Scheduled Payments' page in Community Hub, and re-uses most of the functionality of ScheduleLineListViewDataSource.cls which is used for the 'My Scheduled Payments' CH page.

---
## Methods
### `getAccountId()` → `Set<Id>`

Returns the Account Id by which we query for Schedules.

#### Return

**Type**

Set<Id>

**Description**

Id of the primary affiliated company account of the logged in CH user.

### `getFilteredListOfSchedules(List<znu__Schedule__c> schedules)` → `List<znu__Schedule__c>`

Overridden to return only schedules that have been purchased by a company manager for their affiliation.

#### Parameters
|Param|Description|
|-----|-----------|
|`schedules` |  A list of schedules queried on the Account Id. |

#### Return

**Type**

List<znu__Schedule__c>

**Description**

Only schedules purchased for companies affiliated with the logged in CH user.

### `validateAffiliationConfiguration()` → `void`

Used to validate whether parent company affiliation settings for a logged in user are correctly set.

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if the logged in user does not have a primary affiliated Id. |

---
