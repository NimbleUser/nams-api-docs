# Message class

A message containing details on an event that occurred.

---
## Constructors
### `Message()`

Constructs a new message.
### `Message(Object parameter)`

Constructs a new message.
#### Parameters
|Param|Description|
|-----|-----------|
|`parameter` |  A generic object parameter containing additional information.n. |

### `Message(ICallback callBackInstance)`

Constructs a new message with the specified ICallback instance.
#### Parameters
|Param|Description|
|-----|-----------|
|`callBackInstance` |  The instance of ICallback. |

---
## Properties

### `Callback` → `I`

A callback that may be invoked by the recipients to return a result.

### `Parameter` → `Object`

An optional parameter containing additional information.

---
## Methods
### `getType()` → `Type`

Gets the type of an instance of the Message class. This method should be overridden by sub-classes.

#### Parameters
|Param|Description|
|-----|-----------|
|`eventName` |  The name of the event that occurred. |
|`eventName` |  The name of the event that occurred. |
|`parameter` |  An optional parameter containing additional information. |
|`eventName` |  The name of the event that occurred. |
|`parameter` |  An optional parameter containing additional information. |
|`callback` |  A callback that may be invoked by the recipients to return a result. |

#### Return

**Type**

Type

**Description**

The class type.

### `setParameter(Object obj)` → `void`

Sets the Parameter property for an instance of Message.

#### Parameters
|Param|Description|
|-----|-----------|
|`obj` |  The object to assign to Parameter. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if obj is null. |

---
## Inner Classes

### Message.IParameter interface

An interface that message sub-classes can implement to more easily retrieve message parameters.

---
#### Methods
##### `getParameter()` → `Object`
---
