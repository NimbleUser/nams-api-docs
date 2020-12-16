# RecognitionCalculatorRequest class

Request class for interacting with the IRecognitionCalculator interface.

---
## Properties

### `Amount` → `Decimal`

The amount.

### `IsLastRecognition` → `Boolean`

Whether or not this is the last recognition.

### `LengthToRecognize` → `Integer`

The length to recognize.

### `RecognitionDate` → `Date`

The recognition date.

### `RecognizedAmount` → `Decimal`

The recognized amount.

### `RemainingRecognitionCount` → `Integer`

The remaining recognition count.

### `Term` → `Integer`

The term.

---
## Methods
### `isLastRecognition()` → `RecognitionCalculatorRequest`

Sets is last recognition to true.

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `newInstance()` → `RecognitionCalculatorRequest`

Constructs a RecognitionCalculatorRequest.

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

An instance of RecognitionCalculatorRequest.

### `withAmount(Decimal amount)` → `RecognitionCalculatorRequest`

Sets the amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`amount` |  The amount to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `withLengthToRecognize(Integer lengthToRecognize)` → `RecognitionCalculatorRequest`

Sets the length to recognize.

#### Parameters
|Param|Description|
|-----|-----------|
|`lengthToRecognize` |  The length to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `withRecognitionDate(Date recognitionDate)` → `RecognitionCalculatorRequest`

Sets the recognition date.

#### Parameters
|Param|Description|
|-----|-----------|
|`recognitionDate` |  The date to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `withRecognizedAmount(Decimal recognizedAmount)` → `RecognitionCalculatorRequest`

Sets the recognized amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`amount` |  The amount to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `withRemainingRecognitionCount(Integer remainingRecognitionCount)` → `RecognitionCalculatorRequest`

Sets the remaining recognition count.

#### Parameters
|Param|Description|
|-----|-----------|
|`remainingRecognitionCount` |  The amount to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

### `withTerm(Integer term)` → `RecognitionCalculatorRequest`

Sets the term.

#### Parameters
|Param|Description|
|-----|-----------|
|`term` |  The term to set. |

#### Return

**Type**

RecognitionCalculatorRequest

**Description**

Updated instance.

---
