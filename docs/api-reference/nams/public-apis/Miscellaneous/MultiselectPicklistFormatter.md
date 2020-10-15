## MultiselectPicklistFormatter class

`NamespaceAccessible`

Helps manage object variations for Multiselect Picklists.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `asString()` → `String`

`NamespaceAccessible`

Converts a string set to a semicolon separated string.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `asStringSet()` → `Set<String>`

`NamespaceAccessible`

Converts the semicolon separated string value into a Set of Strings.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(String toSplit)` → `MultiselectPicklistFormatter`

`NamespaceAccessible`

Constructs a new MultiselectPicklistFormatter instance.

##### Parameters
|Param|Description|
|-----|-----------|
|`toSplit` |  The semicolon separated string to be split. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(Set<String> toJoin)` → `MultiselectPicklistFormatter`

`NamespaceAccessible`

Constructs a new MultiselectPicklistFormatter instance.

##### Parameters
|Param|Description|
|-----|-----------|
|`toJoin` |  The string set to join. |

<!-- panels:end -->
---
