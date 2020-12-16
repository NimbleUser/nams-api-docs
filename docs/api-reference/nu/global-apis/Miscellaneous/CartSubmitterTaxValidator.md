# CartSubmitterTaxValidator class

In charge of validating that taxes have been correctly calculated during cart submission.

---
## Methods
### `newInstance(Id cartId)` → `CartSubmitterTaxValidator`

Returns a new CartSubmitterTaxValidator instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`billTo` |  The Account being billed |
|`cartItemsToSubmit` |  The list of CartItem__c records being submitted, with their taxes already calculated. |
|`existingIdentifier` |  The identifier of a past calculation that will be updated. |
|`cartId` |  The id of the Cart to validate. |

#### Return

**Type**

CartSubmitterTaxValidator

**Description**

New CartSubmitterTaxValidator instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if billTo or cartItemsToSubmit are null. |
|`ArgumentNullException` |  if cartId is null. |
|`InvalidOperationException` |  if cart contains no cart items. |

### `validate()` → `TaxValidatorResult`

Validates that taxes have been correctly calculated during an order submission.

#### Return

**Type**

TaxValidatorResult

**Description**

TaxValidatorResult with the result of the validation.

### `validateAndCommit()` → `TaxValidatorResult`

Validates that taxes have been correctly calculated during an order submission. The taxes will be committed to the external tax system.

#### Return

**Type**

TaxValidatorResult

**Description**

TaxValidatorResult with the result of the validation.

---
