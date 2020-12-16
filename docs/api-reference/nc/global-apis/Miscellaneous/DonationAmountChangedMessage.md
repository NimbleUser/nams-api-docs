# DonationAmountChangedMessage class

Message that gets broadcast whenever the donation amount changes in the Donate Now page.

---
## Constructors
### `DonationAmountChangedMessage(List<znu.OrderLine> orderLines)`

Constructs a DonationAmountChangedMessage with a list of znu.OrderLine as a parameter.
#### Parameters
|Param|Description|
|-----|-----------|
|`orderLines` |  List of order lines with the updated data of the selected donation. |

---
## Methods
### `getParameter()` → `List<znu.OrderLine>`

Returns the znu.Order.

#### Return

**Type**

List<znu.OrderLine>

**Description**

The znu.Order in this message.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

DonationAmountChangedMessage class type.

---
