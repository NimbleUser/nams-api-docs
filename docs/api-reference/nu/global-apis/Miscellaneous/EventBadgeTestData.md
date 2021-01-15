# EventBadgeTestData class

Builder class for dealing with Event Badge records. Solely used for testing, NOT a data factory.

---
## Properties

### `Instance` → `EventBadgeTestData`

Gets an instance of EventBadgeTestData. @return EventBadgeTestData instance.

---
## Methods
### `asGuest()` → `EventBadgeTestData`

Sets the event badge type and class in accordance with the guest badge type.

#### Return

**Type**

EventBadgeTestData

**Description**

An updated instance of EventBadgeTestData.

### `asRegistrant()` → `EventBadgeTestData`

Sets the event badge type and class in accordance with the registrant badge type.

#### Return

**Type**

EventBadgeTestData

**Description**

An updated instance of EventBadgeTestData.

### `create()` → `EventBadge__c`

Builds the event badge object.

#### Return

**Type**

EventBadge__c

**Description**

The created EventBadge__c object.

### `forRegistration(Id registrationId)` → `EventBadgeTestData`

Sets the Id of the registration this badge should be associated with.

#### Parameters
|Param|Description|
|-----|-----------|
|`registrationId` |  The Id of the registration this badge should be associated with. |

#### Return

**Type**

EventBadgeTestData

**Description**

An updated EventBadgeTestData instance.

### `insertRecord()` → `EventBadge__c`

Disables trigger validation on insert which prevents EventBadge__c record insertion, then inserts.

#### Return

**Type**

EventBadge__c

**Description**

The inserted EventBadge__c object.

### `newInstance()` → `EventBadgeTestData`

Method for getting a new instance of EventBadgeTestData.

#### Return

**Type**

EventBadgeTestData

**Description**

A new instance of EventBadgeTestData.

### `with(Schema.SObjectField field, Object value)` → `EventBadgeTestData`

Dynamically sets the Schema.SObjectField noted by field to value for event badges being built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The Schema.SObjectField to map the value to and cannot be null. |
|`value` |  The value for the field and can be set to null. |

#### Return

**Type**

EventBadgeTestData

**Description**

The updated instance of EventBadgeTestData.

### `withFirstName(String firstName)` → `EventBadgeTestData`

Sets the FirstName__c field of the event badge being created.

#### Parameters
|Param|Description|
|-----|-----------|
|`firstName` |  The name string to use. |

#### Return

**Type**

EventBadgeTestData

**Description**

An updated EventBadgeTestData instance.

### `withInfoFromAccount(Account sourceAccount)` → `EventBadgeTestData`

s Creates an event badge for the default event with the specified Account record.

#### Parameters
|Param|Description|
|-----|-----------|
|`sourceAccount` |  The account to copy data to the event badge being created. |

#### Return

**Type**

EventBadgeTestData

**Description**

An updated instance of EventBadgeTestData.

### `withLastName(String lastName)` → `EventBadgeTestData`

Sets the LastName__c field of the event badge being created.

#### Parameters
|Param|Description|
|-----|-----------|
|`lastName` |  The name string to use. |

#### Return

**Type**

EventBadgeTestData

**Description**

An updated EventBadgeTestData instance.

---
