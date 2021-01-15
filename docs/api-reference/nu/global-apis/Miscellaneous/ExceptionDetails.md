# ExceptionDetails class

Used to build log message details.

---
## Constructors
### `ExceptionDetails(String message, String methodName, String className, Logger.Level level)`

Constructor for ExceptionDetails that populates passed 				parameters when no stack trace is present.
#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The log message. |
|`methodName` |  The name of the method where the error occurred. |
|`className` |  The name of the class where the error occurred. |
|`level` |  The log level of the error. |

### `ExceptionDetails(String message, String stackTrace, Integer lineNumber, Logger.Level level)`

Constructor for ExceptionDetails that populates class name 				and method name from the stack trace.
#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The log message. |
|`stackTrace` |  The stack trace for the error. |
|`lineNumber` |  The line number where the error occurred. |
|`level` |  The log level of the error. |

### `ExceptionDetails(Exception e)`

Constructor for ExceptionDetails that creates an instance from an Exception.
#### Parameters
|Param|Description|
|-----|-----------|
|`e` |  The exception to log. |

---
## Properties

### `ClassName` → `String`

The name of the class where the error occurred.

### `Level` → `Logger.`

The log level for the error.

### `Line` → `Integer`

The line number where the error occurred.

### `Message` → `String`

The error message to log.

### `MethodName` → `String`

The name of the method where the error occurred.

### `OrgId` → `Id`

The organization Id where the log was created.

### `OrganizationName` → `String`

The organization name where the log was created.

### `StackTrace` → `String`

The stack trace for the error.

### `Url` → `String`

The url of the page on which the error occured.

---
