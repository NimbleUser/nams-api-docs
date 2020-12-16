# IDataSourceExportService interface

Describes methods used by implementations for exporting data based upon Data Sources.

---
## Methods
### `exportData(DataSourceExportRequest request)` → `String`

Exports the data based upon the specified request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An DataSourceExportRequest specifying various details needed to export. |

#### Return

**Type**

String

**Description**

A String representation of the actual data being exported.

#### Throws
|Exception|Description|
|---------|-----------|
|`NUArgumentNullException` |  if request is null. |

### `getMimeType()` → `String`

Gets the mime type of the data being exported.

#### Return

**Type**

String

**Description**

A String representation of the mime type of the data being exported.

---
