# FeatureToggleRequest class

Represents a request to an implementation of IFeatureToggle to determine if a feature is enabled or not via the API.

---
## Constructors
### `FeatureToggleRequest(String featureNameParam)`

Builds a FeatureToggleRequest instance for the specified feature name.
#### Parameters
|Param|Description|
|-----|-----------|
|`featureNameParam` |  The name of the feature you're requesting information regarding. |

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any argument is null. |

---
## Properties

### `FeatureName` → `String`

he name of the feature you're requesting information regarding.

---
