# QueryServiceRequest2 class

Represents a request to QueryService.

---
## Constructors
### `QueryServiceRequest2(Id recordIdParam)`

Constructs a request with the specified record Id.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordIdParam` |  The Id of the record to retrieve. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordIdParam is null. |

### `QueryServiceRequest2(String recordNameParam)`

Constructs a request with the specified record name.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordNameParam` |  The name of the record to retrieve. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordNameParam is null. |

---
## Properties

### `RecordId` → `String`

The Id of the record to retrieve.

### `RecordName` → `String`

The name of the record to retrieve.

---
