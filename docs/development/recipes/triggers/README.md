# Triggers

In NAMS, Trigger logic follows a "step" architecture. Instead of having a single trigger class executing all logic for a given
SObject, triggers are broken into sequential steps, executed one after another. This allows us to create one step (Apex class behind the scenes)
per responsibility or piece of logic.

Each `Trigger Step` is powered by a Custom Metadata Type record, which defines the SObject that it should execute for
as well as the class which contains the logic that should be executed. 

The `Trigger Step` architecture provides several benefits:
* Allows you to disable specific pieces of logic
* Allows you to build your own custom steps, that will be executed in conjunction with the packaged code
* Allows you to control the order in which code executes.

`Trigger Steps` can be managed through its Custom Metadata Type. To see, modify, disable/re-enable, or create your custom steps
you can go to:
* Setup
* Search for Custom Metadata Types
* Locate the Trigger Step object and click on Manage Records

## Creating Custom Steps

### Starting From Scratch With A New SObject

If you are working with a new SObject you will first need to set up a trigger that supports the `Trigger Step` framework.

1. Create an [Apex Trigger](https://help.salesforce.com/articleView?id=bi_edd_wb_trigger_native.htm&r=https%3A%2F%2Fwww.google.com%2F&type=5)
2. Your trigger should have a single line of code (substitute SOBJECT_NAME for the API name of your custom SObject):

    ```apex
    TriggerHandlerManager.executeHandlers('SOBJECT_NAMETrigger', SOBJECT_NAME.SObjectType);
    ```
   
Once the trigger has been created follow the instructions of the Using An Existing SObject section.
   
### Using An Existing SObject Type

To create `Trigger Steps` for SObjects that already have an Apex Trigger that correctly routes all logic through the `TriggerHandlerManager`
you will first need to create a class that implements the `TriggerRunnable` interface.

This interface has a single method, `run()`, which accepts a `TriggerContext`. The TriggerContext holds which 
`TriggerOperation` is taking place, as well as the trigger.new, trigger.newMap, etc variables. 
It has an `abort()` method, which will prevent later trigger steps from executing.

The `TriggerContext` is also virtual, so you could subclass it to hold state that could be computed on-demand and 
then reused across multiple trigger steps.

#### Keep In Mind!

Any custom `TriggerRunnable` needs to be accessible by the Headless package. This means that the class should either be `global`
or have the `@NamespaceAccessible` annotation if your code lives within the `NAMS` namespace.

#### Example

[code](../../samples/triggers/classes/TriggersDocSamples.cls ':include :type=code apex :fragment=sample-runnable')
