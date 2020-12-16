# BundleSettingTestData class

Used for creating and inserting BundleSetting__c records. For testing only.

---
## Methods
### `createBundleSetting(String className, String fieldSetName)` → `BundleSetting__c`

Creates a BundleSetting__c record.

#### Parameters
|Param|Description|
|-----|-----------|
|`className` |  Name of a class to use as the name for the BundleSetting__c record. |
|`fieldSetName` |  Name of a field set that the specified class should use when querying records. |

#### Return

**Type**

BundleSetting__c

**Description**

A Bundle Setting record.

### `createEventBundleSetting()` → `BundleSetting__c`

Creates a BundleSetting__c record for event bundles.

#### Return

**Type**

BundleSetting__c

**Description**

A Bundle Setting record.

### `createMembershipBundleSetting()` → `BundleSetting__c`

Creates a BundleSetting__c record for membership bundles.

#### Return

**Type**

BundleSetting__c

**Description**

A Bundle Setting record.

### `insertBundleSettings()` → `List<BundleSetting__c>`

Inserts BundleSetting__c records for bundles that are currently supported.

#### Return

**Type**

List<BundleSetting__c>

**Description**

A list of Bundle Setting records.

### `insertEventBundleSetting()` → `BundleSetting__c`

Inserts a BundleSetting__c record for event bundles.

#### Return

**Type**

BundleSetting__c

**Description**

A Bundle Setting record.

### `insertMembershipBundleSetting()` → `BundleSetting__c`

Inserts a BundleSetting__c record for membership bundles.

#### Return

**Type**

BundleSetting__c

**Description**

A Bundle Setting record.

---
