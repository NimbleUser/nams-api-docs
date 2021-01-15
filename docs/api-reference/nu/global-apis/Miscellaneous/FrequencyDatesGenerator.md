# FrequencyDatesGenerator class

Class in charge of generating Dates based on a Frequency.

---
## Methods
### `generate()` → `List<Date>`

Generates a list of Dates based on the frequency on this instance.

#### Return

**Type**

List<Date>

**Description**

Generated list of dates.

### `generateLastDate()` → `Date`

Generates a list of Dates based on the frequency on this instance, and returns the last one.

#### Return

**Type**

Date

**Description**

Last date that was generated.

### `newInstance(Frequency frequencyWrapper)` → `FrequencyDatesGenerator`

Returns a new FrequencyDatesGenerator instance.

#### Return

**Type**

FrequencyDatesGenerator

**Description**

New FrequencyDatesGenerator instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if frequencyWrapper is null. |

### `newInstance(Frequency__c frequencyRecord)` → `FrequencyDatesGenerator`

Returns a new FrequencyDatesGenerator instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`frequencyRecord` |  The Frequency__c record to wrap and to generate dates based on. |

#### Return

**Type**

FrequencyDatesGenerator

**Description**

New FrequencyDatesGenerator instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if frequencyRecord is null. |

### `skipStartDate()` → `FrequencyDatesGenerator`

The start date provided will not be included in the list of generated dates, and will only be used as a reference for the other dates that will be generated.

#### Return

**Type**

FrequencyDatesGenerator

**Description**

Updated instance.

### `withDateLimit(Date dateLimit)` → `FrequencyDatesGenerator`

Sets the upper date limit for this generator. Notice that this date will not be respected if the total occurrences value was set.

#### Parameters
|Param|Description|
|-----|-----------|
|`dateLimit` |  The date limit to set. |

#### Return

**Type**

FrequencyDatesGenerator

**Description**

Updated instance.

### `withStartDate(Date startDate)` → `FrequencyDatesGenerator`

Sets the start date for this instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`startDate` |  The start date to set. |

#### Return

**Type**

FrequencyDatesGenerator

**Description**

Updated instance.

### `withTotalOccurrences(Integer totalOccurrences)` → `FrequencyDatesGenerator`

Sets the total occurrences for which to generate dates for. Notice that setting this value overrides any date limit set.

#### Parameters
|Param|Description|
|-----|-----------|
|`totalOccurrences` |  The total occurrences to set. |

#### Return

**Type**

FrequencyDatesGenerator

**Description**

Updated instance.

---
