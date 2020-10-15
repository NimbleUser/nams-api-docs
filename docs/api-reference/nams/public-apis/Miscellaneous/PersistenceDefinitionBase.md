## PersistenceDefinitionBase class

`NamespaceAccessible`

Represents how an API's model class can be persisted in the database.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `getChildren()` → `List<IPersistenceSupport>`

`NamespaceAccessible`

Override this method to return all children contained by the model class defined by this object.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getModel()` → `IPersistenceSupport`

`NamespaceAccessible`

Returns the model class set for this definition.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `getRelationships()` → `List<PersistenceDefinitionBase.Relationship>`

`NamespaceAccessible`

Override this method to return any relationship representation the model defined by this object has.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onAfterRegister()` → `void`

`NamespaceAccessible`

Executed after the Model is registered as a record in the unit of work, but before it has been committed to the database.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `onBeforeRegister()` → `void`

`NamespaceAccessible`

Executed before the Model is registered as a record in the unit of work.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `setModel(IPersistenceSupport model)` → `void`

`NamespaceAccessible`

Sets the model class for this definition.

##### Parameters
|Param|Description|
|-----|-----------|
|`model` |  The model class to set for this definition. |

<!-- panels:end -->
---
### Inner Classes

#### PersistenceDefinitionBase.Relationship class

`NamespaceAccessible`

Represents a database relationship between the model and any parent it has.

---
##### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
###### `Relationship(Schema.SObjectField relatedToField, IPersistenceSupport parent)`

`NamespaceAccessible`

Constructs a new PersistenceDefinitionBase.Relationship object.
####### Parameters
|Param|Description|
|-----|-----------|
|`relatedToField` |  The parent lookup or master-detail field. |
|`parent` |  The parent model class. |

<!-- panels:end -->
---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `getParent()` → `IPersistenceSupport`

`NamespaceAccessible`

Returns the parent model class.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
###### `getRelatedToField()` → `Schema.SObjectField`

`NamespaceAccessible`

Returns the parent lookup or master-detail field.

<!-- panels:end -->
---
