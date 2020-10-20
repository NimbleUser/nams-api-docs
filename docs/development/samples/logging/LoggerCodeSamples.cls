@IsTest
private class LoggerCodeSamples {
    private static void accountsApiExamples() {
        /// [purpose-examples]
        Logger.atError().forJobError().log('Job Error purpose example.').flush();
        Logger.atInfo().forTelemetry().log('Telemetry Info purpose example.').flush();
        Logger.atDebug().forDevelopment().log('Debug Development example.').flush();
        Logger.atWarning().forException().log('Warn Exception example.').flush();
        /// [purpose-examples]

        /// [log-each]
        // With map
        Map<String, Object> itemMap = new Map<String, Object> {
           'item1' => 'value1'
        };
        Logger.atDebug().logEach(itemMap).flush();

        // With list of objects
        List<String> itemList = new List<String> { 'item1', 'item2' };
        Logger.atDebug().logEach(itemList).flush();
        /// [log-each]

        ExampleOperation example = new ExampleOperation();
        /// [caused-by]
        try {
            example.operation();
        } catch (Exception e) {
            Logger.atError().causedBy(e).log(e.getMessage());
        } finally {
            Logger.flush();
        }
        /// [caused-by]

        /// [stack-trace]
        Logger.atDebug().withStackTrace().log('Additional log message').flush();
        /// [stack-trace]

        /// [flush-example]
        Logger.atDebug().log('Example log.'); // this caches a log
        Logger.atDebug().log('Another example log.'); // this caches another log
        Logger.flush(); // this logs both previous logs
        /// [flush-example]
    }

    public class ExampleOperation {
        public void operation() { }
    }
}