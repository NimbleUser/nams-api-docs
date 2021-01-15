# Card class

This object represents a card on a page in Community Hub.

---
## Properties

### `Buttons` → `List<Button>`

A list of buttons to display on a card. @return A list of buttons assigned to this card.

### `CSSClass` → `String`

A CSS class to add to the standard "card" class on a card. @return The CSS class assigned to this card (if any).

### `DescriptionLabel` → `String`

Name of the custom label which displays this card's description. @return The name of the custom label assigned to this card if set, else null.

### `FieldSetName` → `String`

For cards that use a field set, this is the field set associated with this card. @return The name of the field set associated with this card.

### `HasButtons` → `Boolean`

Tells you if this card has any buttons. @return True if this card has buttons, else false.

### `HeadingLabel` → `String`

The name of the custom label with the heading that should be displayed for this card. @return The name of the custom label associated with this card if set, else null.

### `IDataSourceName` → `String`

The name of the IDataSource class attached to this card. @return The name of the IDataSource class that provides data to this card.

### `NoRecordsLabel` → `String`

A message to display if the card contains no record(s). @return The label to display when card contains no records.

### `Type` → `String`

The type of card this is. @return The type of this card.

---
## Methods
### `getConfiguration()` → `String`

Gets the Configuration__c value for this card.

#### Return

**Type**

String

**Description**

The configuration for of this card as a string.

---
