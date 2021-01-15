# GlobalEntryPoint class

Allow entry into specified public classes/methods without defining them as global. 				Allows development of libraries distinctly without commiting to global endpoints until development is complete.

---
## Properties

### `Instance` → `GlobalEntryPoint`

Getter for a static instance of the Global Entry Point so it can be referenced from static contexts. @return An instance of the Global Entry Point.

---
## Methods
### `Enter(String methodName, List<Object> arguments)` → `Object`

Calls public methods with the provided method name and arguments.

#### Parameters
|Param|Description|
|-----|-----------|
|`methodName` |  The full name of the method (including class). Compared against a series of known methods to determine which method to call. |
|`arguments` |  A list of argument Objects. |

#### Return

**Type**

Object

**Description**

The appropriate object for the method called. Always null if the method called returns void.

---
