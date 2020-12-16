# DupeService2 class

This class is used to find potential duplicate records by looking for records who are exact matches to the criteria provided to this service. This class can also be extended to assist with the creation of custom implementations. There are several virtual methods available for creating the dynamic query that finds potential duplicates.

---
## Methods
### `buildConditionExpression(Schema.SObjectField field, Object value)` → `String`

Builds a string to represent a single condition expression that will become part of the where clause. This method can be overridden to create more complex condition expressions. The default implementation calls the buildSoqlValue() and getComparisonString() methods.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The SObjectField that will be used to generate the condition expression. |
|`value` |  The value that will be used to find potential duplicates. |

#### Return

**Type**

String

**Description**

A single condition expression in the form of a string.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

### `buildSoqlValue(SObjectField field, Object value)` → `String`

Returns a SOQL formatted value for the given field depending on the data type of the field. If the value is of type String, this method will return it surrounded by single quotes. This method can be overridden in case special handling is required for data types other than Dates and Booleans.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The SObjectField that will be used to determine the format of the value expected by SOQL. |
|`value` |  The value that will be formatted into a string compatible with dynamic SOQL queries. |

#### Return

**Type**

String

**Description**

A String representing the SOQL formatted value.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either parameter is null. |

### `findDupes(DupeServiceRequest request)` → `DupeServiceResponse`

Check for duplicates that match the criteria given.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An instance of DupeServiceRequest to provide context. |

#### Return

**Type**

DupeServiceResponse

**Description**

An instance of type DataServiceResponse.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |

### `getComparisonString()` → `String`

Returns a string that represents the operator that should be used in the generation of condition expressions. This method can be overridden to handle different comparisons. The default implementation returns '=' and is called in the buildConditionExpression() method.

#### Return

**Type**

String

**Description**

A string that represents the operator that will be used to build condition expression.

### `getSoqlValueFormat()` → `String`

Gets the string that should be used to format field values which are part of the condition expressions that make up the where clause. This method is called by buildSoqlValue() for any fields that are not Dates or Booleans. This method can be overridden.

#### Return

**Type**

String

**Description**

A string representing the SOQL format for values in condition expressions.

### `queryForDuplicates(DupeServiceRequest request)` → `List<SObject>`

Queries for potential duplicate records by building a dynamic SOQL query from the specified request. This method is called within the findExactMatches() method. This method is provided to help avoid recreating the logic to build a dynamic query in custom DupeService implementations that implement or override the findDupes() method.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  An instance of DupeServiceRequest to provide context. |

#### Return

**Type**

List<SObject>

**Description**

A list of SObjects that are potential duplicates.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if the request is null. |
|`ArgumentException` |  if the request.Criteria contains null values. |

---
