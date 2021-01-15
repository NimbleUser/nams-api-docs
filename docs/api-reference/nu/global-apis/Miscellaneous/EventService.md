# EventService class

Exposes methods and functions commonly 		used outside of the package for Events.

---
## Methods
### `getEventById(Id eventId)` → `Event__c`

Gets an Event record from a specified Id

#### Parameters
|Param|Description|
|-----|-----------|
|`the` |  Id of the Event__c object to be retrieved |

#### Return

**Type**

Event__c

**Description**

an Event__c object

### `getEventsByIds(Set<Id> eventIds)` → `List<Event__c>`

Gets a list of Event__c objects from a specified Set of Ids, 		which includes a variety of custom and standard fields.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  the Set of Ids of Event__c objects to be retrieved |

#### Return

**Type**

List<Event__c>

**Description**

a List of Event__c objects

---
