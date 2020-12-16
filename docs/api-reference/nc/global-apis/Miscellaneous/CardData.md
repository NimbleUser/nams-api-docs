# CardData class

Allows page controllers to communicate with card component controllers via map.

---
## Constructors
### `CardData()`

Constructs an instance of CardData to wrap a Map<String, Object> to be used in a component attribute.
### `CardData(Map<String, Object> mapData)`

Constructs an instance of CardData to wrap a Map<String, Object> to be used in a component attribute.
#### Parameters
|Param|Description|
|-----|-----------|
|`Map<String,` |  Object> of data to communicate to / from a Card. |

---
## Properties

### `Data` → `Object>`

### `Messages` → `MessageService`

The MessageService instance, allowing communication between components and the page controller.

### `Querier` → `QueryService`

The QueryService instance, allowing components to access records with the specified set of fields queried.

---
