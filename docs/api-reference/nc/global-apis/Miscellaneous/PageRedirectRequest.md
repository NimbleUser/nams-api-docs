# PageRedirectRequest class

A request used for retrieving responses from PageRedirectService.

---
## Constructors
### `PageRedirectRequest(String redirectKeyParam)`

Constructs a PageRedirectRequest for the specified redirect name.
#### Parameters
|Param|Description|
|-----|-----------|
|`redirectKeyParam` |  The key for the redirect you are requesting. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if redirectName is null. |

---
## Properties

### `RedirectKey` → `String`

The key of the redirect being requested. Kept generic so it can represent anything in a given implementation.

---
