# ReceivedRecordListComponentController class

Component Controller for the received record list card type, which is a record list subclass that received a list of records to display, instead of using a data source.

---
## Methods
### `doHandleMessage(Message messageReceived)` → `void`

Handles the RecordsMessage message, which sets the record Ids this card will be displaying.

#### Parameters
|Param|Description|
|-----|-----------|
|`messageReceived` |  Instance of the mesage received. |

### `getRecords()` → `List<SObject>`

Overridden getRecords() method that returns a list of records to display based on the records received through the RecordsMessage.

#### Return

**Type**

List<SObject>

**Description**

List of records to display. If the RecordsMessage has not being received, returns

### `getShouldRender()` → `Boolean`

Whether or not the RecordList.component should render.

#### Return

**Type**

Boolean

**Description**

True if the message has been received with records, false otherwise.

### `initialize()` → `void`

Subscribes to the RecordsMessage to set the recordsToDisplay list.

---
