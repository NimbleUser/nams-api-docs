# GenerateDatesRequest class

Request class for interacting with the IGenerateDates interface.

---
## Properties

### `DateLimit` → `Date`

The upper date limit.

### `FrequencyWrapper` → `Frequency`

The Frequency wrapper to generate dates based on.

### `IncludeStartDate` → `Boolean`

Whether or not to include the start date in the response.

### `StartDate` → `Date`

The start date for generating.

### `TotalOccurrences` → `Integer`

The total number of occurrences to generate.

---
## Methods
### `newInstance(Frequency frequencyWrapper)` → `GenerateDatesRequest`

Creates a new GenerateDatesRequest for the specified Frequency instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`frequencyWrapper` |  The Frequency instance to use in this request. |

#### Return

**Type**

GenerateDatesRequest

**Description**

A GenerateDatesRequest.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if frequencyWrapper is null. |

### `withDateLimit(Date dateLimit)` → `GenerateDatesRequest`

Sets the upper date limit for this generator.

#### Parameters
|Param|Description|
|-----|-----------|
|`dateLimit` |  The date limit to set. |

#### Return

**Type**

GenerateDatesRequest

**Description**

Updated instance.

### `withIncludeStartDate(Boolean includeStartDate)` → `GenerateDatesRequest`

Sets the include start date for this instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`includeStartDate` |  The include start date to set. |

#### Return

**Type**

GenerateDatesRequest

**Description**

Updated instance.

### `withStartDate(Date startDate)` → `GenerateDatesRequest`

Sets the start date for this instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`startDate` |  The start date to set. |

#### Return

**Type**

GenerateDatesRequest

**Description**

Updated instance.

### `withTotalOccurrences(Integer totalOccurrences)` → `GenerateDatesRequest`

Sets the total occurrences for which to generate dates for.

#### Parameters
|Param|Description|
|-----|-----------|
|`totalOccurrences` |  The total occurrences to set. |

#### Return

**Type**

GenerateDatesRequest

**Description**

Updated instance.

---
