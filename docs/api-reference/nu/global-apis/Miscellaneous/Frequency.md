# Frequency class

Wrapper for Frequency__c.

---
## Properties

### `DatesGenerator` → `String`

The DatesGenerator for this Frequency.

### `Length` → `Integer`

The Length for this Frequency.

### `Name` → `String`

The Name of the Frequency record.

### `Occurrences` → `Integer`

The default occurrences for this frequency.

### `RecordId` → `Id`

The Id of the Frequency record.

### `Unit` → `String`

The Unit for this Frequency.

---
## Methods
### `newInstance()` → `Frequency`

Returns a new Frequency instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`frequencyRecord` |  Frequency__c record to wrap. |

#### Return

**Type**

Frequency

**Description**

New Frequency instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if frequencyRecord is null. |

### `newInstance(Frequency__c frequencyRecord)` → `Frequency`

Returns a new Frequency instance with the passed in record wrapped.

#### Return

**Type**

Frequency

**Description**

New Frequency instance.

### `newInstances(List<Frequency__c> frequencyRecords)` → `List<Frequency>`

Constructs a list of Frequency wrappers based upon a list of records.

#### Parameters
|Param|Description|
|-----|-----------|
|`frequencyRecords` |  A list of frequency records to wrap. |

#### Return

**Type**

List<Frequency>

**Description**

A List<Frequency> wrappers.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if frequencyRecords is null. |

---
