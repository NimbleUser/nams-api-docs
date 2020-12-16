# Registration class

An SObjectWrapper representing a Registration2__c record related to an OrderItem__c record.

---
## Constructors
### `Registration()`

An SObjectWrapper Instantiates a wrapper, setting the necessary HistoryData fields to form a relationship between the Registration2__c record we are ultimately creating and its associated OrderItem__c, OrderItemLine__c records.
---
## Properties

### `Answers` → `List<EventAnswer>`

A list of EventAnswer wrappers related to this registration. Inserted looking up to this registration.

### `Badges` → `List<EventBadge>`

A list of EventBadge wrappers related to this registration. Inserted looking up to this registration.

### `EventId` → `Id`

The event Id for this registration.

### `ExternalAmount` → `Decimal`

The external amount for this registration.

### `ExternalId` → `String`

The external Id for this registration.

### `Passcode` → `String`

The passcode for this registration.

### `RegistrantEmail` → `String`

The registrant email for this registration.

### `RegistrationType` → `String`

The type for this registration.

### `Status` → `String`

The status for this registration.

---
