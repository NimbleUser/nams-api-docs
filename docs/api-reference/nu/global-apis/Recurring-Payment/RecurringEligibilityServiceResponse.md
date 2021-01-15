# RecurringEligibilityServiceResponse class

Used when generating responses from Recurring Eligibility Service. Contains necessary information for determining the Recurring Eligibility of product. And list of Recurring Eligible products.

---
## Constructors
### `RecurringEligibilityServiceResponse()`

Default Constructor to set Eligible Products.
---
## Enums
### Eligibility


Enum to check Eligibility of Product. RECUR: If Product is eligible to Recur. NOTHING_TO_RECUR: If Product is not eligible to Recur.

---
## Properties

### `EligibleProducts` → `List<Product>`

List of Recurring Eligible Products.

### `RecordId` → `Id`

Record Id of the Recurring Eligibility Response to used.

### `RecurEligibility` → `Eligibility`

Recurring Eligibility ENUM to send the Recurring Eligibility.

---
