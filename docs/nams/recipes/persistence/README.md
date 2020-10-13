# Database Persistence

The `Persistence` framework is not tied to any specific API. It allows for the generic 
saving and deleting of any object that implements the `IPersistenceSupport` interface. Additionally, by using the Unit
of Work pattern behind the scenes, it takes care of executing the least amount of DML operations.

## Getting Started

API model classes are Apex objects that represent something in the system. Normally these represent
an SObject in the database, but they themselves are not SObjects but, rather, wrapper representations of SObjects.

This allows consumers of the API to work with these objects in-memory, without having to be concerned about
database calls. Eventually you might want to persist the data in the database, this is where the `Persistence` 
comes in.

The `Persistence` framework bridges the gap between the API model Apex classes and the SObjects they represent.
It works by leveraging 2 classes:
* `PersistenceService`. This is the entry-point that allows you to tell the `Persitence` framework to persist your data.
* `PersistenceDefinitionBase`. This class acts as a translator between API model classes and SObject records, defining
how data is represented in the database.

### Example - Simple database representation

Let's look at a simple example, where we have a wrapper model class that represents an `Account`, called `AccountModel`.
To make it be able to communicate with the `Persistence` framework it needs to implement `IPersistenceSupport`:

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=accountmodel')

Before committing the `AccountModel` to the database as an `Account` record, you need to first tell the `Persistence` framework
how should it handle the translation from Apex to SObject. This can be done by calling the `registerModelDefinition` method
from `PersistenceService`.

```apex
PersistenceService.Instance.registerModelDefinition(Account.SObjectType, PersistenceDefinitionBase.class);
```

Because we have a simple model class with no children or parent relationship then we can use the default `PersistenceDefinitionBase`
as our definition file, which will simply tell the `Persistence` framework to insert the record received from the `getRecord`
method as is.

Finally, call into the `Persistence` service to register and commit the data:

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=simpleregistercommit')

### Example - Model with relationships

When dealing with API models that have more complex relationships, then we need to create a custom definition implementation
that defines how those relationships work.

That is a 2 step process. First we need to create a definition for the parent model, implementing the `getChildren` method,
and then another for the child model, implementing the `getRelationships` method.

Let's use the relationships between Accounts and Person Contact: one Account record can be tied to multiple Contacts through the
Contact.AccountId field.

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=models-and-defs')

Once we create the definition files, we need to register them in the `PersistenceService`

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=relationship-registrations')

Finally, we call the `PersistenceService`. Notice that we only need to register and commit the parent object (ContactModel), and
because we have defined in the definition implementations all the relationships between the objects then the entire
hierarchy will be registered:

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=calling-persistence')

## Bulk Operations

Each `PersistenceDefinitionBase` instance represents a single record to be inserted into the database. But oftentimes
in Salesforce we need to perform bulk operations to avoid hitting platform limits. For those cases the `PersistenceService`
provides a hook that notifies the caller of all of the records that will be inserted or updated on the database
per SObject type. This allows you to query or manipulate data in bulk, in preparation for the database commit.

This is done through the `PersistenceService`'s `registerBulkHandler` method, which takes the SObjectType that the
handler belongs to and an `BulkPersistenceMessageHandler` instance, whose `notify` method will be called before
the database is called. All of the `IPersistenceSupport` objects that will be operated on for the registered SObject type will be passed
to it.

### Example - Retrieving Data in Bulk

Continuing from the examples above, let's imagine that we are operating on a list of Accounts, and that we want to
gather all Affiliation records that are related to them and perform some bulk operation on them. 
For this we can first build an implementation of `BulkPersistenceMessageHandler` that will handle the querying of all of the data.

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=bulk-handler')

Lastly we need to make sure that our handler will be called by the `PersistenceService` before database commit.

```apex
PersistenceService.getSObjectInstance().registerBulkHandler(Account.SObjectType, new AffiliationQuerier());
```

!> Tip: You can also use the Singleton pattern to create a single version of your `BulkPersistenceMessageHandler` implementation
that is shared throughout the entire transaction. That way you can make bulk calls on the handler, cache data, and use the
same handler instance later on when you need that data.

## Working With Custom Metadata Types

So far you might have noticed that any time we call the `PersistenceService` we interact with it through the `getSObjectInstance`
method. This is the standard way of interacting with the service whenever you are dealing with a model that represents an SObject.
You might also want to create, or come upon model classes that wrap Custom Metadata Type objects (any of the EvaluationsApi
model classes is an example of this). Interacting with these types of model classes is different because Salesforce does
not allow for regular DML operations to be executed on these types of objects. Instead, to perform CRUD on CMT records, 
Salesforce gives us the `Metadata` class, which performs operation asynchronously.

To make things easier, the `PersistenceService` exposes the `getMetadataInstance` method, which allows you to perform
CRUD on these types of models. Using this is very similar to when interacting with SObjects, the difference being
that, because CRUD is performed async, operations will happen in a different thread.

If you wish to execute code when the async process finishes, you can create a `MetadataPersistenceCallback` and implement
the `handleResult`, which will give you access to information about the operation, like whether it failed or not, error messages,
etc.

[code](../../samples/persistence/classes/PersistenceDocsSamples.cls ':include :type=code apex :fragment=callback')

To register your callback and ensure that it gets executed you need to call the `setCallback` on the object returned by 
`getMetadataInstance`:

```apex
PersistenceService.getMetadataInstance().setCallback(new SampleCallback());
PersistenceService.getMetadataInstance().register(myModel);
PersistenceService.getMetadataInstance().commitWork(); // Once the operation finishes, your callback's `handleResult` will be executed
```
