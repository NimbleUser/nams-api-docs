# UnitOfWork class

Provides an implementation of the Enterprise Application Architecture Unit Of Work, as defined by Martin Fowler: http://martinfowler.com/eaaCatalog/unitOfWork.html - Applies bulkification to DML operations, insert, update and delete. - Manages a business transaction around the work and ensures a rollback occurs (even when exceptions are later handled by the caller). - Honors dependency rules between records and updates dependent relationships automatically during the commit. - Populating relationships from one object type to itself are not currently supported (such as Account.NU__PrimaryAffiliation__c) - Allows for generic work to be registered and executed utilizing the IDoWork interface. - Allows for extension and custom operations during the commit phase via the IDML interface.

---
## Constructors
### `UnitOfWork()`

Instantiates a base instance of UnitOfWork utilizing the SimpleDml IDML implementation.
### `UnitOfWork(IDML dmlImplementationArg)`

Instantiates a base instance of UnitOfWork utilizing the specified IDML implementation.
#### Parameters
|Param|Description|
|-----|-----------|
|`dmlImplementationArg` |  An implementation instance of IDML to utilize. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if dmlImplementationArg is null. |

---
## Methods
### `commitWork()` → `void`

Commits the registered work to the database.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  An existing or newly created record. |
|`relatedToField` |  An SObjectField reference to the lookup field that related the records. |
|`relatedTo` |  An SObject instance (yet to be committed to the database). |
|`options` |  The Database.DMLOptions instance to register. |

#### Return

**Type**

void

**Description**

the Database.DMLOptions registered to this UnitOfWork instance;

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any arguments are null. |
|`ArgumentNullException` |  if options is null. |

### `registerDeleted(List<SObject> records)` → `void`

Registers a list of existing records to be deleted during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of potentially existing records. |
|`field` |  The field to upsert by, for example upsert defaults to Id |
|`record` |  A potentially existing record. |
|`field` |  The field to upsert by, for example upsert defaults to Id |
|`records` |  A list of existing records. |

#### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if records is null. |
|`An` |  ArgumentNullException if record is null. |
|`ArgumentNullException` |  if records is null. |

### `registerDeleted(SObject record)` → `void`

Registers an existing record to be deleted during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  An existing record. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if record is null. |

### `registerDirty(List<SObject> records)` → `void`

 @desciption Registers a list of existing records to be updated during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  A list of existing records. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if records is null. |

### `registerDirty(SObject record)` → `void`

Registers an existing record to be updated during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  An existing record. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if record is null. |

### `registerNew(List<SObject> records)` → `void`

Registers a list of newly created records to be inserted during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  A list of newly created or existing records. |
|`record` |  A newly created or existing record. |
|`records` |  A list of newly created records. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if records is null. |
|`ArgumentNullException` |  if record is null. |
|`ArgumentNullException` |  if records is null. |

### `registerNew(SObject record)` → `void`

Registers a newly created record to be inserted during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  A newly created record. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if record is null. |

### `registerNew(SObject record, Schema.SObjectField relatedToField, SObject relatedTo)` → `void`

Registers a newly created record to be inserted during commitWork(). A reference to a parent record that has been registered as new may also be provided.

#### Parameters
|Param|Description|
|-----|-----------|
|`record` |  A newly created record. |
|`relatedToField` |  An SObjectField reference to the lookup field that related the records. |
|`relatedTo` |  An SObject instance (yet to be committed to the database). |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if record is null. |

### `registerWork(IDoWork work)` → `void`

Registers a generic piece of work to be executed during commitWork().

#### Parameters
|Param|Description|
|-----|-----------|
|`work` |  A piece of work. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if work is null. |

### `skipDuplicateCheck()` → `void`

Automatically registers Database.DMLOptions to this UnitOfWork instance to force Salesforce to skip any configured Datacloud duplicate rules on commitWork() operations.

---
## Inner Classes

### UnitOfWork.IDML interface

Describes methods utilized during the commitWork method to perform DML operations.

---
#### Methods
##### `dmlDelete(List<SObject> objList, UnitOfWork uow)` → `void`

Represents doing a DML delete operation and any additional logic you require.

###### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  List of SObjects to delete. |
|`uow` |  A UnitOfWork instance to access any additional methods on. |

##### `dmlInsert(List<SObject> objList, UnitOfWork uow)` → `void`

Represents doing a DML insert operation and any additional logic you require.

###### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  List of SObjects to insert. |
|`uow` |  A UnitOfWork instance to access any additional methods on. |

##### `dmlUpdate(List<SObject> objList, UnitOfWork uow)` → `void`

Represents doing a DML update operation and any additional logic you require.

###### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  List of SObjects to update. |
|`uow` |  A UnitOfWork instance to access any additional methods on. |

##### `dmlUpsert(List<SObject> objList, UnitOfWork uow, Schema.SObjectField field)` → `void`

Represents doing a DML upsert operation and any additional logic you require.

###### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  List of SObjects to upsert. |
|`uow` |  A UnitOfWork instance to access any additional methods on. |
|`field` |  A Schema.SObjectField to upsert the records by. |

---
### UnitOfWork.IDoWork interface

Describes generic work to be performed during the commitWork method of an instance of UnitOfWork.

---
#### Methods
##### `doWork()` → `void`

Represents the action of doing generic work besides inserting, updating, or deleting. Some examples: -Sending out a notification email. -Logging some information -Buying a bottle of Pepsi.

---
