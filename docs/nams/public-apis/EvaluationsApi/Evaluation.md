## Evaluation class

`NamespaceAccessible`

Represents an evaluation.

### Related

[Criterion](apis/EvaluationsApi/Criterion.md)

---
### Enums
#### MatchStrategy


`NamespaceAccessible`

Strategy to use when matching criteria during an evaluation.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `addCriteria(List<Criterion> criteria)` → `void`

`NamespaceAccessible`

Adds a list of [Criterion](apis/EvaluationsApi/Criterion.md) to this evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`criteria` |  The list of [Criterion](apis/EvaluationsApi/Criterion.md) to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addCriterion(Criterion criterion)` → `void`

`NamespaceAccessible`

Adds a [Criterion](apis/EvaluationsApi/Criterion.md) to this evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`criterion` |  The [Criterion](apis/EvaluationsApi/Criterion.md) to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(Schema.SObjectField field)` → `Object`

`NamespaceAccessible`

Gets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(String fieldName)` → `Object`

`NamespaceAccessible`

Gets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getCriteria()` → `List<Criterion>`

`NamespaceAccessible`

Gets the list of [Criterion](apis/EvaluationsApi/Criterion.md) associated with this evaluation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getDisplayLabel()` → `String`

`NamespaceAccessible`

Gets the user friendly name for this evaluation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getIsActive()` → `Boolean`

`NamespaceAccessible`

Whether this evaluation is active or not.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getMatchStrategy()` → `MatchStrategy`

`NamespaceAccessible`

Returns the strategy to use when matching criteria during an evaluation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getName()` → `String`

`NamespaceAccessible`

The name for this evaluation.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPriority()` → `Integer`

`NamespaceAccessible`

Gets the priority this evaluation has in comparison with other evaluations.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

`NamespaceAccessible`

The wrapped SObject that should be saved into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(Schema.SObjectField field, Object value)` → `void`

`NamespaceAccessible`

Sets the field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field for which to set the value. |
|`value` |  The value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(String field, Object value)` → `void`

`NamespaceAccessible`

Sets the field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field for which to set the value. |
|`value` |  The value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setDisplayLabel(String displayLabel)` → `Evaluation`

`NamespaceAccessible`

Sets the user friendly name for this evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`displayLabel` |  The user friendly name for this evaluation. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMatchStrategy(MatchStrategy strategy)` → `Evaluation`

`NamespaceAccessible`

Sets the strategy to use when matching criteria during an evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`strategy` |  The strategy to use when matching criteria during an evaluation. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setName(String name)` → `Evaluation`

`NamespaceAccessible`

Sets the name for this evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name for this evaluation. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPriority(Integer priority)` → `Evaluation`

`NamespaceAccessible`

Sets the priority for this evaluation.

##### Parameters
|Param|Description|
|-----|-----------|
|`priority` |  The priority for this evaluation. |

<!-- panels:end -->
---
