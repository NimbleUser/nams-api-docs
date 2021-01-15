# StandardGreatPlainsBatchExporter class

Exposes methods for the standard Great Plain Batch Exporter.

---
## Properties

### `DetailFileName` → `String`

### `HeaderFileName` → `String`

### `detailRecord` → `SObject`

### `headerRecord` → `SObject`

A map containing of the Header Reference value for each Batch.

---
## Methods
### `export(Set<Id> batchesToExportIds)` → `BatchExportResult`

Performs the export on the specified Set of Batch Ids and returns a BatchExportResult. If no Ids are passed in, the BatchExportResult returned will contain an error message.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  Set of Batch Id records |

#### Return

**Type**

BatchExportResult

**Description**

a BatchExportResult

### `getPreviewComponent(Set<Id> batchesToExportIds)` → `Component.Apex.OutputPanel`

Returns the Component Output Panel of the Batch Export Preview View for the Set of Batch Ids passed in.

#### Parameters
|Param|Description|
|-----|-----------|
|`Set<Id>` |  Set of Batch Id records |

#### Return

**Type**

Component.Apex.OutputPanel

**Description**

Component.Apex.OutputPanel

### `insertExportRecords(String headerContents, String detailContents)` → `void`

Inserts records containing the result of the GL export.

#### Parameters
|Param|Description|
|-----|-----------|
|`selectedBatches` |  The list of related batches to evaluate. |
|`String` |  The header contents of the GL export. |
|`String` |  The body contents of the GL export. |

#### Return

**Type**

void

**Description**

Map<Id, String> The map of reference column value by batch Id.

---
