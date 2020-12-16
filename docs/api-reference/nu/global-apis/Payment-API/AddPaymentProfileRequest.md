# AddPaymentProfileRequest class

Request class to interact with the PaymentStorageService and create new Payment Profiles.

---
## Constructors
### `AddPaymentProfileRequest(Id accountId, Id externalProfileId, String externalId, Id entityId,PaymentDetail paymentInfo, Boolean isDefault)`

Creates an AddPaymentProfileRequest used to add new Payment Profiles.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Account Id for which the Payment Profile will be created for. |
|`externalProfileId` |  The parent ExternalProfile__c Id for which the |
|`externalId` |  The string Id that represents the record in a external system. |
|`entityId` |  The Entity Id tied to the PaymentGateway that will be used to create the Payment Profile. |
|`paymentInfo` |  PaymentDetail with the payment information. |
|`isDefault` |  Indicates if this should be the default stored payment profile. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params are null. |

### `AddPaymentProfileRequest(Id accountId, Id entityId, PaymentDetail paymentInfo, Boolean isDefault)`

Creates an AddPaymentProfileRequest used to add new Payment Profiles.
#### Parameters
|Param|Description|
|-----|-----------|
|`accountId` |  The Account Id for which the Payment Profile will be created for. |
|`entityId` |  The Entity Id tied to the PaymentGateway that will be used to create the Payment Profile. |
|`paymentInfo` |  PaymentDetail with the payment information. |
|`isDefault` |  Indicates if this should be the default stored payment profile. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params are null. |

---
