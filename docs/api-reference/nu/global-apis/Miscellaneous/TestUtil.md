# TestUtil class

Exposes constants and methods commonly used within test code.

---
## Properties

### `TestIsSameDayVoid` → `Boolean`

Allows you to override "same day void" scenarios in unit tests related to registration cancellation. If set to false, it will allow your code execution to bypass same day void and fall into refund. This is needed because we check the created date on payment records which cannot yet be overridden.

### `use.'` → `production`

---
## Methods
### `assertDeleteValidationRule(SObject sobjectToDelete, String expectedValidationMessage)` → `void`

Asserts that when the given sobject is deleted that the expected validation error occurs.

#### Parameters
|Param|Description|
|-----|-----------|
|`SObject` |  The sobject to delete and test validation for. |
|`String` |  The expected validation message when the sobject is deleted. |

### `assertInsertValidationRule(SObject sobjectToInsert, String expectedValidationRuleMessage)` → `void`

Asserts that when the given sobject is inserted that the expected Validation Rule error occurs.

#### Parameters
|Param|Description|
|-----|-----------|
|`SObject` |  The sobject to insert and test validation for. |
|`String` |  The expected validation message when the sobject is inserted. |

### `assertInsertValidationRule(List<SObject> sobjectsToInsert, String expectedValidationMessage)` → `void`

Asserts that when the given sobject is inserted that the expected Validation Rule error occurs.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<SObject>` |  The sobjects to insert and test validation for. |
|`String` |  The expected validation message when the sobject is inserted. |

### `assertUpdateValidationRule(SObject sobjectToUpdate, String expectedValidationRuleMessage)` → `void`

Asserts that when the given sobject is updated that the expected Validation Rule error occurs.

#### Parameters
|Param|Description|
|-----|-----------|
|`SObject` |  The sobject to update and test validation for. |
|`String` |  The expected validation message when the sobject is updated. |

### `assertValidationMessage(String actualValidationMessage, String expectedValidationMessage)` → `void`

Asserts that the actual validation message contains the expected validation message in a case-insensitive way.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  The actual validation message encountered. |
|`String` |  The expected validation message. |

---
