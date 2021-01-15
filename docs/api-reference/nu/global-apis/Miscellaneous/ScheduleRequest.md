# ScheduleRequest class

Represents a deserializable JSON request from the Lightning UI to generate a schedule / lines.

---
## Constructors
### `ScheduleRequest()`

A public constructor because we need to be able to deserialize JSON to concrete instances of this class.
---
## Properties

### `ExternalPaymentProfile` → `Id`

The external payment profile.

### `Frequency` → `String`

The frequency for installments.

### `Occurs` → `String`

How installments are calculated.

### `PaymentAmount` → `Decimal`

The total payment amount.

### `RecordId` → `Id`

The record Id associated with the schedule.

### `ScheduleEndDate` → `String`

The schedule end date.

### `ScheduleStartDate` → `String`

The schedule start date.

### `ScheduleType` → `String`

The type of schedule.

### `TotalOccurrences` → `Integer`

If installments are calculated by a number, how many total occurrences there are.

---
## Methods
### `validate()` → `OperationResult`

Validates all the properties in this instance.

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating the success or failure.

---
