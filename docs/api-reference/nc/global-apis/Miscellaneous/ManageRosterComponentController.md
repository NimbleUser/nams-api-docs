# ManageRosterComponentController class

Controls ManageRoster.component.

---
## Methods
### `getDataFromDataSource()` → `List<znu__Affiliation__c>`

Retrieves data from the data source.

#### Return

**Type**

List<znu__Affiliation__c>

**Description**

A list of affiliation records from the data source.

### `getDataFromDataSource(List<Id> childAccountIds)` → `List<znu__Affiliation__c>`

Retrieves data from the data source with the specified child account Ids.

#### Parameters
|Param|Description|
|-----|-----------|
|`childAccountIds` |  A list of account Ids to use when filtering the retrieved list of affiliations. |

#### Return

**Type**

List<znu__Affiliation__c>

**Description**

A list of affiliation records from the data source whose child account Ids include the specified list.

### `getShouldRender()` → `Boolean`

Determines whether or not this card should render.

#### Return

**Type**

Boolean

**Description**

True if the superclass getShouldRender returns true and a parent Id has been set in cookies. Else false.

### `initialize()` → `void`

Adds in the field set to the query service.

---
