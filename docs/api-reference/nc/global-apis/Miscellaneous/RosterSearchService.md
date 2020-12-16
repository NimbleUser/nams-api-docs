# RosterSearchService class

Service class to handle searching rosters.

---
## Properties

### `Instance` → `RosterSearchService`

Gets an instance of RosterSearchService. @return RosterSearchService instance.

---
## Methods
### `performSearch(RosterSearchRequest request)` → `RosterSearchResponse`

Performs a roster search with the specified search term and account Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A RosterSearchRequest containing the search term and account Id. |

#### Return

**Type**

RosterSearchResponse

**Description**

A RosterSearchResponse containing the account and affiliation Ids that match the search criteria.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

---
