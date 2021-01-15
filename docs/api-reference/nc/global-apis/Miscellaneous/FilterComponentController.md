# FilterComponentController class

Controls Filter.component.

---
## Constructors
### `FilterComponentController(Card cardInstance)`

Constructs a FilterComponentController with the passed card instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`cardInstance` |  The card where the filters will be displayed. |

#### Throws
|Exception|Description|
|---------|-----------|
|`Argument` |  null exception if the cardInstance parameter is null. |

---
## Properties

### `DataSourceToSet` → `String`

Gets set when a Filter button gets clicked. @return String with the DataSource that should be set for the card.

### `FieldSetToSet` → `String`

Gets set when a Filter button gets clicked. @return String with the FieldSet that should be set for the card.

---
## Methods
### `getDefaultCardFilter()` → `MDT_Filter`

Gets the default filter for the card.

#### Return

**Type**

MDT_Filter

**Description**

Default Filter record.

### `getDefaultName()` → `String`

Specifies the text that will be rendered for the default button.

#### Return

**Type**

String

**Description**

'All' by default and can be overridden to specify a different text.

### `getDefaultSortOrder()` → `Integer`

Specifies the default position in which the default button should be displayed.

#### Return

**Type**

Integer

**Description**

By default the button will be placed in the first position.

### `getFilters()` → `List<MDT_Filter>`

Gets the list of wrapped Filter records that will be displayed in the card.

#### Return

**Type**

List<MDT_Filter>

**Description**

List of Filter records to display in the card.

### `getSetFilter()` → `String`

Gets the currently set filter. First look to see if there is a filter set by the user, if none is set looks at a filter set through the query param, is none set, then returns the name of the default filter.

#### Return

**Type**

String

**Description**

String with the currently set filter.

### `getSetFilterObject()` → `MDT_Filter`

Gets the MDT_Filter record that is currently set. If there is none set, then returns the default filter.

#### Return

**Type**

MDT_Filter

**Description**

MDT_Filter record with the set filter.

### `getShouldFilterRerender()` → `Boolean`

Determines whether or not clicking a filter button should rerender the page.

#### Return

**Type**

Boolean

**Description**

True if the page should be rerendered on filter click, false if the page should refresh.

### `getShouldRender()` → `Boolean`

Determines whether or not this component will be rendered. By default it renders if there are custom metadata type records specified for the card.

#### Return

**Type**

Boolean

**Description**

True if should be rendered, else false.

### `setFilter()` → `PageReference`

Sets the Data Source and Field Set on the card instance where the filters are displayed. If there is no Data Source or Field Set specified, the values set on the Card's custom settings are used.

#### Return

**Type**

PageReference

**Description**

PageReference of the page to set when a filter button is clicked.

---
