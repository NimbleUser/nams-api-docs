## Criterion class

`NamespaceAccessible`

Represents a single criterion.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `evaluate(EvaluationContext context)` → `CriteriaEvaluationResult`

`NamespaceAccessible`

Evaluates this criterion based on its operator, value and type.

##### Parameters
|Param|Description|
|-----|-----------|
|`context` |  Any additional information to use to evaluate this criterion. |

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
#### `getAdditionalSettings()` → `AdditionalSettingCollection`

`NamespaceAccessible`

Gets [AdditionalSettings](apis/Core/AdditionalSettings.md) necessary for the evaluation of a criterion.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getDisplayLabel()` → `String`

`NamespaceAccessible`

Gets the user friendly name for this criterion.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getEvaluation()` → `Evaluation`

`NamespaceAccessible`

Gets the parent [Evaluation](apis/EvaluationsApi/Evaluation.md) of this Criterion.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getIsActive()` → `Boolean`

`NamespaceAccessible`

Whether this criterion is active or not.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getName()` → `String`

`NamespaceAccessible`

Returns the name that represents this criterion.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRecord()` → `SObject`

`NamespaceAccessible`

The wrapped SObject that should be saved into the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getType()` → `CriterionType`

`NamespaceAccessible`

Returns the type this criterion represents.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getValue()` → `CriterionValue`

`NamespaceAccessible`

The {@link CriterionValue} for which this criterion will be evaluated.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(Schema.SObjectField field, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `put(String fieldName, Object value)` → `void`

`NamespaceAccessible`

Sets field value based on an SObjectField.

##### Parameters
|Param|Description|
|-----|-----------|
|`fieldName` |  The field to get the value from. |
|`value` |  Value to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setAdditionalSettings(AdditionalSettingCollection settings)` → `void`

`NamespaceAccessible`

Sets [AdditionalSettings](apis/Core/AdditionalSettings.md) necessary for the evaluation of a criterion.

##### Parameters
|Param|Description|
|-----|-----------|
|`settings` |  The settings to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setDisplayLabel(String label)` → `Criterion`

`NamespaceAccessible`

Sets the user friendly name for this criterion.

##### Parameters
|Param|Description|
|-----|-----------|
|`label` |  The user friendly name for this criterion. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setEvaluation(Evaluation parentEvaluation)` → `Criterion`

`NamespaceAccessible`

Sets the parent [Evaluation](apis/EvaluationsApi/Evaluation.md) of this Criterion.

##### Parameters
|Param|Description|
|-----|-----------|
|`parentEvaluation` |  The parent [Evaluation](apis/EvaluationsApi/Evaluation.md) of this Criterion. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setName(String name)` → `Criterion`

`NamespaceAccessible`

Sets the name that represents this criterion.

##### Parameters
|Param|Description|
|-----|-----------|
|`name` |  The name that represents this criterion. |

<!-- panels:end -->
---
### Inner Classes

#### Criterion.ConfigurationException class

`NamespaceAccessible`

Thrown when a criterion was misconfigured.

---
