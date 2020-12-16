# EmailContent class

Provides access to a globally accessible String key-value-store for use in passing data to Visualforce email templates.

---
## Methods
### `addContent(String key, String value)` → `void`

Adds the specified value to the map at the specified key.

#### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The key to insert the value for. |
|`value` |  The value to insert at the key. |

### `containsKey(String key)` → `boolean`

Determines if the specified key exists in the content map.

#### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The key determine if the content map contains. |

#### Return

**Type**

boolean

**Description**

True if the specified key exists in the content map, else false.

### `getContent(String key)` → `String`

Gets the content at the specified key.

#### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The key to retrieve the value of. |

#### Return

**Type**

String

**Description**

String The value at the specified key.

---
