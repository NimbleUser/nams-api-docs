# ColleagueLocator class

Base class for fetching coworkers/colleagues for various purposes.

---
## Constructors
### `ColleagueLocator()`

Constructs a ColleagueLocator instance.
---
## Properties

### `Instance` → `ColleagueLocator`

Gets the singleton instance of ColleagueLocator. @return ColleagueLocator singleton.

---
## Methods
### `getColleagues(Request request)` → `Set<Id>`

Determine the first 50,000 colleagues of a provided account. Default behavior is to return only colleagues from the account's primary company.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An object representing a request for colleages, containing all needed information. |

#### Return

**Type**

Set<Id>

**Description**

A set of account (colleague) Id's.

### `getColleaguesWithRegistrations(Request request)` → `List<ColleagueDisplay>`

Selects colleagues along with their registration information. Default behavior is to return only colleagues from the account's primary company.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An object representing a request for colleagues, containing all needed information. |

#### Return

**Type**

List<ColleagueDisplay>

**Description**

A list of colleague display objects (Account wrappers with extra functionality for GUI display).

### `isColleague(Request request)` → `Boolean`

Determines if two accounts are coworkers, for the purposes of determining eligibility for registration.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An object representing a request for colleagues, containing all needed information. |

#### Return

**Type**

Boolean

**Description**

True if the account has access to register the attendee, else false.

---
## Inner Classes

### ColleagueLocator.Request class

A standard request for retrieving colleagues.

---
#### Constructors
##### `Request(Id userId, Id companyId, Id eventIdArg)`

Constructs a request.
###### Parameters
|Param|Description|
|-----|-----------|
|`userId` |  The Id of the user account in question. |
|`companyId` |  The Id of the company account in question. |
|`eventId` |  The Id of the event in question. |

##### `Request(Id userId, Id companyId)`

Constructs a request.
###### Parameters
|Param|Description|
|-----|-----------|
|`userId` |  The Id of the user account in question. |
|`companyId` |  The Id of the company account in question. |

---
#### Properties

##### `CompanyAccountId` → `Id`

The Id of the company account.

##### `EventId` → `Id`

The Id of an event these user's are being selected in reference to.

##### `SearchTerm` → `String`

The text entered in the search box.

##### `UserAccountId` → `Id`

The Id of the user's account.

---
