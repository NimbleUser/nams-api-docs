# AutoCompleteSearchComponentController class

Provide the findRecords remote action for the AutoComplete component.

---
## Constructors
### `AutoCompleteSearchComponentController()`

Parameterless constructor for global class.
---
## Methods
### `findRecords(String objectName, String queryString, Integer recordLimit,String autoCompleteSearchResultImplementation, String additionalFields,String additionalData)` → `List<SObject>`

Retrives records to be displayed on the AutoComplete component based on the user's current query.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectName` |  The name of the SObject to query records from. |
|`queryString` |  The query typed by the user. |
|`recordLimit` |  The maximum amount of records that should be retrieved. |
|`autoCompleteSearchResultImplementation` |  Custom IAutoCompleteSearchResult implementation that |
|`additionalFields` |  Comma separated string with additional fields to query for. |
|`additionalData` |  Comma separated string with additional key value paired data that will be passed to |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if objectName, queryString or recordLimit is null. |
|`NUException` |  if an invalid IAutoCompleteSearchResult is defined. |

---
