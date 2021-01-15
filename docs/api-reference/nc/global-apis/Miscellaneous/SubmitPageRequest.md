# SubmitPageRequest class

Request class when using the SubmitPageService.

---
## Constructors
### `SubmitPageRequest()`

Empty constructor for instantiating class.
### `SubmitPageRequest(QueryService querier, MessageService messages)`

Constructor for instantiating class.
#### Parameters
|Param|Description|
|-----|-----------|
|`querier` |  QueryService instance to use. |
|`messages` |  MessageService instance to use. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

### `SubmitPageRequest(QueryService querier, MessageService messages, Boolean validatePage)`

Constructor for instantiating class.
#### Parameters
|Param|Description|
|-----|-----------|
|`querier` |  QueryService instance to use. |
|`messages` |  MessageService instance to use. |
|`validatePage` |  Boolean value specifying whether or not to validate the page before submission. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Properties

### `Messages` → `MessageService`

MessageService to be used.

### `Querier` → `QueryService`

QueryService to be used.

### `ValidatePage` → `Boolean`

Indicates whether or not the page should be validated before submission.

---
