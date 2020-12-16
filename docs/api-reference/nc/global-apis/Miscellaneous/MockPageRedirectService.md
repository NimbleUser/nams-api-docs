# MockPageRedirectService class

A mock implementation of IPageRedirect used in unit tests.

---
## Properties

### `DEFAULT_RESULT_REDIRECT_URL` → `String`

The default redirect URL to return in tests utilizing this class.

### `Instance` → `MockPageRedirectService`

A singleton to allow external access for testing purposes.

---
## Methods
### `getRedirect(PageRedirectRequest request)` → `PageRedirectResponse`

Gets a PageRedirectResponse containing a mock success or failure. If setFailed has not been called, will be successful.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  Not used in this mock service. |

#### Return

**Type**

PageRedirectResponse

**Description**

A mock MockPageRedirectResponse.

### `setFailed()` → `void`

Sets the mock result to be failed.

### `setSucceeded()` → `void`

Sets the mock result to be successful.

### `withName(String redirectKeyParam)` → `void`

Sets the mock redirect name to utilize.

#### Parameters
|Param|Description|
|-----|-----------|
|`redirectKeyParam` |  The redirect name to match. |

---
