# SessionBundleComponent class

A specialized type of BundleComponent representing session products.

---
## Properties

### `ConflictCodes` → `String`

A comma-separated list of conflict codes associated with this component's product.

### `EndDateTime` → `Datetime`

The date and time the session will end.

### `SessionGroupId` → `Id`

The Id of the group this session appears under.

### `SpecialVenueInstructions` → `String`

Special instructions pertaining to the session's venue.

### `StartDateTime` → `Datetime`

The date and time the session will start.

---
## Methods
### `getCartItemIdentifier()` → `String`

Gets a cart item identifier for this bundle component.

#### Return

**Type**

String

**Description**

String identifier.

### `getIdentifier()` → `String`

Used to generate a unique identifier that will distinguish this component from other bundle components.

#### Return

**Type**

String

**Description**

String representing identifier.

### `getIsSelectable()` → `Boolean`

Whether or not this session bundle is available for selection.

#### Return

**Type**

Boolean

**Description**

True if this bundle has available inventory.

### `getMessage()` → `String`

Overrides the default getMessage to return the label ThisSessionIsFull if there is no inventory on hand for this component's product.

#### Return

**Type**

String

**Description**

The empty string is inventory is available. Label.ThisSessionIsFull otherwise.

### `getType()` → `String`

Returns the class type name of this bundle component.

#### Return

**Type**

String

**Description**

String value of the SessionBundleComponent class name.

---
