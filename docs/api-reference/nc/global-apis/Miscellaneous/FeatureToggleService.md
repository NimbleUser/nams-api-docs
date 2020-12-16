# FeatureToggleService class

A global API endpoint for package subscribers to determine whether or not a given feature is enabled based upon a standard request / response pattern.

---
## Properties

### `Instance` → `FeatureToggleService`

A static, shared singleton to aceess all accessible methods in this class.

---
## Methods
### `isFeatureEnabled(FeatureToggleRequest request)` → `FeatureToggleResponse`

Determines if the feature in the specified request is enabled, or not.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A FeatureToggleRequest instance containing details about the feature being requested. |

#### Return

**Type**

FeatureToggleResponse

**Description**

A FeatureToggleResponse instance, indicating whether or not the requested feature is enabled, as well

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if request is null. |

---
