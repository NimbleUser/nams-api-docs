# DupeServiceResponse class

The response given from methods called on the DupeService class.

---
## Constructors
### `DupeServiceResponse(List<SObject> records)`

Construct a Response.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The list of duplicate records found that match the dupe check; |

### `DupeServiceResponse(List<SObject> records, String alertMessageParam)`

Construct a Response with a given list of records and optional error message.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The list of duplicate records found that match the dupe check; |
|`alertMessageParam` |  Any alert message related to the duplicate search. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if records is null. |

---
## Properties

### `AlertMessage` → `String`

Any alert message related to the list of duplicates. This could be a message provided by Salesforce's duplicate checking, or something else. Used in Community Hub to determine whether or not the end user should be allowed to create an account despite the existence of duplicates.

### `Records` → `List<SObject>`

The records returned that match the dupe check.

---
## Methods
### `hasDuplicates()` → `Boolean`

Check whether there were duplicates found.

#### Return

**Type**

Boolean

**Description**

True if there were duplicates found, false otherwise.

---
