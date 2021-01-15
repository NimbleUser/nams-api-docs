# DataFactoryEvent class

Exposes constants and methods commonly used for creating and inserting Event records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createEvent()` → `Event__c`

Creates an Event for a default Entity. This method should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `createEvent(Id entityId)` → `Event__c`

Creates an Event for the specified Entity using a default test name.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `createEvent(String eventName, Id entityId)` → `Event__c`

Creates an Event for the specified Entity and name. Other default information is used for the Short Name, City, State/Province, Start Date, End Date, Maximum Number of Registrations, and Status fields.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name to give the Event. |
|`entityId` |  the Id of the Entity. |

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `createEvents()` → `List<Event__c>`

Creates 3 Events for a default Entity. This method should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

List<Event__c>

**Description**

A List of Event__c object records.

### `insertEvent()` → `Event__c`

Creates and inserts an Event for a default Entity. This method should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `insertEvent(Id entityId)` → `Event__c`

Creates and inserts an Event for the specified Entity using a default test name.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  the Id of the Entity. |

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `insertEventWithoutAddress(Id entityId)` → `Event__c`

Creates and inserts an Event for the specified Entity using a default test name. No address information is set on the event.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The Id of the Entity. |

#### Return

**Type**

Event__c

**Description**

A Event__c object.

### `insertEvents()` → `List<Event__c>`

Creates and inserts 3 Events for a default Entity. This method should be used for testing purposes only. Also inserts basic Entity setup information - such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

List<Event__c>

**Description**

A List of Event__c object records.

---
