# SubmitOrderMessage class

Message that gets broadcast with a znu.Order as a parameter. Cards listening to this message will populate the order accordingly.

---
## Constructors
### `SubmitOrderMessage(znu.Order orderParam)`

Constructs a SubmitOrderMessage with a znu.Order as a parameter.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderParam` |  znu.Order. |

---
## Methods
### `getParameter()` → `znu.Order`

Returns the znu.Order.

#### Return

**Type**

znu.Order

**Description**

The znu.Order in this message.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

SubmitOrderMessage class type.

---
