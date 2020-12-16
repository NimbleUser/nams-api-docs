# MDT_Query class

A basic wrapper for reading both Query__c and SOQLQuery__mdt records. Intended to only write to SOQLQuery__mdt records.

---
## Properties

### `ExternalId` → `String`

The external Id for the query.

### `OrderBy` → `String`

The order by for the query.

### `RecordLimit` → `Integer`

The record limit for the query.

### `SObjectName` → `String`

The SObject name for the query.

### `SelectFields` → `String`

The fields to select for the query.

### `SharingMode` → `String`

The sharing mode for the query.

### `WhereClause` → `String`

The where clause for the query.

---
## Methods
### `compile()` → `String`

Compiles the query based upon property values set in this instance.

#### Return

**Type**

String

**Description**

A compiled SOQL query String.

---
