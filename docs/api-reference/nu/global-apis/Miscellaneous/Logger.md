# Logger class

Used to create logs for the NU.Loggers defined in the Logger__c Custom Settings.

---
## Enums
### Level


Levels of log errors that can be recorded.

---
## Methods
### `flush()` → `void`

Saves all batched logs.

### `log(Exception e)` → `void`

Creates a log based on an exception.

#### Parameters
|Param|Description|
|-----|-----------|
|`e` |  The exception to log. |

### `log(String message, String methodName, String className, Logger.Level level)` → `void`

Creates a log based on the passed parameters.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message for the log. |
|`methodName` |  The method name where the error occurred. |
|`className` |  The class name where the error occurred. |
|`level` |  The level for the log. |

---
## Inner Classes

### Logger.ILogger interface

Interface for creating new Logger that can be used for logging.

---
#### Methods
##### `flush()` → `void`
##### `log(ExceptionDetails details)` → `void`
---
