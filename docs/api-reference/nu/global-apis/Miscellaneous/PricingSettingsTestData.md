# PricingSettingsTestData class

This class is used to create PricingSettings__c records for unit tests.

---
## Properties

### `Instance` → `PricingSettingsTestData`

Gets an instance of PricingSettingsTestData. @return PricingSettingsTestData instance.

---
## Methods
### `enableCartRepricing()` → `PricingSettingsTestData`

Sets the EnableCartRepricing__c field to true.

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `enableProductRepricing()` → `PricingSettingsTestData`

Sets the EnableProductRepricing__c field to true.

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `enabled()` → `PricingSettingsTestData`

Sets the EnableProductRepricing__c and EnableCartRepricing__c fields to true.

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `forAllRecordTypes()` → `PricingSettingsTestData`

Sets the RecordTypes__c field to the values of all CartItem__c record types.

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `forRecordType(String recordTypeName)` → `PricingSettingsTestData`

Sets the RecordTypes__c field to the specified value.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeName` |  The name of a record type. |

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `forRecordTypes(Set<String> recordTypeNames)` → `PricingSettingsTestData`

Sets the RecordTypes__c field to the values specified in the set. The values in the set will be concatenated with a comma delimiter. If a null set is provided, the RecordTypes__c field will be set to null.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeNames` |  The names of record types. |

#### Return

**Type**

PricingSettingsTestData

**Description**

The instance of PricingSettingsTestData.

### `setMock()` → `void`

Creates a PricingSettings__c record then sets the mockRecord in the PricingSettings class. The record is created using the create() method which will reset this instance back to the defaults.

---
