## AdditionalSettingCollection class

`NamespaceAccessible`

Collection of [AdditionalSetting](apis/Core/AdditionalSetting.md).

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `add(AdditionalSetting setting)` → `void`

`NamespaceAccessible`

Adds an [AdditionalSetting](apis/Core/AdditionalSetting.md) to this collection.

##### Parameters
|Param|Description|
|-----|-----------|
|`setting` |  The setting to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `containsKey(String key)` → `Boolean`

`NamespaceAccessible`

Whether an [AdditionalSetting](apis/Core/AdditionalSetting.md) for the provided key exists in this collection or not.

##### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The key. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(String key)` → `AdditionalSetting`

`NamespaceAccessible`

Returns the [AdditionalSetting](apis/Core/AdditionalSetting.md) belonging to the passed in key. Null is returned if a setting with that key does not exist in this collection.

##### Parameters
|Param|Description|
|-----|-----------|
|`key` |  The setting's key. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getAll()` → `List<AdditionalSetting>`

`NamespaceAccessible`

Returns all [AdditionalSetting](apis/Core/AdditionalSetting.md) in this collection.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance()` → `AdditionalSettingCollection`

`NamespaceAccessible`

Returns an empty AdditionalSettingCollection collection.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `newInstance(List<AdditionalSetting> settings)` → `AdditionalSettingCollection`

`NamespaceAccessible`

Returns a new AdditionalSettingCollection collection for the provided list.

##### Parameters
|Param|Description|
|-----|-----------|
|`settings` |  The list of [AdditionalSetting](apis/Core/AdditionalSetting.md) to initialize this collection with. |

<!-- panels:end -->
---
