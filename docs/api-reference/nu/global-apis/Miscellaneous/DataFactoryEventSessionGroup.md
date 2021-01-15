# DataFactoryEventSessionGroup class

Exposes constants and methods commonly used for creating and inserting Event Session Group records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_EVENT_SESSION_DISPLAY_ORDER` → `Integer`

### `DEFAULT_EVENT_SESSION_GROUP_NAME` → `String`

---
## Methods
### `createEventSessionGroup(Id eventId, String groupName)` → `EventSessionGroup__c`

Creates an Event Session Group for the specified Event Id using the name supplied.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |
|`String` |  the name of the Event Session Group |

#### Return

**Type**

EventSessionGroup__c

**Description**

a EventSessionGroup__c object

### `insertEventSessionGroup()` → `EventSessionGroup__c`

Creates and inserts an Event Session Group for a default Event. This method should be used for testing purposes only. Also inserts basic Entity setup information such as payment methods, credit card issuers, and order items configurations.

#### Return

**Type**

EventSessionGroup__c

**Description**

An EventSessionGroup__c object.

### `insertEventSessionGroup(Id eventId)` → `EventSessionGroup__c`

Creates and inserts an Event Session Group for the specified Event Id. The default Event Session Group name is used.

#### Return

**Type**

EventSessionGroup__c

**Description**

a EventSessionGroup__c object

### `insertEventSessionGroup(Id eventId, String groupName)` → `EventSessionGroup__c`

Creates and inserts an Event Session Group for the specified Event Id using the name supplied.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |
|`String` |  the name of the Event Session Group |

#### Return

**Type**

EventSessionGroup__c

**Description**

a EventSessionGroup__c object

---
