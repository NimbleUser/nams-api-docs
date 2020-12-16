# MetadataMigrator class

Handles the migration of SObject records to Custom Metadata Type records.

---
## Methods
### `migrateRecords(List<SObject> recordsToMigrate, SObjectType destinationType,Map<SObjectField, SObjectField> oldFieldToNewField)` → `void`

Migrates SObject records to Custom Metadata Type records with a metadata API deployment.

#### Parameters
|Param|Description|
|-----|-----------|
|`recordsToMigrate` |  The SObject records to migrate to Custom Metadata Type records. |
|`destinationType` |  The destination Custom Metadata Type. |
|`oldFieldToNewField` |  A mapping of SObjectField on the SObject records to their new field. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

### `newInstance()` → `MetadataMigrator`

Constructs an instance of MetadataMigrator for use.

---
