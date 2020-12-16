# AutoCompleteSearchRequest class

A request class with data that will be passed to an IAutoCompleteSearchResult implementation.

---
## Constructors
### `AutoCompleteSearchRequest()`

An empty constructor for building a fresh AutoCompleteSearchRequest.
---
## Properties

### `AdditionalConditionals` → `List<String>`

A list of additional conditionals to filter against when building the search query.

### `FieldsToSelect` → `Set<String>`

All the fields to select when querying for matches.

### `MaximumResults` → `Integer`

The maximum number of results to present to the user.

### `MinimumSearchLength` → `Integer`

The minimum number of characters a user must type before a search is performed.

### `ObjectType` → `Schema.S`

The object type the requested configuration should refer to.

### `PrimaryField` → `String`

The string name of the field to query on, sort by and display to the user.

### `SearchTerm` → `String`

The string value being searched for.

---
