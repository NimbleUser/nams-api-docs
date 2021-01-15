# EditEvaluationModalComponentController class

Controls the EditEvaluationModal Lightning component, providing server side functionality.

---
## Methods
### `getAdditionalSettings(String evaluationName, String apexClassName)` → `String`

Gets all MDT_AdditionalSetting wrappers for the specified Evaluation__mdt name.

#### Parameters
|Param|Description|
|-----|-----------|
|`evaluationName` |  The Evaluation__mdt record each AdditionalSetting__mdt looks up to. |
|`apexClassName` |  The Apex class to retrieve DisplayOptions for. |

#### Return

**Type**

String

**Description**

A JSON encoded String containing a List<MDT_AdditionalSetting>.

### `getEvaluation(String qualifiedApiName)` → `String`

Gets a JSON serialized String of an MDT_Evaluation wrapper for the specified name.

#### Parameters
|Param|Description|
|-----|-----------|
|`qualifiedApiName` |  The name of the record to retrieve. |

#### Return

**Type**

String

**Description**

A JSON serialized String of an MDT_Evaluation wrapper.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordId is null. |

### `getEvaluatorClasses()` → `List<String>`

Gets a list of all apex classes that end in "evaluator".

#### Return

**Type**

List<String>

**Description**

A List<String> of ApexClass names.

### `saveAdditionalSettings(String serializedWrappers)` → `OperationResult`

Saves a List<MDT_AdditionalSettings> serialized as JSON.

#### Parameters
|Param|Description|
|-----|-----------|
|`serializedWrapper` |  The List<MDT_AdditionalSettings> to save, serialized as JSON. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure of the save.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if serializedWrapper is null. |

### `saveEvaluation(String serializedWrapper)` → `OperationResult`

Saves a MDT_Evaluation serialized as JSON.

#### Parameters
|Param|Description|
|-----|-----------|
|`serializedWrapper` |  The MDT_Evaluation to save, serialized as JSON. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure of the save.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if serializedWrapper is null. |

---
