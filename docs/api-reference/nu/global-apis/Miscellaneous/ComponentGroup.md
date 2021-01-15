# ComponentGroup class

The base class for an object representing a collection of similar bundle components.

---
## Properties

### `Description` → `String`

Description of the component group.

### `Title` → `String`

Title of the component group.

---
## Methods
### `IsComplete()` → `OperationResult`

Implement this to enable validation of the componentGroup's contents. Returns a successful OperationResult by default.

#### Parameters
|Param|Description|
|-----|-----------|
|`components` |  The bundle components that make up this group. |

#### Return

**Type**

OperationResult

**Description**

An OperationResult object.

### `getComponents()` → `List<BundleComponent>`

Retrieves this group's list of bundles components.

#### Return

**Type**

List<BundleComponent>

**Description**

A list of bundle components.

### `getSelectionRequiredMessage()` → `String`

The message to display when a selection is required and nothing is selected. The default message is a blank string.

#### Return

**Type**

String

**Description**

The selection required message. The default is a blank string.

### `isSelectionRequired()` → `Boolean`

Determines if selection is required or not. The default is not required.

#### Return

**Type**

Boolean

**Description**

True when selection is required. False when not required.

---
