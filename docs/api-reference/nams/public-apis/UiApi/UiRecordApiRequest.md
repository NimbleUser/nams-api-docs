## UiRecordApiRequest class

`NamespaceAccessible`

Request class that provides information about records to retrieve for UI display.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `UiRecordApiRequest(String objectApiName, String fieldSetName)`

`NamespaceAccessible`

Constructs a new UiRecordApiRequest instance.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectApiName` |  The API name of the SObjectType for which to retrieve information. |
|`fieldSetName` |  The field set that represents fields for which information will be retrieved. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `UiRecordApiRequest(SObjectType objectType, String fieldSetName)`

`NamespaceAccessible`

Constructs a new UiRecordApiRequest instance.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType for which to retrieve information. |
|`fieldSetName` |  The field set that represents fields for which information will be retrieved. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `UiRecordApiRequest(String objectApiName, List<String> fields)`

`NamespaceAccessible`

Constructs a new UiRecordApiRequest instance.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectApiName` |  The API name of the SObjectType for which to retrieve information. |
|`fields` |  List of fields for which to retrieve data. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `UiRecordApiRequest(SObjectType objectType, List<String> fields)`

`NamespaceAccessible`

Constructs a new UiRecordApiRequest instance.
##### Parameters
|Param|Description|
|-----|-----------|
|`objectType` |  The SObjectType for which to retrieve information. |
|`fields` |  List of fields for which to retrieve data. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `addFilter(QICondition condition)` → `UiRecordApiRequest`

`NamespaceAccessible`

Sets a filter (represented by {@link QICondition}) to use when retrieving records.

##### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  The condition to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addOrder(QOrder orderBy)` → `UiRecordApiRequest`

`NamespaceAccessible`

Sets an ordering in which the records should be returned, using a {@link QOrder} object.

##### Parameters
|Param|Description|
|-----|-----------|
|`orderBy` |  The {@link QOrder} object that denotes the order in which records should be retrieved. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `clearFilters()` → `UiRecordApiRequest`

`NamespaceAccessible`

Clears the request's filters.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `clearOrders()` → `UiRecordApiRequest`

`NamespaceAccessible`

Clears the request's orders.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFieldSetName()` → `String`

`NamespaceAccessible`

Name of the field set that defines the fields to query for.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFields()` → `List<String>`

`NamespaceAccessible`

Gets the list of fields requested.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getFilters()` → `List<QICondition>`

`NamespaceAccessible`

List of conditions to filter records by. These conditions represent the WHERE clause of a Q query.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getObjectApiName()` → `String`

`NamespaceAccessible`

The name of the object for which UI elements are being retrieved.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getOrders()` → `List<QOrder>`

`NamespaceAccessible`

Gets the orderings in which the records should be returned, using a list of {@link QOrder} objects.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPageOffset()` → `Integer`

`NamespaceAccessible`

Represents the page offset based on the current page number. Defaults to 0.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getPageSize()` → `Integer`

`NamespaceAccessible`

The number of records to be viewed at a time. Defaults to 50.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPageOffset(Integer pageOffset)` → `UiRecordApiRequest`

`NamespaceAccessible`

Sets the page offset representing the page the user is currently in.

##### Parameters
|Param|Description|
|-----|-----------|
|`pageOffset` |  The page offset to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setPageSize(Integer pageSize)` → `UiRecordApiRequest`

`NamespaceAccessible`

Sets the number of records to be viewed at a time.

##### Parameters
|Param|Description|
|-----|-----------|
|`pageSize` |  The page size to set. |

<!-- panels:end -->
---
