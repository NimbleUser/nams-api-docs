# CardIsPresentMessage class

A message for one card to broadcast to one or more subscribers, indicating it is present on a page.

---
## Constructors
### `CardIsPresentMessage(String broadcastingCardName)`

Constructs a CardIsPresentMessage with a card name as a parameter.
#### Parameters
|Param|Description|
|-----|-----------|
|`broadcastingCardName` |  The card who is sending this message saying "Hey! I'm here! Look at me!". |

---
## Methods
### `getParameter()` → `String`

Returns the card name.

#### Return

**Type**

String

**Description**

The card name in this message.

### `getType()` → `Type`

Returns the Type of this message.

#### Return

**Type**

Type

**Description**

CardIsPresentMessage class type.

---
