# ArgumentNullException class

For throwing errors when an argument is unexpectedly null.

---
## Properties

### `ParamName` → `String`

---
## Methods
### `throwIfBlank(String param, String paramName)` → `void`

Throw an ArgumentNullException if the provided 				parameter (or its provided name) are empty, 				whitespace or null.

#### Parameters
|Param|Description|
|-----|-----------|
|`param` |  The parameter to check. |
|`paramName` |  The name of the parameter (for reportage). |

### `throwIfNull(Object param, String paramName)` → `void`

Throw an ArgumentNullException if the provided 				parameter is null, or if the provided parameter 				name is empty, whitespace or null.

#### Parameters
|Param|Description|
|-----|-----------|
|`param` |  The parameter to check. |
|`paramName` |  The name of the parameter (for reportage). |

---
