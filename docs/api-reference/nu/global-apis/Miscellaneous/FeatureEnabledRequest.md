# FeatureEnabledRequest class

Represents a request to an implementation of IFeatureEnabled to determine if a feature is enabled or not via the API.

---
## Constructors
### `FeatureEnabledRequest(String featureNameParam)`

Builds a FeatureEnabledRequest instance for the specified feature name.
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
