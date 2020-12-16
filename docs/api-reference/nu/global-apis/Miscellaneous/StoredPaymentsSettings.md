# StoredPaymentsSettings class

This class is used to retrieve and interact with the protected StoredPaymentsSettings__c hierarchical custom setting.

---
## Properties

### `IsStoredPaymentsEnabled` → `Boolean`

Boolean value indicating whether or not the stored payments feature is enabled or not.

---
## Methods
### `get()` → `StoredPaymentsSettings`

Gets an instance of the StoredPaymentsSettings class that represents the StoredPaymentsSettings__c configuration for the current user.

#### Parameters
|Param|Description|
|-----|-----------|
|`setting` |  An instance of StoredPaymentsSettings__c. |

#### Return

**Type**

StoredPaymentsSettings

**Description**

An instance of StoredPaymentsSettings.

### `isFeatureEnabled()` → `Boolean`

Boolean value indicidating whether or not the stored payments feature should be enabled. If the checkbox is unchecked, the feature will be off. If checked and a class is populated, the logic in the class that implements IFeatureToggle will be used. If no class is specified, the value of the Enable Stored Payments checkbox will be used.

---
