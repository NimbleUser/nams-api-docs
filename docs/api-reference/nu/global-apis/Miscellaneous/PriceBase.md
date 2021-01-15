# PriceBase class

Base abstract class that represents a price.

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

### `getPrice()` → `Decimal`

Price amount.

#### Return

**Type**

Decimal

**Description**

Price amount.

### `getPriceTypes()` → `Set<String>`

Returns a set of the types of prices that this object represents. E.g. List, Member.

#### Return

**Type**

Set<String>

**Description**

Price types that this object represents.

### `setPrice(Decimal price)` → `void`

Sets the price amount.

#### Parameters
|Param|Description|
|-----|-----------|
|`price` |  Price amount to set. |

### `setPriceTypes(Set<String> priceTypes)` → `void`

Sets the price types that this object represents.

#### Parameters
|Param|Description|
|-----|-----------|
|`priceTypes` |  Sets the price types that this object represents. |

---
