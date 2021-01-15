# DataSource class

Contains standard IDataSource [legacy] implementations. Serves as a base class for new DataSources.

---
## Constructors
### `DataSource()`

Default constructor.
---
## Properties

### `Context` → `String`

The context on this DataSource__c record.

### `SObjectType` → `String`

The SObjectType on this DataSource__c record.

---
## Methods
### `getData(Request req)` → `Object`

Returns the data provided by a subclass of DataSource.

#### Parameters
|Param|Description|
|-----|-----------|
|`req` |  The Request to send to this data source. |

#### Return

**Type**

Object

**Description**

An object representing the data provided by this data source.

### `getSObjectType()` → `Schema.SObjectType`

Gets the type of sobjects returned by the data source.

#### Return

**Type**

Schema.SObjectType

**Description**

The sobject type.

---
## Inner Classes

### DataSource.Request class

A Request for retrieving the data of a DataSource.

---
#### Constructors
##### `Request(Set<String> fieldsArg)`

Constructs a new request with the provided fields.
###### Parameters
|Param|Description|
|-----|-----------|
|`fieldsArg` |  The set of fields to assign to the Fields property. |

##### `Request(Set<String> fieldsArg, String contextArg)`

Constructs a new request with the provided fields and context.
###### Parameters
|Param|Description|
|-----|-----------|
|`fieldsArg` |  The set of fields to assign to the Fields property. |
|`contextArg` |  The context string to assign to the Context property. |

##### `Request(Set<String> fieldsArg, String contextArg, String sObjectTypeArg)`

Constructs a new request with the provided fields and context.
###### Parameters
|Param|Description|
|-----|-----------|
|`fieldsArg` |  The set of fields to assign to the Fields property. |
|`contextArg` |  The context string to assign to the Context property. |
|`sObjectTypeArg` |  The SObjectType string to assign to the SObjectType property. |

---
#### Properties

##### `Context` → `String`

Contextual data provided by the DataSource__c record for use by the data source.

##### `Fields` → `Set<String>`

Fields relevant to the data source request.

##### `SObjectType` → `String`

The SObjectType on this DataSource__c record.

---
#### Methods
##### `addAdditionalData(Object key, Object val)` → `void`

Adds a new key value pair to the AdditionalData map.

###### Return

**Type**

void

**Description**

s The instance of Request.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

##### `getAdditionalData()` → `Object>`

Retrieves the additionalData map from the current request.

###### Return

**Type**

Object>

**Description**

s The additionalData key/value map store.

---
