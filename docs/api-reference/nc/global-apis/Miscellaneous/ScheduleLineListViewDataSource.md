# ScheduleLineListViewDataSource class

A data source which provides schedule line list view data.

---
## Methods
### `getAccountId()` → `Set<Id>`

Returns the Account Id by which we query for Schedules.

#### Return

**Type**

Set<Id>

**Description**

Id of the logged in CH user.

### `getData(DataSource.Request req)` → `Object`

Gets the data from this data source.

#### Parameters
|Param|Description|
|-----|-----------|
|`req` |  Unused. |

#### Return

**Type**

Object

**Description**

A List of <ScheduleListViewData> and <RecurringListViewData> wrappers for a list of schedule lines

### `getFilteredListOfSchedules(List<znu__Schedule__c> schedules)` → `List<znu__Schedule__c>`

Filters out the schedules to be returned based on the Community Hub page they need to be displayed on. Can be overridden to display schedules matching certain parameters based on the page requirements.

#### Parameters
|Param|Description|
|-----|-----------|
|`schedules` |  A list of schedules queried on certain accounts. |

#### Return

**Type**

List<znu__Schedule__c>

**Description**

The same schedules here because this is the default functionality.

### `getRecordId()` → `Id`

Gets the record Id from the URL params. Returns null if there is no Id present.

#### Return

**Type**

Id

**Description**

Record Id in the URL params, if any.

### `getSObjectType()` → `SObjectType`

Gets the SObject type for this data source

#### Return

**Type**

SObjectType

**Description**

The znu__ScheduleLine__c SObject type.

### `querySchedules()` → `List<znu__Schedule__c>`

Gets the znu__Schedule__c records that powers this data source.

#### Return

**Type**

List<znu__Schedule__c>

**Description**

znu__Schedule__c records for this data source.

### `shouldDisplayAllScheduledPayments()` → `Boolean`

Whether all Scheduled Payments for the logged in user should be displayed or not. If there is a Schedule record Id in the URL that means we only want to display the schedule line children for that particular record.

#### Return

**Type**

Boolean

**Description**

True if there is no Schedule record Id in the URL, false otherwise.

### `validateAffiliationConfiguration()` → `void`

An empty method. Can be overridden and used to validate whether parent company affiliation settings for a logged in user have been correctly set.

---
