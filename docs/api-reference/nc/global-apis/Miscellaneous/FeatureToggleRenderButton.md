# FeatureToggleRenderButton class

Defines a button which should only render if a specific feature is active.

---
## Constructors
### `FeatureToggleRenderButton(Button.Request buttonRequest)`

Creates the button using the constructor for the FeatureToggleRenderButton object.
#### Parameters
|Param|Description|
|-----|-----------|
|`buttonRequest` |  Button request used to create a Button instance. |

---
## Methods
### `getFeatureName()` → `String`

The name of the feature to check if it is active in a getShouldRender call sequence.

#### Return

**Type**

String

**Description**

The String representation of a feature name to utilize in a call to FeatureToggleService.

---
