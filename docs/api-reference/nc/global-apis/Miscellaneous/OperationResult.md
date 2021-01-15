# OperationResult class

Represents the result of some operation.

---
## Methods
### `addErrorMessage(String messageString)` → `OperationResult`

Add an error message to the OperationResult. The OperationResult is no longer considered successful after adding an error message.

#### Parameters
|Param|Description|
|-----|-----------|
|`messageString` |  The string that represents the message. |

#### Return

**Type**

OperationResult

**Description**

The instance of the OperationResult.

### `addSuccessMessage(String messageString)` → `OperationResult`

Add a success message to the OperationResult.

#### Parameters
|Param|Description|
|-----|-----------|
|`messageString` |  The string that represents the message. |

#### Return

**Type**

OperationResult

**Description**

The instance of the OperationResult.

### `addWarningMessage(String messageString)` → `OperationResult`

Add a warning message to the OperationResult. The OperationResult is no longer considered successful after adding a warning message.

#### Parameters
|Param|Description|
|-----|-----------|
|`messageString` |  The string that represents the message. |

#### Return

**Type**

OperationResult

**Description**

The instance of the OperationResult.

### `getErrorsAsString()` → `String`

Returns the errors from the OperationResult as a string delimited by a space.

#### Return

**Type**

String

**Description**

The OperationResult's errors.

### `getWarningsAsString()` → `String`

Returns the warnings from the OperationResult as a string delimited by a space.

#### Return

**Type**

String

**Description**

The OperationResult's warnings.

### `hasWarnings()` → `Boolean`

Returns true if the OperationResult contains warning messages.

#### Return

**Type**

Boolean

**Description**

True if result contains warnings, false otherwise.

### `isNotSuccessful()` → `Boolean`

Returns true if the OperationResult is not successful.

#### Return

**Type**

Boolean

**Description**

True if result is not successful, false otherwise.

### `isSuccessful()` → `Boolean`

Returns true if the OperationResult is successful.

#### Return

**Type**

Boolean

**Description**

True if result is successful, false otherwise.

### `newInstance()` → `OperationResult`

Creates a default instance of Result with no messages and a status of success.

#### Return

**Type**

OperationResult

**Description**

New instance of OperationResult.

### `newInstance(Exception e)` → `OperationResult`

Creates an instance of Result with the message(s) from the exception and a status of error.

#### Return

**Type**

OperationResult

**Description**

New instance of OperationResult.

---
