## TriggeringContext class

`NamespaceAccessible`

Represents the context in which a trigger is being run.

---
### Constructors
<!-- panels:start -->
<!-- div:left-panel -->
#### `TriggeringContext()`

`NamespaceAccessible`

Constructs a new TriggeringContext.
<!-- panels:end -->
---
### Properties

#### `NewRecordList` → `List<SObject>`

`NamespaceAccessible`

List of new records being inserted or updated.

#### `NewRecordMap` → `SObject>`

`NamespaceAccessible`

Map of new records being inserted or updated.

#### `OldRecordMap` → `SObject>`

`NamespaceAccessible`

Map of old records updated or deleted.

#### `Operation` → `Trigger`

`NamespaceAccessible`

The operation under which this trigger is being executed.

---
### Methods
<!-- panels:start -->
<!-- div:left-panel -->
#### `abort()` → `void`

`NamespaceAccessible`

Aborts the sequence of trigger steps.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isAborted()` → `Boolean`

`NamespaceAccessible`

Whether the sequence of triggers is aborted.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isAfterDelete()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is after delete.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isAfterInsert()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is after insert.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isAfterUndelete()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is after undelete.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isAfterUpdate()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is after update.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isBeforeDelete()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is before delete.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isBeforeInsert()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is before insert.

<!-- panels:end -->
<!-- panels:start -->
<!-- div:left-panel -->
#### `isBeforeUpdate()` → `Boolean`

`NamespaceAccessible`

Whether the trigger context is before update.

<!-- panels:end -->
---
