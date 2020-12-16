# StringUtil class

Exposes methods and functions for manipulating strings.

---
## Methods
### `generateRandomIdentifier()` → `String`

Generate a pseudo-random String. See https://salesforce.stackexchange.com/questions/76216 for more info.

#### Return

**Type**

String

**Description**

A pseudo-random String.

### `isNullOrEmpty(String value)` → `Boolean`

Returns true if the string value is null or empty.

#### Parameters
|Param|Description|
|-----|-----------|
|`value` |  String the value to analyze. |

#### Return

**Type**

Boolean

**Description**

A Boolean

### `lPad(String text, Integer length, String paddingCharacter)` → `String`

Adds a number of characters to the left of the string value passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`text` |  The value to which characters should be added. |
|`length` |  The number of characters to add. |
|`paddingCharacter` |  The character to use. |

#### Return

**Type**

String

**Description**

The updated string.

### `rPad(String text, Integer length, String paddingCharacter)` → `String`

Adds a number of characters to the right of the string value passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`text` |  The value to which characters should be added. |
|`length` |  The number of characters to add. |
|`paddingCharacter` |  The character to use. |

#### Return

**Type**

String

**Description**

The updated string.

---
