# RecordListComponentController class

Controls RecordList.component cards.

---
## Properties

### `Pagination` → `Record`

This attribute is a publically accessible attribute of type RecordPagination for the visual force page to interface with. This is used for pagination. @return The previously stored, if null a new instance of the inner class RecordPagination. @deprecated DEPRECATED! DO NOT USE! Please use PaginationV2 instead.

### `PaginationV2` → `Record`

This attribute is a globally accessible attribute of type RecordPaginationV2 for the visualforce pages to interface with. This is used for pagination. @return The previously stored, if null a new instance of the class RecordPaginationV2.

---
## Methods
### `getFilterController()` → `FilterComponentController`

Gets the FilterComponentController that will be used to control button Filters.

#### Return

**Type**

FilterComponentController

**Description**

The FilterComponentController that will control the button Filters.

### `getRecords()` → `List<SObject>`

Gets the records to display in the list using the Datasource. If the record type filter url param is set, the records displayed are filtered by record type.

#### Return

**Type**

List<SObject>

**Description**

List<SObject> records to display.

### `getShouldRender()` → `Boolean`

Whether or not the RecordList.component should render.

#### Return

**Type**

Boolean

**Description**

Always true.

### `initialize()` → `void`

Registers additional fields to query with the query service. If the card has filters configured, then also registers additional fields for the filters' field sets. If, on load, the card should use a filter different than the "default" one, the IDataSourcename and FieldSetName fields on the card are updated to use that filter.

---
## Inner Classes

### RecordListComponentController.RecordPagination class

RecordPagination is an extension of the pageable class that allows us to implement pagination on the list of records to be displayed.

---
#### Constructors
##### `RecordPagination(Card componentCard)`

Constructor to assign custom number per page if specified in card layout.
###### Parameters
|Param|Description|
|-----|-----------|
|`componentCard` |  The Card for this Pageable class' outer class component. |

---
#### Methods
##### `getIsPageable()` → `Boolean`

Global access to the inherited IsPageable property.

###### Return

**Type**

Boolean

**Description**

Pageable.IsPageable.

##### `getRecordCount()` → `Integer`

This method ties the collection to the extended class for processing.

###### Return

**Type**

Integer

**Description**

An integer value of the total number

---
