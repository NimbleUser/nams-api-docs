# HistoryObjectUtil class

Exposes methods and functions commonly used when working with the Nimble AMS history objects.

---
## Methods
### `populateEntityName(List<sObject> objRecords, String lookupFieldName, String entityFieldName)` → `void`

Sets the Entity Name from the Product Lookup field specified on the List of sObject records.

#### Parameters
|Param|Description|
|-----|-----------|
|`List<sObject>` |  the List of sObjects that have the Product Lookup field from which to generate the Entity Name |
|`String` |  the name of the Product Lookup field on the sObject |
|`String` |  the name of the Entity Name field on the sObject |

---
