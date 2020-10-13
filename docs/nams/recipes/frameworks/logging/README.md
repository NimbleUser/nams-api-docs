# Logging

The `Logging` framework allows for the ability to manage and monitor logs, metrics, and request traces.

### Getting Started
The Logging Framework was structured in a way where the developer will specify a log level followed by a purpose or log utility (more on that later).

### Logging Levels
As previously mentioned, logging levels are the foundation of the logging framework. To create a log, we will first specify the level at which we are logging. The default logging levels in the logging framework are as follows:
* Debug
* Info
* Warn
* Error

When building logs, logging levels will be prefaced with `at` as follows:
* `Logger.atDebug()`
* `Logger.atInfo()`
* `Logger.atWarn()`
* `Logger.atError()`

### Purposes
Purposes help our logger categorize the reason (or _purpose_) for which a log is being created. Current purposes supported by the Logger framework are:
* Development
* Exception
* Telemetry
* Job Error

**Note**: This is optional, and if not specified the _development_ purpose is used by default.

When building logs, purposes will be prefaced with `for` as follows:
* `.forDevelopment()`
* `.forException()`
* `.forTelemetry()`
* `.forJobError()`

Examples of how we can mix and match our logging levels and purposes can be shown below:

[code](../../../samples/logging/LoggerCodeSamples.cls ':include :type=code apex :fragment=purpose-examples')

**Note**: Whenever logging job errors with `.forJobError()` we want to pass the job context through our log method as shown below

```apex
public void finish(Database.BatchableContext context) {
    List<AsyncApexJob> jobs = this.getAsyncApexJobById(context.getJobId());
    if (errorsOccurred(jobs)) {
        Logger.atError().forJobError().log(context).flush();
    }
}
```

### Flush
You may have noticed in the previous example that after using our logging levels and purposes to construct logs, we have a `.flush()` method at the end. It's important to note that logs are only temporarily cached until our `.flush()` method is called, which will then log all cached logs. An example of how this works can be seen below:

[code](../../../samples/logging/LoggerCodeSamples.cls ':include :type=code apex :fragment=flush-example')

### Utility Methods
The logging framework also provides some unique utility features such as:
* Passing in a list of objects to be logged with `logEach()`
* Associating Exceptions with `causedBy()`
* Attaching Stack Traces with `withStackTrace()`

`logEach()` Iterates through the passed in set and individually logs each passed in item. Please be aware that Salesforce does not offer good generic support for Set<Object> so only Set<String> are supported by this method. For better generic support convert your Set to a List and use the List<Object> overload.

[code](../../../samples/logging/LoggerCodeSamples.cls ':include :type=code apex :fragment=log-each')

`causedBy()` Associates the passed in Exception instance with the log statement being created. Interpreted as what prompted the log operation to be called. This should be called from within catch blocks to log caught exceptions.

[code](../../../samples/logging/LoggerCodeSamples.cls ':include :type=code apex :fragment=caused-by')

`withStackTrace()` Attaches a stack trace to the log context that will be logged by this operation to provide additional information around where the code was being called from.

[code](../../../samples/logging/LoggerCodeSamples.cls ':include :type=code apex :fragment=stack-trace')

### Configure Logger Behavior
With the use of Custom Metadata Types, Logger implementations may be extended and/or turned on or off.

**To manage Logger behavior**, navigate to the `Logger` Custom Metadata Type. From here, you can specify any new Logger class implementations with the *Class__c* field, manage previously mentioned purposes with the *Purposes__c* field, or turn on/off any Logger implementations with the *IsActive__c* field.

![Log Configuration](/assets/logger.png)

# Nimble AMS Logging Package
The Nimble AMS Logging Package is a separate package that, when installed, provides additional functionalities and capabilities related to the logging experience.

### Log Object
The custom `Log__c` object in the Logging Package provides a way to save, monitor, and analyze logs produced throughout the org. Custom fields on the log object track the time the log was made, where the log occured (which class, method, line, and column), as well as the body/message passed to the log.

### Platform Event
Another feature specific to the Nimble AMS Logging Package is the use of Platform Events when committing logs.

In general, it's possible to lose logs anytime operations are rolled back. In order to prevent losing logs, a platform event is used in order to publish logs as soon as they're flushed using the aformentioned `.flush()` method, preventing any potential logs being lost in the development process.

### Cleaning
Since logs and operations can accumulate fairly quickly, the Nimble AMS Logging Package has a built in job that will automatically clean (delete) logs after 30 days unless otherwise specified through Custom Metadata Type configurations.

**To configure log cleaner times**: With the use of Custom Metadata Types, the Nimble AMS Logging Package provides the ability to have logs automatically cleaned/deleted from the org after a specified amount of time. Logs can be configured to be cleaned after a specified amount of days according to the specific log level. For example: *Error* logs can be kept for 90 days, while *Debug* logs can be kept for 7 days, etc...

To manually configure the amount of time logs will be kept for, navigate to the Custom Metadata Type `Log Configuration`, and you can modify the specified log level to be deleted with the field *DaysBeforeDeletion__c*

![Log Configuration](/assets/log_configurations.png)
