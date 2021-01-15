# DataFactoryEventBadge class

Exposes constants and methods commonly used for creating and inserting Event Badge records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_FIRST_NAME` → `String`

### `DEFAULT_LAST_NAME` → `String`

---
## Methods
### `createBasicEventBadge(String firstName, String lastName)` → `EventBadge__c`

Creates an Event Badge for the specified name. Default setup information is inserted, including default Entity information, a default Account, a default Event, and Registration Order. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the first name on the Event Badge |
|`String` |  the last name on the Event Badge |

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

### `createBasicEventBadge(String firstName, String lastName, Id evtRegId)` → `EventBadge__c`

Creates an Event Badge for the specified name and Registration Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the first name on the Event Badge |
|`String` |  the last name on the Event Badge |
|`Id` |  the Id of the Registration |

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

### `insertBasicEventBadge(String firstName, String lastName)` → `EventBadge__c`

Creates and inserts an Event Badge for the specified name. Default setup information is inserted, including default Entity information, a default Account, a default Event, and Registration Order. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the first name on the Event Badge |
|`String` |  the last name on the Event Badge |

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

### `insertBasicEventBadge(String firstName, String lastName, Id evtRegId)` → `EventBadge__c`

Creates and inserts an Event Badge for the specified name and Registration Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the first name on the Event Badge |
|`String` |  the last name on the Event Badge |
|`Id` |  the Id of the Registration |

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

### `insertDefaultEventBadge()` → `EventBadge__c`

Creates and inserts an Event Badge with a default name. Default setup information is inserted, including default Entity information, a default Account, a default Event, and Registration Order. This method should be used for testing purposes only.

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

### `insertRegistrantBadge(Id acctId, Id registrationId)` → `EventBadge__c`

Creates and inserts an Event Badge for the specified Account and Registration Ids. The information on the Event Badge is pulled from data populated on the Account record.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Account |
|`Id` |  the Id of the Registration |

#### Return

**Type**

EventBadge__c

**Description**

a EventBadge__c object

---
