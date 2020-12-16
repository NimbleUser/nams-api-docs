# PlainTextComponentController2 class

A controller for the Plain Text Component which supports merging label values with data from a data source.

---
## Methods
### `doesDataSourceProvideSObjectRecord()` → `Boolean`

Determines if the data source configured on the card returns an SObject record.

#### Return

**Type**

Boolean

**Description**

True if the configured data source returns an SObject record, otherwise false.

### `getDataSourceData()` → `Object`

Gets data from the data source configured on this card.

#### Return

**Type**

Object

**Description**

An Object instance containing data from the data source, or null if no data source is configured.

### `getDetail()` → `String`

Overridable method that defines the value to plug into the card description field. If a data source is configured, and does not return null, or an instance of NullData, this returns the value of the label configured on the card, merged with that data. Otherwise, just returns the value of the label itself.

#### Return

**Type**

String

**Description**

String to use for the description.

### `getHeading()` → `String`

Overridable method that defines the value to plug into the card heading field. If a data source is configured, and does not return null, or an instance of NullData, this returns the value of the label configured on the card, merged with that data. Otherwise, just returns the value of the label itself.

#### Return

**Type**

String

**Description**

String to use for the heading.

### `getMergedLabelValue(String labelName)` → `String`

Gets the value of the specified label name, merged with the data provided by the data source. Adheres to the following rules. 1. If the labelName is blank, returns null. This would occur if nothing is configured on the card. 2. If no data is returned from the data source, simply returns the value of the label. 3. If data is returned from the data source, returns the value of the label merged with the data.

#### Return

**Type**

String

**Description**

String value of the specified labelName merged with data provided by the configured data source. See

### `getShouldRender()` → `Boolean`

Overridable method which determines if this card should render. It renders in the following scenarios 1. The DataSource__c is blank. 2. doesDataSourceProvideSObjectRecord() evaluates to true.

#### Return

**Type**

Boolean

**Description**

True if the card should be rendered, else false.

### `getUseDescriptionLabel()` → `Boolean`

Tells the card UI to never just use the label configured on the record. That allows us to accomplish the merge with data functionality.

#### Return

**Type**

Boolean

**Description**

Always false.

### `getUseHeadingLabel()` → `Boolean`

Tells the card UI to never just use the label configured on the record. That allows us to accomplish the merge with data functionality.

#### Return

**Type**

Boolean

**Description**

Always false.

---
