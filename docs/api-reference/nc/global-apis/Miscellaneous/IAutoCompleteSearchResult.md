# IAutoCompleteSearchResult interface

Interface used for custom logic to be used in an AutoCompleteSearch.component's controller.

---
## Methods
### `findRecords(AutoCompleteSearchRequest request)` → `List<SObject>`

Returns a list of SObjects to be displayed in an AutoCompleteSearch.component.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  AutoCompleteSearchRequest with information regarding the records that should be returned. |

#### Return

**Type**

List<SObject>

**Description**

A list of matching records.

---
