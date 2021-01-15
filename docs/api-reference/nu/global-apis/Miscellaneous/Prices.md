# Prices class

Represents a group of PriceBase collection.

## Related

PriceBase.

---
## Constructors
### `Prices()`

Creates an empty instance.
### `Prices(List<PriceBase> baseInstances)`

Creates a new instance, wrapping the passed in PriceBase instances.
#### Parameters
|Param|Description|
|-----|-----------|
|`baseInstances` |  The baseInstances to wrap. |

---
## Methods
### `add(PriceBase priceToAdd)` → `void`

Adds the passed in PriceBase instance to this collection.

#### Parameters
|Param|Description|
|-----|-----------|
|`priceToAdd` |  PriceBase object to add. |

### `addAll(List<PriceBase> pricesToAdd)` → `void`

Adds all passed in PriceBase instances to this collection.

#### Parameters
|Param|Description|
|-----|-----------|
|`pricesToAdd` |  PriceBase objects to add. |

### `getAll()` → `List<PriceBase>`

Returns all PriceBase in this collection.

#### Return

**Type**

List<PriceBase>

**Description**

All PriceBase in this collection.

### `getAllTypes()` → `Set<String>`

All price types available in this collection.

#### Return

**Type**

Set<String>

**Description**

All price types available in this collection.

### `getByType(String priceType)` → `List<PriceBase>`

Helper method to allow for the retrieval of all PriceBase in this collection that match the passed in price type.

#### Parameters
|Param|Description|
|-----|-----------|
|`priceType` |  Price type to match by. E.g. "List", "Member". |

#### Return

**Type**

List<PriceBase>

**Description**

All PriceBase that match the requested price type.

### `getSelected()` → `PriceBase`

Gets the selected PriceBase, if any are selected.

#### Return

**Type**

PriceBase

**Description**

The select PriceBase, if any are selected.

### `selectByType(String priceType)` → `void`

Selects the PriceBase matching the provided type. If a match is found, this will set all others to not selected.

#### Parameters
|Param|Description|
|-----|-----------|
|`priceType` |  The price type to select. |

---
