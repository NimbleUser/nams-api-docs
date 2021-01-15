# BundleComponentSettingTestData class

Used for creating and inserting BundleComponentSetting__c records. For testing only.

---
## Methods
### `createDonationSetting()` → `BundleComponentSetting__c`

Creates a BundleComponentSetting__c record for donation products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `createMembershipSetting()` → `BundleComponentSetting__c`

Creates a BundleComponentSetting__c record for membership products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `createMerchandiseSetting()` → `BundleComponentSetting__c`

Creates a BundleComponentSetting__c record for merchandise products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `createSessionSetting()` → `BundleComponentSetting__c`

Creates a BundleComponentSetting__c record for registration products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `createSetting(String recordTypeName, String className)` → `BundleComponentSetting__c`

Creates a BundleComponentSetting__c record where the name should be a Product__c record type. The class name should not include the inner constructor class. This is automatically appended along with the package namespace.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeName` |  Name of a cart item record type. |
|`className` |  Name of a BundleComponent class. |

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `deleteAll()` → `void`

Deletes all BundleComponentSetting__c records if any exist. If none exist, no DML will be done.

### `insertBundleComponentSettings()` → `List<BundleComponentSetting__c>`

Inserts BundleComponentSetting__c records for products that are currently supported by the Bundle Service.

#### Return

**Type**

List<BundleComponentSetting__c>

**Description**

A list of Bundle Component Setting records.

### `insertDonationSetting()` → `BundleComponentSetting__c`

Inserts a BundleComponentSetting__c record for donation products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `insertMembershipSetting()` → `BundleComponentSetting__c`

Inserts a BundleComponentSetting__c record to use for membership products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `insertMerchandiseSetting()` → `BundleComponentSetting__c`

Inserts a BundleComponentSetting__c record for merchandise products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `insertSessionSetting()` → `BundleComponentSetting__c`

Inserts a BundleComponentSetting__c record for registration products.

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

### `insertSetting(String recordTypeName, String className)` → `BundleComponentSetting__c`

Inserts a BundleComponentSetting__c record where the name should be a Product__c record type. This method does not automatically append a package prefix or assume the class name is for an inner class. This is ideal for subscribers or extension packages.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordTypeName` |  Name of a product record type. |
|`className` |  Name of a BundleComponent class. |

#### Return

**Type**

BundleComponentSetting__c

**Description**

A Bundle Component Setting record.

---
