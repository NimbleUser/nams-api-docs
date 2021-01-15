# AttributeBase class

Base abstract class that represents an Attribute.

---
## Methods
### `getFieldValue(Schema.SObjectField field)` → `Object`

Gets value based on an SObjectField.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

#### Return

**Type**

Object

**Description**

Value from the field.

### `getFieldValue(String fieldName)` → `Object`

Gets value based on an SObjectField name.

#### Parameters
|Param|Description|
|-----|-----------|
|`field` |  The field to get the value from. |

#### Return

**Type**

Object

**Description**

Value from the field.

### `getRelatedRecordId()` → `String`

Gets the related record Id that this attribute describes.

#### Return

**Type**

String

**Description**

The Id of the related record this attribute is for.

### `getSortOrder()` → `Integer`

Sort Order for this Attribute value.

#### Return

**Type**

Integer

**Description**

Sort Order of the attribute.

### `getType()` → `String`

Attribute type.

#### Return

**Type**

String

**Description**

Type of attribute (e.g. Color, Format).

### `getValue()` → `String`

Attribute value.

#### Return

**Type**

String

**Description**

Value of the attribute.

---
