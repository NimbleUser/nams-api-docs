# ReconciliationService class

Provides methods for reconciling various aspects of Payment records.

---
## Properties

### `Instance` → `ReconciliationService`

A singleton static for accessing all methods within ReconciliationService.

---
## Methods
### `generateReconciliationIdentifier(Id entityId, String source, Date transactionDate)` → `String`

Generates a unique identifier derived from parameters.

#### Parameters
|Param|Description|
|-----|-----------|
|`entityId` |  The id of Entity a batch is belongs to. |
|`source` |  The Batches source value. |
|`transactionDate` |  The transaction date of the batch. |

#### Return

**Type**

String

**Description**

String representing the unique identifier.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the arguments passed is null. |

---
