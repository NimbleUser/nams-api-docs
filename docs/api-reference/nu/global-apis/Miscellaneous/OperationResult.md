# OperationResult class

Stores the result of a DML operation.

---
## Constructors
### `OperationResult()`

Default constructor that defines the Status as SUCCESS and instantiates a new list of Operation Messages.
---
## Properties

### `Messages` → `List<OperationMessage>`

Holds a list of Operation Messages.

### `Status` → `Operation`

Holds the Status of the Operation Result.

---
## Methods
### `addErrorMessage(OperationResult result, String errMsg)` → `void`

Adds the error message specified to the provided OperationResult. If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult to which the message will be added |
|`String` |  the error message |

### `addErrorMessage(OperationResult result, String errorMessage, String methodName, String className)` → `void`

Adds the error message specified to the provided OperationResult. 				If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The OperationResult to which the message will be added. |
|`errorMessage` |  The error message. |
|`methodName` |  The name of the method adding the error message. |
|`className` |  The name of the class calling the error message. |

### `addErrorMessage(OperationResult result, String errorMessage, Object operationInput)` → `void`

Adds the error message specified to the provided OperationResult. 				If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The OperationResult to which the message will be added. |
|`errorMessage` |  The error message. |
|`operationInput` |  The Operation Input object. |

### `addErrorMessage(OperationResult result, String errMsg, Object operationInput, String methodName, String className)` → `void`

Adds the error message specified and OperationInput to the provided OperationResult. If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult to which the message will be added |
|`String` |  the error message |
|`Object` |  the OperationInput |
|`methodName` |  The name of the method adding the error message. |
|`className` |  The name of the class calling the error message. |

### `addErrorMessage(String errMsg)` → `void`

Adds the error message specified to this OperationResult.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the error message |

### `addSObjectErrorsFromOperationResult(OperationResult errorResult)` → `void`

Copies any error messages stored on an OperationResult to its OperationInput object.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult |

### `addWarningMessage(OperationResult result, String warningMsg)` → `void`

Adds the warning message specified to the provided OperationResult. If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult to which the message will be added |
|`String` |  the warning message |

### `addWarningMessage(OperationResult result, String warningMsg, Object operationInput)` → `void`

Adds the warning message specified to the provided OperationResult. 				If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The OperationResult to which the message will be added. |
|`warningMsg` |  The warning message. |
|`operationInput` |  the OperationInput. |

### `addWarningMessage(OperationResult result, String warningMsg, String methodName, String className)` → `void`

Adds the warning message specified to the provided OperationResult. 				If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The OperationResult to which the message will be added. |
|`warningMsg` |  The warning message. |
|`methodName` |  The method that called this. |
|`className` |  The class that called this. |

### `addWarningMessage(OperationResult result, String warningMsg, Object operationInput, String methodName, String className)` → `void`

Adds the warning message specified and OperationInput to the provided OperationResult. 				If OperationResult is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The OperationResult to which the message will be added. |
|`warningMsg` |  The warning message. |
|`operationInput` |  The OperationInput. |
|`methodName` |  The method that called this. |
|`className` |  The class that called this. |

### `copyMessages(OperationResult sourceResult, OperationResult destinationResult)` → `void`

Adds any messages on the source OperationResult to the destination OperationResult. If either source or destination is null, no action is taken.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the source OperationResult |
|`OperationResult` |  the destination OperationResult |

### `getErrorResult(Exception ex)` → `OperationResult`

Instantiates an Operation Result from an Exception or a DMLException.

#### Parameters
|Param|Description|
|-----|-----------|
|`Exception` |  the Exception from which to generate the Operation Result |

#### Return

**Type**

OperationResult

**Description**

an OperationResult

### `getErrorResult(DMLException ex)` → `OperationResult`

Instantiates an OperationResult from a DMLException, wrapping all error messages as OperationMessages.

#### Parameters
|Param|Description|
|-----|-----------|
|`DMLException` |  the DMLException from which to geerate the OperationResult |

#### Return

**Type**

OperationResult

**Description**

an OperationResult

### `getErrorString()` → `String`

Concatenates any unique error messages stored on this OperationResult.

#### Return

**Type**

String

**Description**

the String of the concatenated error messages, sans duplicates.

### `getErrorStringFromOperationResult(OperationResult errorResult)` → `String`

Concatenates any unique error messages stored on the OperationResult.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult |

#### Return

**Type**

String

**Description**

the String of the concatenated error messages, sans duplicates.

### `getValidationErrorResult(String validationErrorMsg)` → `OperationResult`

Instantiates an Operation Result using the specified validation error message.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the validation error message |

#### Return

**Type**

OperationResult

**Description**

an OperationResult

### `getWarningString()` → `String`

Concatenates any unique warning messages stored on the OperationResult.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  the OperationResult |

#### Return

**Type**

String

**Description**

the String of the concatenated warning messages, sans duplicates.

### `getWarnings()` → `List<String>`

Gets any unique warning messages stored on the OperationResult.

#### Return

**Type**

List<String>

**Description**

A set of all warning messages in a given operation result.

### `hasErrorMessages(OperationResult result)` → `Boolean`

Returns true if the result contains error messages. Note that a null result returns false.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  an OperationResult to check |

#### Return

**Type**

Boolean

**Description**

a Boolean

### `hasWarningMessages(OperationResult result)` → `Boolean`

Returns true if the result contains warning messages. Note that a null result returns false.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  an OperationResult to check |

#### Return

**Type**

Boolean

**Description**

a Boolean

### `isNotSuccessful(OperationResult result)` → `Boolean`

Checks to see that the result is non-null and the status is not set to success. Note that a null result returns false.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  an OperationResult to check |

#### Return

**Type**

Boolean

**Description**

a Boolean

### `isNotSuccessful()` → `Boolean`

Checks to see if the current instance is not successful.

#### Return

**Type**

Boolean

**Description**

True if this result does not have a success status.

### `isSuccessful(OperationResult result)` → `Boolean`

Checks to see that the result is non-null and the status is set to success. Note that a null result returns false.

#### Parameters
|Param|Description|
|-----|-----------|
|`OperationResult` |  an OperationResult to check |

#### Return

**Type**

Boolean

**Description**

a Boolean

### `isSuccessful()` → `Boolean`

Checks to see if the current instance is successful.

#### Return

**Type**

Boolean

**Description**

True if this result has a success status.

---
