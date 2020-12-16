# AffiliationService class

A home for DML operations involving Affiliation records.

---
## Methods
### `addCompanyAsPrimaryAffiliate(List<Request> requests)` → `List<Response>`

Creates a primary affiliation between a company and an individual where the 	        individual is not a manager or primary contact of the company.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  The list of AffiliationService.Request to use to for the operation. |

#### Return

**Type**

List<Response>

**Description**

List of AffiliationService.Response with the results of the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `getStatus(List<Request> requests)` → `List<Status>`

Gets a list of Status objects for the passed requests.

#### Parameters
|Param|Description|
|-----|-----------|
|`companyId` |  The company's account Id. |
|`accountId` |  The Id of the account to associate with the provided company. |
|`companyId` |  The company's account Id. |
|`accountId` |  The Id of the account to associate with the provided company. |
|`accountId` |  The account to retrieve affiliations for. |
|`requests` |  List of AffiliationService.Request to use to generate the status objects. |

#### Return

**Type**

List<Status>

**Description**

List of Status objects.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if accountId is null. |
|`ArgumentNullException` |  if the request is null. |

---
## Inner Classes

### AffiliationService.Request class

A request wrapper for the AffiliationService.

---
#### Constructors
##### `Request(Id companyId, Id accountId)`

Constructs an AffiliationService.Request object based on a company and the account we want to affiliate.
###### Parameters
|Param|Description|
|-----|-----------|
|`companyId` |  The company we want to affiliate to. |
|`accountId` |  The account for the individual we want to affiliate. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters is null. |

---
#### Properties

##### `AccountId` → `Id`

Account Id of the individual.

##### `CompanyId` → `Id`

Account Id for the company account.

---
### AffiliationService.Response class

The response returned when interacting with the AffiliationService.

---
#### Constructors
##### `Response(Request request)`

Constructs an AffiliationService.Response with a successful result by default.
###### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The original request. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request parameter is null. |

---
#### Properties

##### `Request` → `global`

The original request.

##### `Result` → `Operation`

The result of the given requested operation.

---
### AffiliationService.Status class

The Status of a given request that provides details on whether or not an account can affiliate to a company account and a message describing why.

---
#### Constructors
##### `Status(Request request, Account company, Account account)`

Constructs a status object based on an account to affiliate and the company account we want to affiliate to.
###### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The original request object. |
|`company` |  The company we want to associate to the account |
|`account` |  The account we want to associate to the company. |

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the parameters are null. |

---
#### Properties

##### `Request` → `global`

The original request.

---
#### Methods
##### `getCanAffiliate()` → `Boolean`

Identifies if the account can associate with the company, assumming the account is not already affiliated with the company. Returns true if the PersonEmail field for the account is populated and the account's email domain matches one of the valid email domains for the company.

###### Return

**Type**

Boolean

**Description**

True if the account can associate with the company, false otherwise.

##### `getIsEligibleToAffiliate()` → `Boolean`

Identifies if the account can associate with the company. 1.) Checks to see if they are affiliated. If they are, returns false. 2.) If valid email domains is enabled for the company, checks if the PersonEmail field for the account is populated and the account's email domain matches one of the valid email domains for the company.

###### Return

**Type**

Boolean

**Description**

True if the account can associate with the company, false otherwise.

##### `getMessage()` → `String`

Gets the message associated with this status.

###### Return

**Type**

String

**Description**

Label.CanNotAffiliateWithCompany if the user can't affiliate with the company,

---
