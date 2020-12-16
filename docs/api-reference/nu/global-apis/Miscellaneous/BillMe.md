# BillMe class

The BillMeService external logic class. This provides the getBillMeServiceStatus and processBillMe for the Bill Me Payment Option. Custom implementations of this class will extend and override the functionality here.

---
## Constructors
### `BillMe()`

The parameterless global constructor.
---
## Methods
### `disableBillMe(List<BillMeService.Request> requests)` → `List<BillMeService.Response>`

Sets the cart and its cart items Bill Me field to false.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  A list of BillMeService.Request objects wrapping the provided Cart Id and |

#### Return

**Type**

List<BillMeService.Response>

**Description**

A list of BillMeService.Response objects that will contain the OperationResult of

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requests parameter is null. |

### `enableBillMe(List<BillMeService.Request> requests)` → `List<BillMeService.Response>`

Sets the cart and its cart items Bill Me field to true.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  A list of BillMeService.Request objects wrapping the provided Cart Id and |

#### Return

**Type**

List<BillMeService.Response>

**Description**

A list of BillMeService.Response objects that will contain the OperationResult of

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requests parameter is null. |

### `getBillMeServiceStatus(List<BillMeService.Request> requests)` → `List<Status>`

Get the status of a BillMeService.Request. A list of requests are provided and then a list of statuses will be supplied in return with the original request inside. This is overridable to allow for custom logic.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  A list of BillMeService.Request objects wrapping the provided Cart Id and |

#### Return

**Type**

List<Status>

**Description**

A list of Status objects that will contain the original request and methods to

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requests parameter is null. |

### `processBillMe(List<BillMeService.Request> requests)` → `List<BillMeService.Response>`

Process Bill Me Service requests.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  A list of BillMeService.Request objects wrapping the provided Cart Id and |

#### Return

**Type**

List<BillMeService.Response>

**Description**

A list of BillMeService.Response objects that will contain the OperationResult of

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requests parameter is null. |

### `shouldProcessRequest(Status status)` → `Boolean`

Determine whether the processBillMe method should process the request or not based on the generated status of the request.

#### Parameters
|Param|Description|
|-----|-----------|
|`status` |  The generated Status object of the request. |

#### Return

**Type**

Boolean

**Description**

True if getIsBillMeEligible and getIsBillMeAddressProvided return true, else false.

---
## Inner Classes

### BillMe.Status class

The Status of a given request will provide details such as whether or not it is Bill Me Eligible, and if the Bill Me Address has been provided on the provided Account. This is overridable.

---
#### Constructors
##### `Status(BillMeService.Request request)`

The BillMe.Status constructor.
###### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The prepared request for the BillMeService. |

###### Throws
|Exception|Description|
|---------|-----------|
|`An` |  ArgumentNullException if the request param is null. |

---
#### Properties

##### `Request` → `BillMeService.`

The original request.

---
#### Methods
##### `getIsBillMeAddressProvided()` → `Boolean`

Get whether all of the required fields defined in the BillMeAddress fieldset are populated or not.

###### Return

**Type**

Boolean

**Description**

True if all of the required fields in the BillMeAddress fieldset fields are

##### `getIsBillMeEligible()` → `Boolean`

Get whether the given cart is Bill Me Eligible. A cart is Bill Me Eligible if the provided Account is trusted, the Entity on the Cart is Bill Me Enabled, and all items are Bill Me Enabled.

###### Return

**Type**

Boolean

**Description**

True if the Provided Account is trusted, the Entity on the

##### `getMessage()` → `String`

Get the NotAllItemsBillMeEnabled label if the Account is trusted, the Entity is Bill Me Enabled, and there are some but not all items in the cart that are Bill Me Enabled.

###### Return

**Type**

String

**Description**

The NotAllItemsBillMeEnabled label is returned if the account is trusted,

---
