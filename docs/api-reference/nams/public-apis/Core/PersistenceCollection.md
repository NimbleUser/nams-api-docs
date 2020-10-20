## PersistenceCollection class

`NamespaceAccessible`

Wraps a list of IPersistenceSupport. Helps with the tracking of IPersistenceSupport objects for them to be automatically registered into the PersistenceService based on changes made to them.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `PersistenceCollection()`

`NamespaceAccessible`

Constructs a new PersistenceCollection.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `PersistenceCollection(List<IPersistenceSupport> initialList)`

`NamespaceAccessible`

Constructs a new PersistenceCollection.
##### Parameters
|Param|Description|
|-----|-----------|
|`initialList` |  A List<IPersistenceSupport> to initialize this collection with. |

<!-- panels:end -->
---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `add(IPersistenceSupport listElement)` → `void`

`NamespaceAccessible`

Adds an element to the end of the list.

##### Parameters
|Param|Description|
|-----|-----------|
|`listElement` |  IPersistenceSupport element to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `add(Integer index, IPersistenceSupport listElement)` → `void`

`NamespaceAccessible`

Inserts an element into the list at the specified index position.

##### Parameters
|Param|Description|
|-----|-----------|
|`index` |  Position to insert element into. |
|`listElement` |  Element to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addAll(List<IPersistenceSupport> fromList)` → `void`

`NamespaceAccessible`

Adds all of the elements in the specified list to the list that calls the method.

##### Parameters
|Param|Description|
|-----|-----------|
|`fromList` |  List to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `addAll(Set<IPersistenceSupport> fromSet)` → `void`

`NamespaceAccessible`

Add all of the elements in specified set to the list that calls the method.

##### Parameters
|Param|Description|
|-----|-----------|
|`fromSet` |  Set to add. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `clear()` → `void`

`NamespaceAccessible`

Removes all elements from a list, consequently setting the list's length to zero.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `contains(IPersistenceSupport listElement)` → `Boolean`

`NamespaceAccessible`

Returns true if the list contains the specified element.

##### Parameters
|Param|Description|
|-----|-----------|
|`listElement` |  The list element to look for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `get(Integer index)` → `IPersistenceSupport`

`NamespaceAccessible`

Returns the list element stored at the specified index.

##### Parameters
|Param|Description|
|-----|-----------|
|`index` |  Index to search for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getList()` → `List<IPersistenceSupport>`

`NamespaceAccessible`

Returns the wrapped list.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `indexOf(IPersistenceSupport listElement)` → `Integer`

`NamespaceAccessible`

Returns the index of the first occurrence of the specified element in this list. If this list does not contain the element, returns -1.

##### Parameters
|Param|Description|
|-----|-----------|
|`listElement` |  Element to search for. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isEmpty()` → `Boolean`

`NamespaceAccessible`

Returns true if the list has zero elements.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `remove(Integer index)` → `IPersistenceSupport`

`NamespaceAccessible`

Removes the list element stored at the specified index, returning the element that was removed.

##### Parameters
|Param|Description|
|-----|-----------|
|`index` |  Index of the element to return. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `set(Integer index, IPersistenceSupport listElement)` → `void`

`NamespaceAccessible`

Sets the specified value for the element at the given index.

##### Parameters
|Param|Description|
|-----|-----------|
|`index` |  The index of the list element to set. |
|`listElement` |  The value of the list element to set. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `size()` → `Integer`

`NamespaceAccessible`

Returns the number of elements in the list.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `sort()` → `void`

`NamespaceAccessible`

Sorts the items in the list in ascending order.

<!-- panels:end -->
---
