# ExpandableListViewData class

Represents data to be presented in an ExpandableListView card.

---
## Constructors
### `ExpandableListViewData()`

Default constructor.
---
## Properties

### `Details` → `String`

The details of this list view item.

### `RecordId` → `Id`

Id of the record this data represents.

### `Status` → `String`

The status message for this list view item.

### `StatusDetails` → `List<String>`

A list of additional status messages for this list view item.

### `SubDetails` → `List<String>`

A list of additional details for this list view item.

---
## Methods
### `getCardAlerts()` → `Alerts`

Alerts to display in the card for this particular instance. Default behaviour is no alerts displayed, so only override if you want to present alerts for the record in question.

#### Return

**Type**

Alerts

**Description**

Alerts to display.

### `getStatusClass()` → `String`

Gets the status CSS class for a given status.

#### Return

**Type**

String

**Description**

A String CSS class.

### `getTableData(List<SObject> relatedDataSourceRecords)` → `List<SObject>`

Does nothing in this base implementation.

---
