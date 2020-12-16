# TermService class

Service for calculating the start dates, end dates, and proration rules of products with terms.

---
## Properties

### `Instance` → `TermService`

Maintains an instance of the TermService class.

---
## Methods
### `calculateTerms(TermServiceRequest request)` → `TermServiceResponse`

Calculates terms for a single provided requests.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The request for term calculation. Specifies the product and account the terms will apply to. |

#### Return

**Type**

TermServiceResponse

**Description**

A single responses. See TermServiceResponse for format.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

### `calculateTerms(List<TermServiceRequest> requests)` → `List<TermServiceResponse>`

Calculates terms for provided requests.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The requests for term calculation. Specifies the product and account the terms will apply to. |

#### Return

**Type**

List<TermServiceResponse>

**Description**

A list of responses. See TermServiceResponse for format.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
