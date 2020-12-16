# StoreListComponentController class

Collects the requested products based on category. If no category is selected then it will show all products

---
## Properties

### `SearchQuery` → `String`

The search query specified by a user. @return The String search query.

---
## Methods
### `getAdvancedStoreList()` → `StoreList`

Returns the AdvancedStoreList implementation that will be used on this card.

#### Return

**Type**

StoreList

**Description**

AdvancedStoreList implementation.

### `getSearchList()` → `StoreList`

Returns the SearchList implementation that will be used on this card.

#### Return

**Type**

StoreList

**Description**

SearchList implementation.

### `initialize()` → `void`

Gets the FilterComponentController that will be used to control button Filters.

#### Return

**Type**

void

**Description**

StoreFilterComponentController that will control the button Filters.

---
