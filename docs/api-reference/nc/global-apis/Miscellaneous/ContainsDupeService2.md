# ContainsDupeService2 class

This class is used to find potential duplicate records using the LIKE keyword. This class can also be extended to assist with the creation of custom implementations. There are several virtual methods available for creating the dynamic query that finds potential duplicates.

---
## Methods
### `getComparisonString()` → `String`

Returns a string that represents the operator that should be used in the generation of condition expressions. This method can be overridden to handle different comparisons. The default implementation returns 'LIKE' and is called in the buildConditionExpression() method.

#### Return

**Type**

String

**Description**

A string that represents the operator that will be used to build condition expression.

### `getSoqlValueFormat()` → `String`

Gets the string that should be used to format field values which are part of the condition expressions that make up the where clause. The default value includes the '%' wildcard at the beginning and end to find duplicates using the LIKE keyword. This method is called by buildSoqlValue() for any fields that are not Dates or Booleans. This method can be overridden.

#### Return

**Type**

String

**Description**

A string representing the SOQL format for values in condition expressions.

---
