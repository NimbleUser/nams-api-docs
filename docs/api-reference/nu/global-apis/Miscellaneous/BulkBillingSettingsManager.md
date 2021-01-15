# BulkBillingSettingsManager class

Used to interact with the BulkBillingSetting__c custom settings object.

---
## Properties

### `Instance` → `BulkBillingSettingsManager`

Gets instance of BulkBillingSettingsManager.cls. @return Instance of BulkBillingSettingsManager.cls.

---
## Methods
### `Request(String name, String billingHistoryRecordType, String bulkBillingClass,String billingDisplayClass, String lookupField, Integer batchSize)` → `global`

The constructor of the request object that takes in the Name__c, RecordType__c, BulkBillingClass__c, BillingDisplayClass__c, and LookupField__c for use when inserting the custom Bulk Billing Setting record.

### `getBulkBillingSetting(String billingType)` → `BulkBillingSetting__c`

Returns the BulkBillingSetting__c record that matches the name specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`billingType` |  The Name of the record to find. |

#### Return

**Type**

BulkBillingSetting__c

**Description**

The BulkBillingSetting__c record.

### `getBulkBillingSettingsByName()` → `BulkBillingSetting__c>`

Returns all BulkBillingSetting__c records, keyed by Name.

#### Return

**Type**

BulkBillingSetting__c>

**Description**

The Map of BulkBillingSetting__c records.

### `insertBulkBillingSetting(Request request)` → `BulkBillingSetting__c`

Inserts and returns a custom Bulk Billing Setting.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A request object that contains the field definitions of the new |

#### Return

**Type**

BulkBillingSetting__c

**Description**

The BulkBillingSetting__c record.

### `insertMembershipBulkBillingSetting()` → `BulkBillingSetting__c`

Inserts and returns the standard membership bulk billing setting.

#### Return

**Type**

BulkBillingSetting__c

**Description**

The BulkBillingSetting__c record.

---
## Inner Classes

### BulkBillingSettingsManager.Request class

A Request object that is to be used to insert custom Bulk Billing Settings.

---
#### Constructors
##### `Request(String name, String billingHistoryRecordType, String bulkBillingClass,String billingDisplayClass, String lookupField)`

The constructor of the request object that takes in the Name__c, RecordType__c, BulkBillingClass__c, BillingDisplayClass__c, and LookupField__c for use when inserting the custom Bulk Billing Setting record.
---
#### Properties

##### `BatchSize` → `Integer`

The BatchSize__c field of the requested Bulk Billing Setting record.

##### `BillingDisplayClass` → `String`

The BillingDisplayClass__c field of the requested Bulk Billing Setting record.

##### `BillingHistoryRecordType` → `String`

The BillingHistoryRecordType__c field of the requested Bulk Billing Setting record.

##### `BulkBillingClass` → `String`

The BulkBillingClass__c field of the requested Bulk Billing Setting record.

##### `LookupField` → `String`

The LookupField__c field of the requested Bulk Billing Setting record.

##### `Name` → `String`

The Name__c field of the requested Bulk Billing Setting record.

---
