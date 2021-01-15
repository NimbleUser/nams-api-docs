# BulkFieldSetFormComponentController class

Controls FieldSetForm.component, providing bulk saves to a collection of objects from a single form.

---
## Methods
### `getShouldRender()` → `Boolean`

Determines visibility of this card based upon the data source containing a set of records to save data to.

#### Return

**Type**

Boolean

**Description**

True if getRecords is not null and is not empty.

### `submit(UnitOfWork unitOfWork)` → `void`

Saves the values being input to the form to all queried records from the data source.

#### Parameters
|Param|Description|
|-----|-----------|
|`unitOfWork` |  The transaction context that the saving occurs within. |

---
