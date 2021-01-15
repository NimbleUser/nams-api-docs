# BundleService class

Used to get products. Products will be priced throught the pricing manager. Term based products will have terms calculated and proration rules applied. Currently using temporary versions of request/response classes.

---
## Properties

### `Instance` → `BundleService`

Gets instance of BundleService.cls. @return Instance of BundleService.cls.

---
## Methods
### `getBundle(BundleRequest request)` → `Bundle`

Gets bundles based on the specified Bundle Request.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  - Contains information used to create bundle. |

#### Return

**Type**

Bundle

**Description**

Instance of Bundle.

---
