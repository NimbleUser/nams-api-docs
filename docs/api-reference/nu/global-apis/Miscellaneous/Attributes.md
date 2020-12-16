# Attributes class

Represents an AttributeBase collection.

## Related

AttributeBase.

---
## Constructors
### `Attributes()`

Creates an empty instance.
### `Attributes(List<AttributeBase> baseInstances)`

Creates a new instance, wrapping the passed in AttributeBase instances.
#### Parameters
|Param|Description|
|-----|-----------|
|`baseInstances` |  The AttributeBase instances to wrap. |

---
## Methods
### `add(AttributeBase attributeToAdd)` → `void`

Adds the passed in AttributeBase instance to this collection.

#### Parameters
|Param|Description|
|-----|-----------|
|`attributeToAdd` |  AttributeBase object to add. |

### `addAll(List<AttributeBase> attributesToAdd)` → `void`

Adds all passed in AttributeBase instances to this collection.

#### Parameters
|Param|Description|
|-----|-----------|
|`attributesToAdd` |  AttributeBase objects to add. |

### `getAll()` → `List<AttributeBase>`

Returns all AttributeBase instances in this collection.

#### Return

**Type**

List<AttributeBase>

**Description**

All AttributeBase instances in this collection.

### `getAllTypes()` → `Set<String>`

All attribute types available in this collection.

#### Return

**Type**

Set<String>

**Description**

All attribute types available in this collection.

### `getByType(String attributeType)` → `List<AttributeBase>`

Helper method to allow for the retrieval of all AttributeBase in this collection that match the passed in attribute type.

#### Parameters
|Param|Description|
|-----|-----------|
|`attributeType` |  Attribute type to match by (e.g. "Color", "Format"). |

#### Return

**Type**

List<AttributeBase>

**Description**

All AttributeBase that match the requested attribute type.

---
