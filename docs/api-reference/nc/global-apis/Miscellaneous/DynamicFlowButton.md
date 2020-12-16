# DynamicFlowButton class

A button which allows for the dynamic instantiation of a Flow via metadata configuration.

---
## Constructors
### `DynamicFlowButton(Button.Request buttonRequest)`

Creates the button using the constructor for the DynamicFlowButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
## Properties

### `INPUT_SOBJECTS_MAP_KEY` → `String`

The map key for the value which will contain the SObject(s) returned from the data source to input into the floe.

### `OUTPUT_FINISH_URL_VARIABLE_NAME` → `String`

The name of a variable output from the flow which optionally contains a URL to go to when complete.

---
## Methods
### `execute()` → `Action.Result`

Runs the configured flow for this button.

#### Return

**Type**

Action.Result

**Description**

A successful action result.

### `getCanExecuteAction()` → `Boolean`

This button can always execute an action.

#### Return

**Type**

Boolean

**Description**

True.

### `getFlowInput()` → `Object>`

Gets the input variables for the flow based upon data from the configured data source.

#### Return

**Type**

Object>

**Description**

A Map<String, Object> of input variables for the flow.

### `getFlowName()` → `String`

Gets the flow name configured for this button.

#### Return

**Type**

String

**Description**

The name of the flow configured for this button.

#### Throws
|Exception|Description|
|---------|-----------|
|`ConfigurationException` |  if the button is configured without a flow name. |

---
## Inner Classes

### DynamicFlowButton.Constructor class

Constructs a DynamicFlowButton instance.

---
#### Methods
##### `construct(Button.Request buttonRequest)` → `DynamicFlowButton`

Constructs a Button to display on a page.

###### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  A request for a button instance. |

###### Return

**Type**

DynamicFlowButton

**Description**

DynamicFlowButton Button which has been constructed.

###### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if buttonRequest is null. |

---
