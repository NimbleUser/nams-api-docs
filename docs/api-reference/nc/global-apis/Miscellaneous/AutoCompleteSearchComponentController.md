# AutoCompleteSearchComponentController class

Controls the AutoCompleteSearch component, deciding which implementation of IAutoCompleteSearchResult to make use of.

---
## Methods
### `findRecords(String objectName,String primaryFieldArgument,String query,String additionalFields,String additionalConditionals,Integer resultsLimit)` → `List<SObject>`

Find records by type and a provided search term against the name field and all provided additional fields. Takes additional conditionals as well for more specific searches.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectName` |  The name of the object to search for. |
|`primaryFieldArgument` |  The primary field to display, search and order by. |
|`query` |  The text to search for. |
|`additionalFields` |  Any additional fields to query against. |
|`additionalConditionals` |  Any additional conditionals to use in the query. |
|`resultsLimit` |  The maximum number of results we want to display to the user. |

#### Return

**Type**

List<SObject>

**Description**

A list of matching records as SObjects.

### `findRecordsWithSearchLength(String objectName,String primaryFieldArgument,String query,String additionalFields,String additionalConditionals,Integer resultsLimit,Integer minimumSearchLength)` → `List<SObject>`

Find records by type and a provided search term against the name field and all provided additional fields. Takes additional conditionals as well for more specific searches.

#### Parameters
|Param|Description|
|-----|-----------|
|`objectName` |  The name of the object to search for. |
|`primaryFieldArgument` |  The primary field to display, search and order by. |
|`query` |  The text to search for. |
|`additionalFields` |  Any additional fields to query against. |
|`additionalConditionals` |  Any additional conditionals to use in the query. |
|`resultsLimit` |  The maximum number of results we want to display to the user. |
|`minimumSearchLength` |  The minimum number of characters needed to input for auto complete search to function. |

#### Return

**Type**

List<SObject>

**Description**

A list of matching records as SObjects.

### `getPrimaryField(Id recordId, String objectName, String primaryField)` → `String`

Retrieves a specified field of the provided record Id and type. Caches the record so the autocomplete field doesn't have to requery all the time.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of the record to select. |
|`objectName` |  The name of the object. |
|`primaryField` |  The field we are concerned with. |

#### Return

**Type**

String

**Description**

The name of the record as a string.

---
