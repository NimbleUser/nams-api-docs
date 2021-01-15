# TagServiceResponse class

Used when generating responses from TagService.

---
## Constructors
### `TagServiceResponse(List<Response> responses)`

Constructs a TagServiceResponse based on the list of Response records created.
#### Parameters
|Param|Description|
|-----|-----------|
|`responses` |  The list of Response objects. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any param is null. |

### `TagServiceResponse(List<Response> responses, Map<Id, List<RecordTag>> tagsByRequestedId)`

Constructs a TagServiceResponse based on the list of Response records created and Map of requested record ids and list of tags associated with them.
#### Parameters
|Param|Description|
|-----|-----------|
|`responses` |  The list of Response objects. |
|`tagsByRequestedId` |  Map of requested record ids and list of tags associated with them. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if responses param is null. |
|`ArgumentNullException` |  if tagsByRequestedId param is null. |

### `TagServiceResponse()`

A parameterless constructor for this class which initialises the Responses list.
---
## Properties

### `Responses` → `List<Response>`

If set, represents the list of Response records.

### `TagsByRequestedId` → `List<RecordTag>>`

Represents Map of requested record id and list of tags associated with them.

---
## Inner Classes

### TagServiceResponse.Response class

An inner class that defines the format for the type of TagServiceResponse.

---
#### Constructors
##### `Response()`

A parameterless constructor which initialises the RelatedRecordTags list.
---
#### Properties

##### `RelatedRecordId` → `Id`

The Id of the record for which the Response has been created.

##### `RelatedRecordTags` → `List<RecordTag>`

The list of RecordTag wrapper objects that are associated with this Response.

---
#### Methods
##### `compareTo(Object comparisonObject)` → `Integer`

Implementation of the compareTo method for sorting purposes. Checks and compares the number of RecordTags associated with each Response, and hence each Record.

###### Parameters
|Param|Description|
|-----|-----------|
|`compareToObject` |  The object to compare this instance to. |

###### Return

**Type**

Integer

**Description**

-1 if this instance is greater than the passed in one, 1 if it is lower than, 0 if they are equal.

---
