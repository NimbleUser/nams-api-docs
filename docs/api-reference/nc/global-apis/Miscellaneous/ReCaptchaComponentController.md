# ReCaptchaComponentController class

Controls the ReCaptcha card component.

---
## Properties

### `ResponseToken` → `String`

Holds the token value from the reCAPTCHA callback.

---
## Methods
### `getCardConfiguration()` → `ReCaptchaConfiguration`

Gets the card's configuration as a class.

#### Return

**Type**

ReCaptchaConfiguration

**Description**

Instance of ReCaptchaConfiguration if configuration is valid. Null otherwise.

### `getShouldRender()` → `Boolean`

Determines if the card should be rendered. True if the configuration is valid.

#### Return

**Type**

Boolean

**Description**

True if the Configuration field is valid and has both the Site Key and Secret Key.

### `getSiteKey()` → `String`

Gets the site key from the Card's Configuration JSON.

#### Return

**Type**

String

**Description**

The value of the stored Site Key.

### `validate()` → `OperationResult`

Validates that the reCAPTCHA was filled out, and is verified against an API endpoint.

#### Return

**Type**

OperationResult

**Description**

Valid if a response token exists and is successfully verified against the reCAPTCHA siteverify API.

---
## Inner Classes

### ReCaptchaComponentController.ReCaptchaConfiguration class

Class representation of the expected JSON data stored in the Card's Configuration field.

---
#### Properties

##### `SecretKey` → `String`

The Secret Key for the reCAPTCHA API.

##### `SiteKey` → `String`

The Site Key for the reCAPTCHA API.

---
#### Methods
##### `isValid()` → `Boolean`

Verifies that the loaded configuration is valid. This would be having both a Site Key and Secret Key.

###### Return

**Type**

Boolean

**Description**

True if valid. False otherwise.

---
