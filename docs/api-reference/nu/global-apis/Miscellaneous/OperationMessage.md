# OperationMessage class

Extracts the message returned by a DML operation exception.

---
## Constructors
### `OperationMessage()`

Default constructor.
### `OperationMessage(Exception ex)`

Instantiates an OperationMessage, populates the ErrorException, and Message properties, and sets the Level property to ERROR.
#### Parameters
|Param|Description|
|-----|-----------|
|`Exception` |  the error exception |

---
## Properties

### `ErrorException` → `Exception`

Holds the error exception. For more information about exceptions, see http://www.salesforce.com/us/developer/docs/apexcode/index_Left.htm#CSHID=apex_classes_exception_methods.htm

### `Level` → `OperationMessage`

Indicates the level of severity of the Operation Message. Possible values: OperationMessageLevel.INFO, OperationMessageLevel.WARNING, OperationMessageLevel.ERROR.

### `Message` → `String`

Holds the message string that can be output to users detailing the specifics of the operation result.

### `OperationInput` → `Object`

Holds the OperationInput.

---
