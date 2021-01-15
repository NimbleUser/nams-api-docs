# QueryService class

A service for interacting with Query__c records.

---
## Properties

### `Instance` → `QueryService`

Maintains an instance of the QueryService, creating one as needed.

---
## Methods
### `get(QueryService.Request request)` → `String`

Deprecated. Please transition to get(NU.QueryServiceRequest2 request) instead.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The query request. |

#### Return

**Type**

String

**Description**

The query itself as a string.

### `get(QueryServiceRequest2 request)` → `String`

Retrieves a compiled query by request

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The query request. |

#### Return

**Type**

String

**Description**

The compiled query as a string.

### `getWrapper(QueryServiceRequest2 request)` → `MDT_Query`

Retrieves a query wrapper by request

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The query request. |

#### Return

**Type**

MDT_Query

**Description**

The retrieved query wrapper.

---
## Inner Classes

### QueryService.Request class

Deprecated. Please transition to NU.QueryServiceRequest2 instead.

---
#### Constructors
##### `Request(Id queryIdToRetrieve)`

Deprecated. Please transition to NU.QueryServiceRequest2 instead.
###### Parameters
|Param|Description|
|-----|-----------|
|`queryIdToRetrieve` |  Id of the Query__c to retrieve. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if queryIdToRetrieve is null. |

---
#### Properties

##### `QueryId` → `Id`

The Id of the Query__c record to retrieve.

---
