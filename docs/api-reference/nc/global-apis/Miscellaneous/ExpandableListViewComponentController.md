# ExpandableListViewComponentController class

Controls the expandable list view component.

---
## Constructors
### `ExpandableListViewComponentController()`

Constructs a ExpandableListViewComponentController.
---
## Methods
### `expandRecord()` → `PageReference`

Sets an internal reference to the expanded record's Id.

#### Return

**Type**

PageReference

**Description**

PageReference of the page to set when a record is expanded. Null to stay on the same page.

### `getExpandedRecordId()` → `String`

Gets the expanded record's Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message instance that this component is respond to. |

#### Return

**Type**

String

**Description**

The expanded record's Id. If no record was expanded, null.

### `initialize()` → `void`

Registers additional fields to query with the query service. If the card has filters configured, then also registers additional fields for the filters' field sets. If, on load, the card should use a filter different than the "default" one, the IDataSourcename and FieldSetName fields on the card are updated to use that filter.

#### Return

**Type**

void

**Description**

The previously stored, if null a new instance of the inner class RecordPagination.

---
