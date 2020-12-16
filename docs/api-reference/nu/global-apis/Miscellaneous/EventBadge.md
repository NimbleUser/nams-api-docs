# EventBadge class

An SObjectWrapper representing an EventBadge__c record related to a Registration2__c record.

---
## Constructors
### `EventBadge()`

A no arg constructor providing global access.
---
## Properties

### `BadgeClass` → `String`

The class for this badge.

### `BadgeType` → `String`

The type for this badge.

### `CasualName` → `String`

The casual name for this badge.

### `City` → `String`

The city for this badge.

### `Company` → `String`

The company for this badge.

### `Country` → `String`

The Country for this badge.

### `Designation` → `String`

The designation for this badge.

### `ExternalId` → `String`

The external Id for this badge.

### `FirstName` → `String`

The first name for this badge.

### `LastName` → `String`

The last name for this badge.

### `MiddleName` → `String`

The middle name for this badge.

### `OrderItemLineId` → `Id`

The order item line Id for this badge.

### `ProfessionalTitle` → `String`

The professional title for this badge.

### `Salutation` → `String`

The salutation for this badge.

### `State` → `String`

The state for this badge.

### `Suffix` → `String`

The suffix for this badge.

---
## Methods
### `addValueToField(Schema.SObjectField field, Object value)` → `void`

Assign a value to an Schema.SObjectField to assign it to the SObject this wrapper represents before it is built.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  Schema.SObjectField to assign the value to. |
|`value` |  The value that will be assigned to the field. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if field is null. |

---
