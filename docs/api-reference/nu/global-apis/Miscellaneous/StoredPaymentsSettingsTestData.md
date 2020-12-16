# StoredPaymentsSettingsTestData class

This class is used to create StoredPaymentsSettings__c records for unit tests.

---
## Properties

### `Instance` → `StoredPaymentsSettingsTestData`

Gets an instance of StoredPaymentsSettingsTestData. @return StoredPaymentsSettingsTestData instance.

---
## Methods
### `enableStoredPayments(Boolean enabled)` → `StoredPaymentsSettingsTestData`

Sets the MockFeatureEnabledService for the Stored Payments tag as enabled or disabled.

#### Return

**Type**

StoredPaymentsSettingsTestData

**Description**

The instance of StoredPaymentsSettingsTestData.

### `setMock()` → `void`

Creates a StoredPaymentsSettings__c record then sets the mockRecord in the StoredPaymentsSettings class. The record is created using the create() method which will reset this instance back to the defaults.

### `withClass(String className)` → `StoredPaymentsSettingsTestData`

Sets the StoredPaymentsEnablement__c field to the specified string value.

#### Return

**Type**

StoredPaymentsSettingsTestData

**Description**

The instance of StoredPaymentsSettingsTestData.

---
