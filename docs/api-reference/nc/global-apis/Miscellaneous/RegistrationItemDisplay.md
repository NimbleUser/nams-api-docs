# RegistrationItemDisplay class

Displays registration order items and cart items.

---
## Constructors
### `RegistrationItemDisplay(List<SObject> records)`

Accepts the list of records to display.
#### Parameters
|Param|Description|
|-----|-----------|
|`records` |  the order items or cart items to display. |

---
## Properties

### `EventId` → `Id`

The Id of the event record this registration item looks up to. If there is none, null is returned.

### `EventStartDate` → `DateTime`

The start date of the event for this item display.

---
## Methods
### `getEventStartDateForDisplay()` → `String`

Allows override of the start date field with a String field.

#### Return

**Type**

String

**Description**

EventStartDate by default.

### `getIdStrings()` → `List<String>`

Returns a list of strings that contain the id's needed to get to this item's edit page.

#### Parameters
|Param|Description|
|-----|-----------|
|`itemLine` |  the item line for which to build a display. |

#### Return

**Type**

List<String>

**Description**

A list with the eventRecord Id and the customer Id.

### `getName()` → `String`

Returns the name of the event record if that record is set, the empty string otherwise.

#### Return

**Type**

String

**Description**

The name of the event record as a string if it is set. An empty string otherwise.

---
