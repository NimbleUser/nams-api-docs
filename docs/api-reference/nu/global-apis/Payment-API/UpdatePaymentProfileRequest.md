# UpdatePaymentProfileRequest class

Request class to interact with the PaymentStorageService and update Payment Profiles.

---
## Constructors
### `UpdatePaymentProfileRequest(Id externalPaymentProfileId, String externalId, Id entityId, PaymentDetail paymentInfo, Boolean isDefault)`

Constructs a UpdatePaymentProfileRequest used to update Payment Profiles.
#### Parameters
|Param|Description|
|-----|-----------|
|`externalPaymentProfileId` |  The existing Payment Profile Id in the system. |
|`externalId` |  The string Id that represents the record in a external system. |
|`entityId` |  The Entity Id tied to the PaymentGateway that will be used to create the Payment Profile. |
|`paymentInfo` |  Payment Information for the Payment Profile. |
|`isDefault` |  Indicates if this is the default stored payment profile. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params are null. |

---
