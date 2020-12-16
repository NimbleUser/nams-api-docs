# DupeServiceRequest class

A request class used to provide context to methods in a DupeService class.

---
## Constructors
### `DupeServiceRequest(SObject sobjectToSearchFor)`

Construct a DupeServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`sobjectToSearchFor` |  The account to be searched against. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

### `DupeServiceRequest(SObject sobjectToSearchFor, List<String> additionalCriteriaParam)`

Construct a DupeServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`sobjectToSearchFor` |  The account to be searched against. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

### `DupeServiceRequest(Schema.SObjectType objectType, Map<Schema.SObjectField, Object> criteria)`

Construct a DupeServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The object type of the object to do dupe checking on. |
|`criteria` |  The map of field and field values that make up the dupe checking criteria. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any parameter is null. |

### `DupeServiceRequest(Schema.SObjectType objectType, Map<Schema.SObjectField, Object> criteria,List<String> additionalCriteriaParam)`

Construct a DupeServiceRequest.
#### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The object type of the object to do dupe checking on. |
|`criteria` |  The map of field and field values that make up the dupe checking criteria. |
|`additionalCriteriaParam` |  List of additional criteria that will be appended to the Where clause. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

---
## Properties

### `AdditionalCriteria` → `List<String>`

A list of additional criteria that will be appended to the Where clause.

### `Criteria` → `Object>`

A map of field name to field value. This map will be used as the criteria by the DupeService when check for duplicates.

### `QueryLimit` → `Integer`

The number to limit the query by.

### `SObjectToDupeSearch` → `SObject`

The SObject to dupe search against.

### `SObjectType` → `Schema.`

The type of SObject we're requesting the DupeService to check against.

---
