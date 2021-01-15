# CollectionUtil class

Exposes methods and functions commonly 		used when working with collections.

---
## Methods
### `caseInsensitiveContains(Set<String> stringSet, String containsElement)` → `Boolean`

Given a string, determine if the set of strings contains that string. 		Case insensitive.

#### Parameters
|Param|Description|
|-----|-----------|
|`stringSet` |  The set of strings that should be searched. |
|`containsElement` |  the string to search for. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if found, false if not found.

### `createParentRelationshipIdMap(List<Sobject> objRecords,String parentFieldName)` → `SObject>`

Generates a map with the key being the Id of the specified field 		 on the List of sObject records. 		The field name specified must be a Lookup field. 		If there are multiple objects with the same Lookup value, only one object will 		 be assigned to that Id value.

#### Parameters
|Param|Description|
|-----|-----------|
|`objRecords` |  The List of sObjects. |
|`parentFieldName` |  The name of the field on the sObject that will be used to map the sObject record. |

#### Return

**Type**

SObject>

**Description**

A Map<Id, sObject> where the keys are the Ids of the parent field name specified.

### `findSobjectInListById(Id sObjIdToFind, List<SObject> objectsToSearch)` → `SObject`

Given an Id, return that record from a List of sObjects, if it is found.

#### Parameters
|Param|Description|
|-----|-----------|
|`sObjIdToFind` |  The Id to search for. |
|`objectsToSearch` |  The List of sObjects that should be searched. |

#### Return

**Type**

SObject

**Description**

The sObject. Null if not found.

### `getIdList(List<sObject> objects)` → `string`

Gets a string representation of the List of sObject records. 		Format: ('id1','id2','id3')

#### Parameters
|Param|Description|
|-----|-----------|
|`objects` |  The list of sObjects. |

#### Return

**Type**

string

**Description**

A string representation of the List of sObject records.

### `getIdList(Set<Id> ids)` → `string`

Gets a string representation of the Set of Ids. 		Format: ('id1','id2','id3')

#### Parameters
|Param|Description|
|-----|-----------|
|`ids` |  The Set of Ids |

#### Return

**Type**

string

**Description**

A string representation of the Set of Ids

### `getListCount(List<Object> objList)` → `Integer`

Gets the number of items in the list of objects.

#### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  The list of Objects to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the list.

### `getListCount(List<Id> idList)` → `Integer`

Gets the number of items in the list of Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`idList` |  The list of Ids to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the list.

### `getListCount(List<String> strList)` → `Integer`

Gets the number of items in the list of strings.

#### Parameters
|Param|Description|
|-----|-----------|
|`strList` |  The list of string to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the list.

### `getLookupIds(List<sObject> objRecords, String lookupFieldName)` → `Set<Id>`

Generates a Set of Ids from the Lookup field specified on the List of sObject records.

#### Parameters
|Param|Description|
|-----|-----------|
|`objRecords` |  The List of sObjects that have the Lookup field from which to generate Ids |
|`lookupFieldName` |  The name of the Lookup field on the sObject |

#### Return

**Type**

Set<Id>

**Description**

A Set of Ids

### `getLookupIds(List<sObject> records, Schema.SObjectField field)` → `Set<Id>`

Generates a set of ids from the lookup field specified on the list of sObject records.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The list of sObjects that have the lookup field from which to get ids. |
|`field` |  The lookup field on the sObject. |

#### Return

**Type**

Set<Id>

**Description**

A set of ids

### `getSObjectIds(List<sObject> objRecords)` → `Set<Id>`

Generates a Set of Ids from a List of sObject records.

#### Parameters
|Param|Description|
|-----|-----------|
|`objRecords` |  The List of sOjbects from which to generate a Set of Ids |

#### Return

**Type**

Set<Id>

**Description**

A Set of Ids

### `getSetCount(Set<Object> objSet)` → `Integer`

