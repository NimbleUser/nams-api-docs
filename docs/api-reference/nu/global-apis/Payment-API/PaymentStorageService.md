# PaymentStorageService class

This class is used to do CRUD operations related to External Payment Profiles.

---
## Properties

### `Instance` → `PaymentStorageService`

Singleton instance for the Payment Storage Service. @returns A new PaymentStorageService instance

---
## Methods
### `addPaymentProfile(PaymentStorageRequest requestParam)` → `PaymentStorageResponse`

Adds a new Payment Profile based on the passed in request.

#### Parameters
|Param|Description|
|-----|-----------|
|`requestParam` |  PaymentStorageRequest that will be used to create the Payment Profile. |

#### Return

**Type**

PaymentStorageResponse

**Description**

PaymentStorageResponse With information about the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requestParam is null. |

### `deletePaymentProfile(PaymentStorageRequest requestParam)` → `PaymentStorageResponse`

Deletes a Payment Profile based on the passed in request.

#### Parameters
|Param|Description|
|-----|-----------|
|`requestParam` |  PaymentStorageRequest that will be used to delete the Payment Profile. |

#### Return

**Type**

PaymentStorageResponse

**Description**

PaymentStorageResponse With information about the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requestParam is null. |

### `updatePaymentProfile(PaymentStorageRequest requestParam)` → `PaymentStorageResponse`

Updates a Payment Profile based on the passed in request.

#### Parameters
|Param|Description|
|-----|-----------|
|`requestParam` |  PaymentStorageRequest that will be used to update the Payment Profile. |

#### Return

**Type**

PaymentStorageResponse

**Description**

PaymentStorageResponse With information about the operation.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the requestParam is null. |

---
