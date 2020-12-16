# TrafficService class

Wraps an ITrafficService implementation. Originally created to obfuscate calls to the CookieTrafficService, to avoid globally exposing in case of deprecation.

---
## Properties

### `Instance` → `TrafficService`

Singleton instance of TrafficService.

---
## Methods
### `getMessage(PageReference pageReferenceParam)` → `String`

Gets the message on the passed in PageReference. If no message is attached to the PageReference an empty string is returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`PageReference` |  The PageReference that contains the message. |

#### Return

**Type**

String

**Description**

String Message on the PageReference.

### `getRecordIdForPage(PageReference pageReferenceParam, SObjectType sObjectTypeParam)` → `Id`

Returns the record Id saved to the passed in PageReference.

#### Parameters
|Param|Description|
|-----|-----------|
|`pageReferenceParam` |  The PageReference instance to use. |
|`sObjectTypeParam` |  The SObjectType of the record Id being retrieved. |

### `insertMessage(PageReference targetPage, String messageToInsert)` → `void`

Inserts a message for the target page.

#### Parameters
|Param|Description|
|-----|-----------|
|`targetPage` |  The page this message will be inserted on. |
|`messageToInsert` |  The text of the message to insert. |

### `setPreviousRecordIdToPage(PageReference pageReferenceParam, SObjectType sObjectTypeParam)` → `void`

Sets the previous record Id value to the passed in PageReference.

#### Parameters
|Param|Description|
|-----|-----------|
|`pageReferenceParam` |  The PageReference instance that will be used to save a record Id to. |
|`sObjectTypeParam` |  The SObjectType the value represents. |

### `setRecordIdToPage(PageReference pageReferenceParam, Id recordId)` → `void`

Saves an recordId to the passed in PageReference instance.

#### Parameters
|Param|Description|
|-----|-----------|
|`pageReferenceParam` |  The PageReference instance that will be used to save a record Id to. |

---
