# CustomLabelService class

Service to handle interacting with custom labels.

---
## Properties

### `Instance` → `CustomLabelService`

CustomLabelService instance for singleton.

---
## Methods
### `getLabelValue(String labelName)` → `String`

Gets the value of a custom label from its name. Checks if label is already cached, if not, will add label to cache. If label is not found, an uncatchable Salesforce error will be thrown.

#### Parameters
|Param|Description|
|-----|-----------|
|`labelName` |  The name of the custom label to get the value for. |

#### Return

**Type**

String

**Description**

The value of the custom label name.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

### `getLabelValue(String labelName, SObject record)` → `String`

Gets the value of a custom label from its name and merges any merge fields with the provided SObject record.

#### Parameters
|Param|Description|
|-----|-----------|
|`labelName` |  The name of the custom label to get the value for. |
|`record` |  The SObject to merge values into the label. |

#### Return

**Type**

String

**Description**

The value of the custom label name that was passed in with any

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

### `getLabelValue(String labelName, List<String> formatValues)` → `String`

Gets the value of a custom label from its name, then uses String.format to substitute any patterns in the label value with the values in the list of format values provided.

#### Parameters
|Param|Description|
|-----|-----------|
|`labelName` |  The name of the custom label to get the value for. |
|`formatValues` |  The values to substitute into the label value. |

#### Return

**Type**

String

**Description**

The value of the custom label, with any patterns replaced with the values

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
