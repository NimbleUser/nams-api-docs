## QPlugin class

`NamespaceAccessible`

Plugin class that introduces Q behavior for use in retrievers.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the plugin information.

##### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
---
### Inner Classes

#### QPlugin.Condition class

`NamespaceAccessible`

Plugin class to allow adding conditions to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Condition()`

`NamespaceAccessible`

Constructs a new Condition instance with no condition.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Condition(QCondition condition)`

`NamespaceAccessible`

Constructs a new Condition instance with the provided QCondition instance.
####### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  QCondition instance to add as a query condition. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the condition.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getCondition()` → `QCondition`

`NamespaceAccessible`

Gets the QCondition condition instance in this instance.

<!-- panels:end -->
---
#### QPlugin.FieldSet class

`NamespaceAccessible`

Plugin class to allow adding field sets to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `FieldSet(Schema.FieldSet fieldSet)`

`NamespaceAccessible`

Constructs a new Fields instance with the provided field set.
####### Parameters
|Param|Description|
|-----|-----------|
|`fieldSet` |  FieldSet to add to the query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the fieldset to select.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
---
#### QPlugin.Fields class

`NamespaceAccessible`

Plugin class to allow adding fields to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Fields()`

`NamespaceAccessible`

Constructs a new Fields instance with no fields.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Fields(Set<String> fieldList)`

`NamespaceAccessible`

Constructs a new Fields instance with the provided set of field names.
####### Parameters
|Param|Description|
|-----|-----------|
|`fieldList` |  Set<String> of field names to add to the query. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Fields(Set<SObjectField> schemaFieldList)`

`NamespaceAccessible`

Constructs a new Fields instance with the provided set of field names.
####### Parameters
|Param|Description|
|-----|-----------|
|`schemaFieldList` |  Set<SObjectField> of fields to add to the query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the fields to select.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getFields()` → `Object`

`NamespaceAccessible`

Gets the fields to select in this instance.

<!-- panels:end -->
---
#### QPlugin.Limits class

`NamespaceAccessible`

Plugin class to allow adding limits to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Limits()`

`NamespaceAccessible`

Constructs a new Limits instance with no limit.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Limits(Integer limits)`

`NamespaceAccessible`

Constructs a new Limits instance with the provided limits integer.
####### Parameters
|Param|Description|
|-----|-----------|
|`limits` |  Integer limit to add as a limit to the query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the limit.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getLimits()` → `Integer`

`NamespaceAccessible`

Gets the limit to apply to the query.

<!-- panels:end -->
---
#### QPlugin.Offset class

`NamespaceAccessible`

Plugin class to allow adding an offset to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Offset()`

`NamespaceAccessible`

Constructs a new Offset instance with no offset.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Offset(Integer offset)`

`NamespaceAccessible`

Constructs a new Offset instance with the provided offset integer.
####### Parameters
|Param|Description|
|-----|-----------|
|`offset` |  Integer offset to add as an offset to the query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the offset.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getOffset()` → `Integer`

`NamespaceAccessible`

Gets the offset to apply to the query.

<!-- panels:end -->
---
#### QPlugin.Order class

`NamespaceAccessible`

Plugin class to allow adding order to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Order()`

`NamespaceAccessible`

Constructs a new Order instance with no order.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `Order(QOrder order)`

`NamespaceAccessible`

Constructs a new Order instance with the provided QOrder instance.
####### Parameters
|Param|Description|
|-----|-----------|
|`condition` |  QOrder instance to add as an order by. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the order.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getOrder()` → `QOrder`

`NamespaceAccessible`

Gets the QOrder instance in this instance.

<!-- panels:end -->
---
#### QPlugin.RelatedFields class

`NamespaceAccessible`

Plugin class to allow adding relationship (__r) fields of a related object to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `RelatedFields(String relationshipName)`

`NamespaceAccessible`

Constructs a new RelatedFields instance with no fields.
####### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `RelatedFields(String relationshipName, Set<String> fieldList)`

`NamespaceAccessible`

Constructs a new RelatedFields instance with the provided set of field names.
####### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |
|`fieldList` |  Set<String> of field names to add to the query. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `RelatedFields(String relationshipName, Set<SObjectField> schemaFieldList)`

`NamespaceAccessible`

Constructs a new RelatedFields instance with the provided set of field names.
####### Parameters
|Param|Description|
|-----|-----------|
|`relationshipName` |  The name of the relationship name using the __r notation. |
|`schemaFieldList` |  Set<SObjectField> of fields to add to the query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the fields to select.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getFields()` → `Object`

`NamespaceAccessible`

Gets the fields to select in this instance.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getRelationshipName()` → `String`

`NamespaceAccessible`

Returns the name of the relationship name using the __r notation.

<!-- panels:end -->
---
#### QPlugin.SubQuery class

`NamespaceAccessible`

Plugin class to allow adding sub-queries to a query.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `SubQuery()`

`NamespaceAccessible`

Constructs a new SubQuery instance with no sub-query.
<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `SubQuery(Q subQuery)`

`NamespaceAccessible`

Constructs a new SubQuery instance with the provided Q sub-query instance.
####### Parameters
|Param|Description|
|-----|-----------|
|`subQuery` |  Q instance to add as a sub-query. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `appendToQuery(Q query)` → `void`

`NamespaceAccessible`

Modifies the Q query instance with the sub-query to select.

####### Parameters
|Param|Description|
|-----|-----------|
|`query` |  The query to append/modify. |

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getSubQuery()` → `Q`

`NamespaceAccessible`

Gets the Q sub-query instance in this instance.

<!-- panels:end -->
---
