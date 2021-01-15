# RecurringEligibilityService class

Get the Recurring Eligibility for products of Order/Cart Items and constructs list of Recurring Eligible Products.

---
## Properties

### `Instance` → `RecurringEligibilityService`

A static singleton access for retrieving a shared instance of RecurringEligibilityService. @return An instance of RecurringEligibilityService.

---
## Methods
### `getEligibilities(List<RecurringEligibilityServiceRequest> requests)` → `List<RecurringEligibilityServiceResponse>`

Retrieves the Recurring Eligibility and list of Recurring Products of OrderItem or CartItem associated with the supplied OrderItem Id or CartItem Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  which contains the Record Id (Item Id or Cart Id) we want to process. |

#### Return

**Type**

List<RecurringEligibilityServiceResponse>

**Description**

response which contains list of Recurring Eligible Products and Recurring Eligibility flag for given

### `getEligibility(RecurringEligibilityServiceRequest request)` → `RecurringEligibilityServiceResponse`

Retrieves the Recurring Eligibility and list of Recurring Products of OrderItem or CartItem associated with the supplied OrderItem Id or CartItem Id.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  which contains the Record Id (Item Id or Cart Id) we want to process. |

#### Return

**Type**

RecurringEligibilityServiceResponse

**Description**

response which contains list of Recurring Eligible Products and Recurring Eligibility flag for given

---
