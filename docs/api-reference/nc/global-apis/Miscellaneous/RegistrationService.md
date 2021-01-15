# RegistrationService class

API for registering a user for events.

---
## Properties

### `Instance` → `RegistrationService`

Gets an instance of RegistrationService. @return RegistrationService instance.

---
## Methods
### `getAvailableActions(Request request)` → `List<Action>>`

Queries events to see which actions are available to the provided account for each event.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventId` |  The provided event's Id. |
|`accountIds` |  The provided account Ids. |
|`eventIds` |  The provided event Ids. |
|`request` |  A request object containing all the data needed to retrieve available actions. |

#### Return

**Type**

List<Action>>

**Description**

A map of event Id's to potential actions.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the eventId argument is null. |
|`ArgumentNullException` |  if either argument is null. |

---
## Inner Classes

### RegistrationService.Request class

A request against the RegistrationService.

---
#### Constructors
##### `Request(Id accountId, Id CompanyId, Set<Id> eventIds)`
---
