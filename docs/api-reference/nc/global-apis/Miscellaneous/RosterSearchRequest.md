# RosterSearchRequest class

Request class for interacting with the RosterSearchService.

---
## Constructors
### `RosterSearchRequest(String searchTerm, Id accountId)`

Constructs a new instance of RosterSearchRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`searchTerm` |  The search term to search by. |
|`accountId` |  The account that is performing the search. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Properties

### `AccountId` → `Id`

The account that is performing the search.

### `SearchTerm` → `String`

The search term to search by.

---
