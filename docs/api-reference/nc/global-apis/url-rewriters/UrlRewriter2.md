# UrlRewriter2 class

Url Rewriter for Community Hub. Will translate friendly urls and serve up a dynamic template if a Page Setting is configured with the Page__c.DynamicPageUrl__c.

---
## Constructors
### `UrlRewriter2()`

Constructs an instance of UrlRewriter2.
---
## Methods
### `generateUrlFor(List<PageReference> pages)` → `List<PageReference>`

Maps a List of PageReferences to a list of friendly URL PageReferences. Used when displaying links in Visualforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`pages` |  List of PageReferences. |

#### Return

**Type**

List<PageReference>

**Description**

List of friendly URL PageReferences.

### `mapRequestUrl(PageReference requestedPage)` → `PageReference`

Maps an incoming url to a Visualforce page. If a Visualforce page does not exist a friendly url is mapped to a dynamic page. If a Page Setting is found but there is no dynamic page url configured the AccountDynamicPage will be used.

#### Parameters
|Param|Description|
|-----|-----------|
|`requestedPage` |  The url as requested from the client. |

#### Return

**Type**

PageReference

**Description**

The page that is rendered from the server.

---
