## Identities class

`NamespaceAccessible`

Library of identity function helpers to group objects using the R framework.

---
### Properties

#### `Name` → `Func`

`NamespaceAccessible`

Returns a {@link Func} that groups {@link IName} objects by their name. @example List<INamed> myNamedObjects = new List<INamed> { new MyNamedObject() }; R.of(myNamedObjects).indexBy(Identities.Name).debug();

---
### Inner Classes

#### Identities.NamedIdentityFunc class

`NamespaceAccessible`

Groups {@link IName} objects by their name.

---
##### Methods
<!-- panels:start -->
<!-- div:left-panel -->
###### `execN(List<Object> args)` → `Object`

`NamespaceAccessible`
<!-- panels:end -->
---
