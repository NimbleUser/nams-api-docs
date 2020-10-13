@IsTest(IsParallel=true)
private class TriggersDocSamples {
    /// [sample-runnable]
    public class ExampleTriggerRunnable implements TriggerRunnable {
        public void run(TriggeringContext context) {
            // The TriggeringContext contains all of the contextual trigger information
            //System.debug(context.isBeforeDelete());
            //System.debug(context.isBeforeInsert());
            //System.debug(context.isAfterDelete());
            //...

            SObject oldRecord = context.OldRecordMap.values()[0];
            SObject newRecord = new Map<Id, SObject>(context.NewRecordList).get(oldRecord.Id);
            if (sampleLogic(oldRecord, newRecord)) {
                // Calling abort stops the execution of any subsequent trigger steps.
                context.abort();
            }
        }

        private Boolean sampleLogic(SObject oldRecord, SObject newRecord) {
            return oldRecord.get('SomeField') != newRecord.get('SomeField');
        }
    }
    /// [sample-runnable]
}
