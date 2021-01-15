# IRecognitionCalculator interface

Interface that is used to calculate recognition amounts.

---
## Methods
### `calculateDifferenceInExpectedAmount(RecognitionCalculatorRequest request)` → `Decimal`

Gets the difference between the expected amount (calculated) and the recognized amount on the deferred schedule.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  Information to calculate the difference. |

#### Return

**Type**

Decimal

**Description**

Decimal amount that is the difference in the recognized amount and what is expected.

### `calculateRecognitionAmount(RecognitionCalculatorRequest request)` → `Decimal`

Calculates the recognition amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  Information to calculate the amount. |

#### Return

**Type**

Decimal

**Description**

Decimal of the recognition amount.

---
