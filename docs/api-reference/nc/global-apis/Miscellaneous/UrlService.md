# UrlService class

A service providing utility methods related to the manipulation of URLs.

---
## Properties

### `Instance` → `UrlService`

Gets an instance of UrlService. @return UrlService instance.

---
## Methods
### `getIdByParamAndType(String idParam, Schema.SObjectType idType)` → `Id`

Get the id url param from the url based on the given Id parameter name and validate that the SObjectType matches the requested type.

#### Parameters
|Param|Description|
|-----|-----------|
|`idParam` |  The string representation of the id url query string |
|`idType` |  The SObjectType of the Id being collected. |

#### Return

**Type**

Id

**Description**

The Id using the given parameter name if the type matches

#### Throws
|Exception|Description|
|---------|-----------|
|`Throws` |  an ArgumentNullException if the idParam or idType |

### `getIdByType(Schema.SObjectType idType)` → `Id`

Get the id url param from the url and validate that the SObjectType matches the requested type.

#### Parameters
|Param|Description|
|-----|-----------|
|`idType` |  The SObjectType of the Id being collected. |

#### Return

**Type**

Id

**Description**

The Id if the type matches the idType parameter, else null.

#### Throws
|Exception|Description|
|---------|-----------|
|`Throws` |  an ArgumentNullException if the idType parameter |

### `getLoginWithRedirect(String redirectPath)` → `String`

Gets a url for the login page with redirect query param.

#### Parameters
|Param|Description|
|-----|-----------|
|`redirectPath` |  The desired path to redirect to upon login. |

#### Return

**Type**

String

**Description**

A url string for the login page with redirect query param for the redirectPath.

### `getUrlForStub(String urlStub)` → `String`

Adjusts URLs in the Item to be properly prefixed if relative. This is needed because URLs when viewing menus in staff view differ from those in the community. In the community they need to have the community prefix in them. So, if "accountdashboard" is stored, in staff view it would become "/apex/accountdashboard" In the community it would become "/ss/apex/accountdashboard" if the community prefix is "ss"

#### Parameters
|Param|Description|
|-----|-----------|
|`String` |  URL stub to retrieve the full URL for. |

#### Return

**Type**

String

**Description**

url for given stub

---
