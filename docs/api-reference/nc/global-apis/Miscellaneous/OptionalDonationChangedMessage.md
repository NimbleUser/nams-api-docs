# OptionalDonationChangedMessage class

Message that gets broadcast with a znu.BundleComponent as a parameter.

---
## Constructors
### `OptionalDonationChangedMessage(Object selectedComponent)`

Constructs a OptionalDonationChangedMessage with a znu.BundleComponent as a parameter.
#### Parameters
|Param|Description|
|-----|-----------|
|`selectedComponent` |  The component which has been selected in the UI, or an instance of NullData. |

---
## Methods
### `getParameter()` → `Object`

Returns the znu.BundleComponent if one was chosen or an instance of NullData if none was chosen.

#### Return

**Type**

Object

**Description**

The znu.BundleComponent in this message or NullData if none was chosen.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

OptionalDonationChangedMessage class type.

---
