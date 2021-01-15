# DataFactoryBatchExportConfiguration class

Exposes constants and methods commonly used for creating and inserting Batch Export Configuration records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_BATCH_EXPORTER_CLASS_NAME` → `String`

### `DEFAULT_NAME` → `String`

---
## Methods
### `createBatchExportConfiguration(String name, String exportGenerator)` → `BatchExportConfiguration__c`

Creates a batch export configuration of the specified name and export generator.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the batch export configuration |
|`String` |  the name of the batch export generator |
|`a` |  BatchExportConfiguration__c object |

### `insertBatchExportConfiguration(String name, String exportGenerator)` → `BatchExportConfiguration__c`

Creates and inserts a batch export configuration of the specified name and export generator.

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  the name of the batch export configuration |
|`String` |  the name of the batch export generator |
|`a` |  BatchExportConfiguration__c object |

### `insertGreatPlainsBatchExportConfiguration()` → `BatchExportConfiguration__c`

Creates and inserts a batch export configuration of the default name and default Great Plains export generator.

#### Parameters
|Param|Description|
|-----|-----------|
|`a` |  BatchExportConfiguration__c object |

---
