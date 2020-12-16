# CallableFactory class

Class which is acts as the global entry point to NU package.

---
## Methods
### `getTaxationCallable()` → `Callable`

Method to get the instance of the callable interface.

#### Return

**Type**

Callable

**Description**

Instance of Callable interface.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if action or callableArguments are is null. |
|`InvalidParameterException` |  if the callableArguments is either |
|`UnsupportedActionException` |  if an unsupported action name was passed. |

#### Example
```
TaxationCallableFactory.getTaxationCallable().call(String action, Map<String,Object>).
         Parameters passed :
         a) Action : defines the specific operation to perform.
            supported actions are : 'voidTransaction'.
         b) Map<String,Object> { 'String' => 'Object' }
         Returns :
```

---
## Inner Classes

### CallableFactory.InvalidParameterException class

Exception class for Invalid Parameter.

---
### CallableFactory.UnsupportedActionException class

Exception class for Unsupported Action.

---
