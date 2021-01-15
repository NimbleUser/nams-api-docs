# PageMessageService class

Provides helper methods for working with Apex page messages

---
## Enums
### Status

---
## Properties

### `Instance` → `PageMessageService`

Gets an instance of PageMessageService. @return PageMessageService instance.

---
## Methods
### `addErrorMessage(String message)` → `void`

Adds an error message to the current page.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The message to add as an error. |

### `addPageMessages(Exception e)` → `void`

Adds page messages for the given exception. For FIELD_CUSTOM_VALIDATION_EXCEPTION errors, caused by validation rules or addError() in triggers, the actual error message is displayed. For other types of errors, a friendly message is displayed.

#### Parameters
|Param|Description|
|-----|-----------|
|`e` |  The exception to add page messages for. |

### `addSuccessMessage(PageReference pageRef)` → `void`

Adds a query string parameter for success status to the page reference specified.

#### Parameters
|Param|Description|
|-----|-----------|
|`pageRef` |  The PageReference instance to add a param to. |

### `addSuccessMessage(String message)` → `void`

Adds a success message to the current page.

#### Parameters
|Param|Description|
|-----|-----------|
|`message` |  The actual error message to show debug-enabled users. |
|`friendlyMessage` |  The friendly error message to show to non-debug users. |
|`message` |  The message to add as an success message. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if either argument is null. |

### `getShouldDisplaySuccessMessage(String successMessage)` → `Boolean`

Determines if we should be showing a success message on this page based upon query params.

#### Parameters
|Param|Description|
|-----|-----------|
|`successMessage` |  The message to check to ensure it has a value for display. |

#### Return

**Type**

Boolean

**Description**

Boolean true if a success message should be displayed, else false.

### `handleOperationResult(OperationResult result)` → `void`

Adds error messages from the result to the page.

#### Parameters
|Param|Description|
|-----|-----------|
|`result` |  The result from which to extract error messages. |

### `setPageMessages(List<ApexPages.Message> messagesToDisplay)` → `void`

Sets the messages that should be displayed in the page, thus overriding the messages in ApexPages.getMessages().

#### Parameters
|Param|Description|
|-----|-----------|
|`messagesToDisplay` |  List of ApexPages.Message that should be displayed on the page. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if messagesToDisplay is null. |

---
