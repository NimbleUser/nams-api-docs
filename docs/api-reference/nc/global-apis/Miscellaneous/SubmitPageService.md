# SubmitPageService class

Handles submitting pages.

---
## Properties

### `Instance` → `SubmitPageService`

Gets an instance of SubmitPageService.

---
## Methods
### `submitPage(SubmitPageRequest request)` → `SubmitPageResponse`

Submits the page by first validating the page with a ValidateMessage, and then sending out a SubmitMessage if the validation passed. All data sources will be cleared when the SubmitMessage is sent out.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  SubmitPageRequest instance. |

#### Return

**Type**

SubmitPageResponse

**Description**

SubmitPageResponse containing whether or not the page submission was successful

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
