# EventAnswer class

An SObjectWrapper representing an EventAnswer__c record related to a Registration2__c record.

---
## Constructors
### `EventAnswer()`

A no arg constructor providing global access.
---
## Properties

### `AnswerText` → `String`

The answer for a given question.

### `ExternalId` → `String`

An external Id for an external answer.

### `QuestionId` → `Id`

The Id of a related EventQuestion__c record.

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
