# RecurringEligibilityServiceRequest class

Used when calling out to a Recurring Eligibility Service. Contains necessary information for sending an attempt to check Recurring eligibility of products for lines of Order Items or Cart Item.

---
## Constructors
### `RecurringEligibilityServiceRequest(Id recordIdToProcess)`

Constructs a RecurringEligibilityServiceRequest by Record Id.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordIdToProcess` |  It should be a CartItem__c or an OrderItem__c Id. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if RecordIdToProcess is null. |

---
## Properties

### `CartItemId` → `Id`

If set, represents the type of Cart Item Id which was used to populate this request.

### `OrderItemId` → `Id`

If set, represents the Order Item Id which was used to populate this request.

---
