# CarouselItem class

This object represents carousel items that will be displayed on card type.

---
## Constructors
### `CarouselItem(Id recordId, String recordName, String url)`

Construct an instance of CarouselItem.
#### Parameters
|Param|Description|
|-----|-----------|
|`recordId` |  The Id of record. |
|`recordName` |  The Name of the record. |
|`url` |  The url to link this carousel item to. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any param is null. |

---
## Properties

### `ImageUrl` → `String`

If set, represents the ImageUrl which was used to populate this object.

### `RecordId` → `Id`

If set, represents the Record Id which was used to populate this object.

### `RecordName` → `String`

If set, represents the Name of the record which was used to populate this object.

### `RecordType` → `CarouselItemsFactory.CarouselItem`

Carousel Item Record Type ENUM to send the Type of Record.

### `RecordTypeName` → `String`

A String which stores the record type of the Carousel Item.

### `Url` → `String`

If set, represents the Url which was used to populate this object.

---