Gets the number of items in the set of objects.

#### Parameters
|Param|Description|
|-----|-----------|
|`objSet` |  The set of Objects to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the set.

### `getSetCount(Set<Id> idSet)` → `Integer`

Gets the number of items in the set of Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`idSet` |  the set of Ids to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the set.

### `getSetCount(Set<String> stringSet)` → `Integer`

Gets the number of items in the set of strings.

#### Parameters
|Param|Description|
|-----|-----------|
|`stringSet` |  the set of string to calculate. |

#### Return

**Type**

Integer

**Description**

The number of items in the set.

### `groupSObjectsByField(List<SObject> objRecords,String groupFieldName)` → `List<sObject>>`

Groups a List of sObjects together based on the value of the grouping field specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`objRecords` |  The List of sObjects to be grouped. |
|`groupFieldName` |  The name of the field on the sObject that will be used to group records together. |

#### Return

**Type**

List<sObject>>

**Description**

A Map containing List<sObject> as values

### `groupSObjectsByIdField(List<SObject> records, String field)` → `List<sObject>>`

Groups a List of sObjects together based on the value of the grouping id field specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The List of sObjects to be grouped |
|`field` |  The name of the id field on the sObject that will be used to group records together |

#### Return

**Type**

List<sObject>>

**Description**

A Map containing List<sObject> as values

### `groupSObjectsByIdField(List<SObject> records, Schema.SObjectField field)` → `List<sObject>>`

Groups a List of sObjects together based on the lookup field specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  The List of sObjects to be grouped. |
|`field` |  The lookup field on the sObject. |

#### Return

**Type**

List<sObject>>

**Description**

A Map containing List<sObject> as values where the keys are all of the unique grouping id field values.

### `isNullOrEmpty(List<Object> objList)` → `Boolean`

Determines whether the collection is null or contains no elements.

#### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  The collection to check if null or empty. |

#### Return

**Type**

Boolean

**Description**

True if the collection is null or empty; otherwise false.

### `isNullOrEmpty(List<Id> idList)` → `Boolean`

Determines whether the collection is null or contains no elements.

#### Parameters
|Param|Description|
|-----|-----------|
|`idList` |  The collection to check if null or empty. |

#### Return

**Type**

Boolean

**Description**

True if the collection is null or empty; otherwise false.

### `isNullOrEmpty(Set<Object> objSet)` → `Boolean`

Determines whether the collection is null or contains no elements.

#### Parameters
|Param|Description|
|-----|-----------|
|`objSet` |  The collection to check if null or empty. |

#### Return

**Type**

Boolean

**Description**

True if the collection is null or empty; otherwise false.

### `isNullOrEmpty(Set<Id> idSet)` → `Boolean`

Determines whether the collection is null or contains no elements.

#### Parameters
|Param|Description|
|-----|-----------|
|`idSet` |  The collection to check if null or empty. |

#### Return

**Type**

Boolean

**Description**

True if the collection is null or empty; otherwise false.

### `listHasElements(List<String> strList)` → `Boolean`

Determines if the list of strings is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`strList` |  The list of strings to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

### `listHasElements(List<Object> objList)` → `Boolean`

Determines if the list of Objects is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`objList` |  the list of Objects to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

### `listHasElements(List<Id> idList)` → `Boolean`

Determines if the list of Ids is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`idList` |  the list of Ids to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

### `setHasElements(Set<Object> objSet)` → `Boolean`

Determines if the set of Objects is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`objSet` |  The set of Objects to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

### `setHasElements(Set<Id> idSet)` → `Boolean`

Determines if the set of Ids is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`idSet` |  the set of Ids to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

### `setHasElements(Set<String> stringSet)` → `Boolean`

Determines if the set of strings is empty or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`stringSet` |  the set of strings to evaluate. |

#### Return

**Type**

Boolean

**Description**

A boolean value; true if the list has elements, false if it is empty.

---
