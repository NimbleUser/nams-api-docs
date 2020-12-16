# Option class

Represents an option to display in the OptionSelection card.

---
## Constructors
### `Option(String value, String displayText, String optionDetails, Boolean selected)`

Constructs an Option.
#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The value for the option. |
|`displayText` |  The text to display on the page for the option. |
|`optionDetails` |  Additional text to be displayed for the option. This parameter is optional. |
|`selected` |  True if the option is selected, else false. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if value, displayText, or selected is null. |

### `Option(String value, String displayText, String optionDetails)`

Constructs an Option.
#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The value for the option. |
|`displayText` |  The text to display on the page for the option. |
|`optionDetails` |  Additional text to be displayed for the option. This parameter is optional. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if value or displayText is null. |

### `Option(String value, String displayText, Boolean selected)`

Constructs an Option.
#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The value for the option. |
|`displayText` |  The text to display on the page for the option. |
|`selected` |  True if the option is selected, else false. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if value, displayText, or selected is null. |

### `Option(String value, String displayText)`

Constructs an Option. Defaults Selected to false.
#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  The value for the option. |
|`displayText` |  The text to display on the page for the option. |

---
## Methods
### `getDetail()` → `String`

Gets additional details that should be displayed with the option to provide additional context.

#### Return

**Type**

String

**Description**

A string. If there are no details, an empty string is returned.

### `getDisplayText()` → `String`

Gets The text to display on the page for the option.

#### Return

**Type**

String

**Description**

A string.

### `getSelected()` → `Boolean`

True if the option is selected, else false.

#### Return

**Type**

Boolean

**Description**

A boolean.

### `getValue()` → `String`

Gets the value for the option.

#### Return

**Type**

String

**Description**

A string.

### `setSelected(Boolean shouldBeSelected)` → `void`

Sets the selected value on the option.

#### Parameters
|Param|Description|
|-----|-----------|
|`shouldBeSelected` |  Whether or not the option should be selected. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if shouldBeSelected is null. |

---
