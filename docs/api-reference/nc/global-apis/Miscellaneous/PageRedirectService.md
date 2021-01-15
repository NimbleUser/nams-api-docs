# PageRedirectService class

Handles page redirects via a request / response model and an implementation of IPageRedirect.

---
## Properties

### `Instance` → `PageRedirectService`

A static, shared singleton to aceess all accessible methods in this class.

---
## Methods
### `getRedirect(PageRedirectRequest request)` → `PageRedirectResponse`

Gets a PageRedirectResponse for the specified PageRedirectRequest instance via an implementation of IPageRedirect.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  The PageRedirectRequest containing the request to retrieve a response for. |

#### Return

**Type**

PageRedirectResponse

**Description**

A PageRedirectResponse containing the success or failure of the request, as well as additional details

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
