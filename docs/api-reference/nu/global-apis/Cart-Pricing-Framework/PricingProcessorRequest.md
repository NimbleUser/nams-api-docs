# PricingProcessorRequest class

The request for IPricingProcessor classes. This class contains the records which will be processed by an IPricingProcessor as well as any additional data.

---
## Constructors
### `PricingProcessorRequest(List<SObject> recordsToProcess)`

Default constructor.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordsToProcess` |  The records to be processed by an IPricingProcessor. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if recordsToProcess is null. |

---
## Properties

### `Context` → `Object>`

A map containing any additional data that might be necessary for processing records.

### `Records` → `List<SObject>`

The records that will be processed.

---
## Methods
### `getSObjectType()` → `Schema.SObjectType`

Returns the SObjectType of the records contained in this request. The SObjectType is determined by calling getSObjectType() on the first record in the collection.

#### Return

**Type**

Schema.SObjectType

**Description**

The Schema.SObjectType of the contained records or null if the list is empty.

---
