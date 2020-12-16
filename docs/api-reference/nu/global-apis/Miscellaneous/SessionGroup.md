# SessionGroup class

Represents the EventSessionGroup__c object.

---
## Properties

### `Description` → `String`

Accesses the Description__c field of the EventSessionGroup__c associated with this session group. @return The description field as a string.

### `Name` → `String`

Accesses the Name field of the EventSessionGroup__c associated with this session group. @return The name field as a string.

---
## Methods
### `IsComplete()` → `OperationResult`

Validates that this session group is ready to submit: If session selection is not required return a successful operation result. If a component is selected and has inventory available return a successful operation result. If session selection is required but all sessions are full return a succesful operation result. Otherwise return a failed operation result including the name of our session group.

#### Return

**Type**

OperationResult

**Description**

An OperationResult indicating success or failure and explaining that result via messages.

### `getSelectionRequiredMessage()` → `String`

The message to display when a selection is required and nothing is selected.

#### Return

**Type**

String

**Description**

The selection required message.

### `isSelectionRequired()` → `Boolean`

Determines if selection is required based on the session's SessionSelectionRequired__c field and whether or not the tracked components are available for selection.

#### Return

**Type**

Boolean

**Description**

True when the field is checked and selectable components are present. False otherwise.

---
