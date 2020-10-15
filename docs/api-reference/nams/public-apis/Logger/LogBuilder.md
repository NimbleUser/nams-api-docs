## LogBuilder class

`NamespaceAccessible`

Fluent class to build log messages with helper methods that allow for additional contextual information to be passed to the logs.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `LogBuilder(LoggerLevel level)`

`NamespaceAccessible`

Constructs a new LogBuilder.
##### Parameters
|Param|Description|
|-----|-----------|
|`level` |  The level at which to log. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `causedBy(Exception e)` → `LogBuilder`

`NamespaceAccessible`

Associates the passed in Exception instance with the log statement being created. Interpreted as what prompted the log operation to be called. This should be called from within catch blocks to log caught exceptions.

##### Parameters
|Param|Description|
|-----|-----------|
|`e` |  The exception that prompted the log operation. |

<!-- div:right-panel -->
##### Example
```apex
<pre>
try {
    operation();
} catch (Exception e) {
    Logger.atError().causedBy(e).log(e.getMessage());
} finally {
    Logger.flush();
}
</pre>
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `flush()` → `void`

`NamespaceAccessible`

Terminal statement that calls the `flush` method of all configured [ILogger](apis/Logger/ILogger.md) objects.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forDevelopment()` → `LogBuilder`

`NamespaceAccessible`

Sets the log purpose to Development.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forException()` → `LogBuilder`

`NamespaceAccessible`

Sets the log purpose to Exception.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forJobError()` → `LogBuilder`

`NamespaceAccessible`

Sets the log purpose to Job Error.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forPurpose(String purpose)` → `LogBuilder`

`NamespaceAccessible`

Sets the purpose that defines to which kind of loggers this log will be published to.

##### Parameters
|Param|Description|
|-----|-----------|
|`purpose` |  The purpose to log to. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `forTelemetry()` → `LogBuilder`

`NamespaceAccessible`

Sets the log purpose to Telemetry.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `log(Object message)` → `LogBuilder`

`NamespaceAccessible`

Calls the `log` method of all configured [ILogger](apis/Logger/ILogger.md) objects.

##### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The log message to log. |

<!-- div:right-panel -->
##### Example
```apex
Logger.atDebug().log('message to log').flush();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `logEach(Set<String> objectSet)` → `LogBuilder`

`NamespaceAccessible`

Iterates through the passed in set and individually logs each passed in item. Please be aware that Salesforce does not offer good generic support for Set<Object> so only Set<String> are supported by this method. For better generic support convert your Set to a List and use the List<Object> overload.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectSet` |  The set for which each item will be logged. |

<!-- div:right-panel -->
##### Example
```apex
Set<String> itemSet = new Set<String> { 'item1', 'item2' };
Logger.atDebug().logEach(itemSet).flush();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `logEach(List<Object> objectList)` → `LogBuilder`

`NamespaceAccessible`

Iterates through the passed in list and individually logs each passed in item.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectList` |  The list for which each item will be logged. |

<!-- div:right-panel -->
##### Example
```apex
List<String> itemList = new List<String> { 'item1', 'item2' };
Logger.atDebug().logEach(itemList).flush();
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `logEach(Map<String, Object> objectMap)` → `LogBuilder`

`NamespaceAccessible`

Iterates through the passed in map and individually logs each passed in item. Please be aware that Salesforce does not offer good support for generic Object to be the map key, so keys must be Strings.

##### Parameters
|Param|Description|
|-----|-----------|
|`objectMap` |  The map for which each item will be logged. |

<!-- div:right-panel -->
##### Example
```apex
<pre>
Map<String, Object> itemMap = new Map<String, Object> {
    'item1' => 'value1'
};
Logger.atDebug().logEach(itemMap).flush();
</pre>
```

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `withStackTrace()` → `LogBuilder`

`NamespaceAccessible`

Attaches a stack trace to the log context that will be logged by this operation to provide additional information around where the code was being called from.

<!-- div:right-panel -->
##### Example
```apex
Logger.atDebug().withStackTrace().log('Additional log message').flush();
```

<!-- panels:end -->
---
