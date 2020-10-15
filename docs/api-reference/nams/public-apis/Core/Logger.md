## Logger class

`NamespaceAccessible`

Logger class to log logs.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `atDebug()` → `LogBuilder`

`NamespaceAccessible`

Returns a [LogBuilder](apis/Logger/LogBuilder.md) to log messages at a DEBUG level.

<!-- div:right-panel -->
##### Example
```apex
Logger.atDebug().log('Message to debug');
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `atError()` → `LogBuilder`

`NamespaceAccessible`

Returns a [LogBuilder](apis/Logger/LogBuilder.md) to log messages at an ERROR level.

<!-- div:right-panel -->
##### Example
```apex
Logger.atError().log('Message to log');
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `atInfo()` → `LogBuilder`

`NamespaceAccessible`

Returns a [LogBuilder](apis/Logger/LogBuilder.md) to log messages at an INFO level.

<!-- div:right-panel -->
##### Example
```apex
Logger.atInfo().log('Message to log');
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `atWarning()` → `LogBuilder`

`NamespaceAccessible`

Returns a [LogBuilder](apis/Logger/LogBuilder.md) to log messages at a WARN level.

<!-- div:right-panel -->
##### Example
```apex
Logger.atWarning().log('Message to log');
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `debug(Object message)` → `void`

`NamespaceAccessible`

To log a debug level message.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The debug message. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `error(Object message)` → `void`

`NamespaceAccessible`

To log a error level message.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The error message. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `flush()` → `void`

`NamespaceAccessible`

Commits the logs.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `info(Object message)` → `void`

`NamespaceAccessible`

To log a info level message.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The info message. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setMockLogger(String purpose, ILogger mockLogger)` → `void`

`NamespaceAccessible`

Sets a mock [ILogger](apis/Logger/ILogger.md) for the passed in purpose.

##### Parameters
|Param|Description|
|-----|-----------|
|`purpose` |  The purpose for the logger to mock. |
|`mockLogger` |  The logger to mock. |

##### Throws
|Exception|Description|
|---------|-----------|
|`LoggerException` |  if not called from a unit test. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `warn(Object message)` → `void`

`NamespaceAccessible`

To log a warn level message.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The warn message. |

<!-- panels:end -->
---
### Inner Classes

#### Logger.LoggerException class

`NamespaceAccessible`

Thrown when errors occur while logging.

---
