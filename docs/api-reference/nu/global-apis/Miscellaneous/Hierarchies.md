# Hierarchies class

The Hierarchies class represents a series of hierarchical data using nodes.

---
## Constructors
### `Hierarchies(List<Node> topLevelNodes)`

Constructor used to create hierarchies.
#### Parameters
|Param|Description|
|-----|-----------|
|`topLevelNodes` |  A list of nodes that represent the top of each hierarchy. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if topLevelNodes is null. |

---
## Methods
### `getAllNodeIds()` → `Set<String>`

Gets all node ids as strings in this hierarchy.

#### Return

**Type**

Set<String>

**Description**

A set of all node ids as strings.

### `getAllNodeRelationshipIds()` → `Set<String>`

Gets all node relationship ids as strings in this hierarchy.

#### Return

**Type**

Set<String>

**Description**

A set of all node relationship ids as strings.

### `getChildren(String nodeId)` → `List<Node>`

Gets a list of nodes representing the immediate children of a node with the specified node id.

#### Parameters
|Param|Description|
|-----|-----------|
|`nodeId` |  The id as a string of the node to get children for. |

#### Return

**Type**

List<Node>

**Description**

A list of nodes.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if nodeId is null. |

### `getNode(String nodeId)` → `Node`

Gets a node with the specified Id as a string. If no node in the hierarchies has the specified Id, null is returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`nodeId` |  The Id as a string of the node to retrieve. |

#### Return

**Type**

Node

**Description**

A node instance or null if no node is found.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if nodeId is null. |

### `getNodes()` → `List<Node>`

Gets the nodes at the top of each hierarchy represented by this class.

#### Return

**Type**

List<Node>

**Description**

A list of nodes.

### `getNodesById()` → `Node>`

Gets all nodes in this hierarchy mapped by the node id.

#### Return

**Type**

Node>

**Description**

A map of nodes by their id.

### `hasNode(String nodeId)` → `Boolean`

Determines if any of the hierarchies contain a node with the specified Id as a string.

#### Parameters
|Param|Description|
|-----|-----------|
|`nodeId` |  The id as a string of the node to check for. |

#### Return

**Type**

Boolean

**Description**

True if the hierarchies contain the specified node.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if nodeId is null. |

---
