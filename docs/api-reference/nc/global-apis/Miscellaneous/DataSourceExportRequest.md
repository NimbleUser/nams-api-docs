# DataSourceExportRequest class

This class represents a request to export data from a Data Source.

---
## Constructors
### `DataSourceExportRequest(String dataSourceNameArg, String fieldSetNameArg, String sObjectNameArg, String configNameArg)`

Constructs a DataSourceExportRequest with the specified data source name, field set name and configuration record name.
#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceNameArg` |  The name of the data source to use when exporting. |
|`fieldSetNameArg` |  The name of the field set to use when exporting from the specified data source. |
|`sObjectNameArg` |  The name of the SObject related to this request. |
|`configNameArg` |  An optional ExportConfiguration__mdt record to determine the |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if dataSourceNameArg, fieldSetNameArg, or sObjectNameArg are null. |

---
