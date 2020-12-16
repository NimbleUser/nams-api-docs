# QueryService class

Service class used by cards to register data sources. Registering data sources across multiple cards prevents different cards from querying the same records separately.

---
## Methods
### `addFieldSets(String dataSourceTypeName, List<String> fieldSetNames)` → `void`

Adds the fields in the specified field sets to the list of fields to be queried by the specified data source.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceTypeName` |  The type name of the data source to add the fields for. |
|`fields` |  The fields that should be queried by the specified data source. |
|`dataSourceTypeName` |  The type name of the data source to add the fields for. |
|`fields` |  The fields that should be queried by the specified data source. |
|`dataSourceTypeName` |  The type name of the data source to add the fields for. |
|`fields` |  The fields that should be queried by the specified data source. |
|`dataSourceTypeName` |  The type name of the data source to add the fields for. |
|`fields` |  The fields that should be queried by the specified data source. |
|`dataSourceTypeName` |  The type name of the data source to add the fields for. |
|`fieldSetNames` |  The names of the field sets from which to add all the fields. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if the specified data source type name does not exist |

### `clearAllDataSources()` → `void`

Removes all data sources from the cache. Removes the data sources themselves, not the records they query. To remove resulting records, call clearResults.

### `clearResults(String dataSourceTypeName)` → `void`

Remove records from the cache for the specified data source.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceTypeName` |  The secondary data source type name. |
|`dataSourceTypeName` |  The type name of the data source to fetch the records from. |
|`dataSourceTypeName` |  The type name of the data source to fetch the record from. |
|`dataSourceTypeName` |  The type name of the data source to remove from the cache. |

#### Return

**Type**

void

**Description**

The record fetched from the data source.

### `getData(String dataSourceTypeName)` → `Object`

Fetches the data specified by a data source.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceTypeName` |  The type name of the data source to fetch data from. |

#### Return

**Type**

Object

**Description**

A generic object representing the fetched data from the data source.

### `getData(String dataSourceTypeName, Map<Object, Object> additionalRequestData)` → `Object`

Fetches the data specified by a data source, including the specified map of additional data in the request instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`dataSourceTypeName` |  The type name of the data source to fetch data from. |
|`additionalRequestData` |  An optional map of objects to objects to include in the DataSource.Request instance. |

#### Return

**Type**

Object

**Description**

A generic object representing the fetched data from the data source.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if dataSourceTypeName is null. |

---
