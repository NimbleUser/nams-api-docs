# DeletePaymentProfileRequest class

Request class to interact with the PaymentStorageService and delete Payment Profiles.

---
## Constructors
### `DeletePaymentProfileRequest(Id externalPaymentProfileId, String externalId, Id entityId)`

Creates a DeletePaymentProfileRequest used to delete Payment Profiles.
#### Parameters
|Param|Description|
|-----|-----------|
|`externalPaymentProfileId` |  External Payment Profile record Id in the system. |
|`externalId` |  The string Id that represents the record in a external system. |
|`entityId` |  The Entity Id tied to the PaymentGateway that will be used to create the Payment Profile. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params are null. |

---
