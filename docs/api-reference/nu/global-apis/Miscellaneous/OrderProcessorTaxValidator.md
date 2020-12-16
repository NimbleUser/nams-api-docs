# OrderProcessorTaxValidator class

In charge of validating that taxes have been correctly calculated when Orders are being processed.

---
## Methods
### `newInstance(Order orderInstance)` → `OrderProcessorTaxValidator`

Returns a new OrderProcessorTaxValidator instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The Order instance for which taxes will be validated. |

#### Return

**Type**

OrderProcessorTaxValidator

**Description**

New OrderProcessorTaxValidator instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderInstance is null. |

### `newInstance(Order orderInstance, String existingIdentifier)` → `OrderProcessorTaxValidator`

Returns a new OrderProcessorTaxValidator instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`orderInstance` |  The Order instance for which taxes will be validated. |
|`existingIdentifier` |  The identifier of a past calculation that will be updated. |

#### Return

**Type**

OrderProcessorTaxValidator

**Description**

New OrderProcessorTaxValidator instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if orderInstance is null. |

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
