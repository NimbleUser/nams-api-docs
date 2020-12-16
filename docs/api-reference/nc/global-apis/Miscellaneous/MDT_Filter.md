# MDT_Filter class

Represents a Filter__mdt custom metadata type.

---
## Constructors
### `MDT_Filter(Filter__mdt filterRecord)`

Constructs a Filter instance based on a Filter__mdt record.
#### Parameters
|Param|Description|
|-----|-----------|
|`filterRecord` |  The Filter__mdt record that will be wrapped. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if filterRecord is null. |

### `MDT_Filter(String defaultName, Card card, Integer defaultSortOrder)`

Constructs the default Filter based on the Card's settings.
#### Parameters
|Param|Description|
|-----|-----------|
|`defaultName` |  The text that will be displayed for the default filter button. |
|`card` |  The card instance that is displaying the filters. |
|`defaultSortOrder` |  The sort order that will be used for the default filter button. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
## Properties

### `CardName` → `String`

Name of the card associated with this Filter. @return String with the name of the card associated with this Filter.

### `DataSourceName` → `String`

The name of the class that will be set to provide the data needed to display the card. If empty, the Data Source specified in the associated Card's custom setting is used. @return String with the name of the Data Source class to set.

### `DisplayName` → `String`

The friendly display name that will be used for the button. @return String with the friendly display name for the button.

### `FieldSetName` → `String`

Name of the Field Set that will be set for the Card. If empty, the Field Set specified in the associated Card's custom setting is used. @return String with the name of the Field Set to set.

### `IsActive` → `Boolean`

The status of the Filter. @return Boolean value indicating the status of the Filter.

### `SortOrder` → `Integer`

Order in which this button will be displayed. Lower numbers would go to the left. Higher numbers would go to the right. @return Integer with the Sort Order.

---
