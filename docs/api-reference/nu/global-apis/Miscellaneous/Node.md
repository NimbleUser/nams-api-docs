# Node class

The node class represents a single point a hierarchical data set. This class can be extended to create nodes that represent different types of data.

---
## Constructors
### `Node(String nodeIdParam, String nodeNameParam)`

Constructs a new node from the specified string id and Name.
#### Parameters
|Param|Description|
|-----|-----------|
|`nodeIdParam` |  The id of the new node as a string. |
|`nodeNameParam` |  The name of the new node. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if nodeIdParam is null. |
|`ArgumentNullException` |  if nodeNameParam is null, blank, or empty. |

### `Node(String nodeIdParam, String nodeNameParam, String relationshipIdParam)`

Constructs a new node from the specified string id and Name.
#### Parameters
|Param|Description|
|-----|-----------|
|`nodeIdParam` |  The id of the new node as a string. |
|`nodeNameParam` |  The name of the new node. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if nodeIdParam or relationshipIdParam is null. |
|`ArgumentNullException` |  if nodeNameParam is null, blank, or empty. |

---
## Methods
### `addChildren(List<Node> newChildren)` → `void`

Adds a list of nodes representing the children of the current node.

#### Parameters
|Param|Description|
|-----|-----------|
|`newChildren` |  A list of nodes. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if newChildren is null. |

### `canAccessChildren()` → `Boolean`

Always returns true to suggest that this node can have children. This method can be overridden.

#### Return

**Type**

Boolean

**Description**

True.

### `getChildren()` → `List<Node>`

Gets the immediate children of this node.

#### Return

**Type**

List<Node>

**Description**

A list of Nodes.

### `getId()` → `String`

The Id as a string of this node. The Id is a string to support any type of object.

#### Return

**Type**

String

**Description**

The Id, as a string, of the record.

### `getName()` → `String`

Gets the name of this node from the internal account record.

#### Return

**Type**

String

**Description**

s The account name as a string.

### `getRelationshipId()` → `String`

Gets the Id, as a string, for the relationship between a parent and child record. The Id is a string to support any type of object.

#### Return

**Type**

String

**Description**

s The Id, as a string, of the relationship.

### `hasChildren()` → `Boolean`

Determines whether or not this node has children.

#### Return

**Type**

Boolean

**Description**

True if the node has children.

---
