# InstallScript class

Automatically invoked when package is installed. The class upserts an empty custom setting on a fresh install in order to populate the default values for the field.

---
## Properties

### `EMAIL_ADDRESS_FOR_ERRORS` → `String`

On error, an email containing the details of the exception will be sent to this address.

---
## Methods
### `onInstall(InstallContext context)` → `void`

Automatically invoked when package is installed. On error, an email will be sent to the address specified by EMAIL_ADDRESS_FOR_ERRORS.

#### Parameters
|Param|Description|
|-----|-----------|
|`` | t |
|`` | t |

---
