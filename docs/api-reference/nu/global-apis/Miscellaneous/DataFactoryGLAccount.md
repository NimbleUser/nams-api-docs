# DataFactoryGLAccount class

Exposes constants and methods commonly used for creating and inserting GL Account records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `DEFAULT_AR_GL_NAME` → `String`

### `DEFAULT_BANK_ACCOUNT_GL_NAME` → `String`

### `DEFAULT_CASH_PREPAYMENT_GL_NAME` → `String`

### `DEFAULT_REVENUE_GL_NAME` → `String`

### `DEFAULT_SHIPPING_GL_NAME` → `String`

### `DEFAULT_TAX_GL_NAME` → `String`

---
## Methods
### `createGLAccount(Id entityId, String glAccountName)` → `GLAccount__c`

Creates a GL Account for the specified Entity Id and name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |
|`String` |  the name to give the GL Account |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `createRevenueGLAccount(Id entityId)` → `GLAccount__c`

Creates a GL Account for the specified Entity Id using the default Revenue GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertARGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default AR GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertBankAccountGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default Bank Account GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertCashPrepaymentGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default Cash Prepayment GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertGLAccount(Id entityId, String glAccountName)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id and name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |
|`String` |  the name to give the GL Account |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertRevenueGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default Revenue GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertShippingGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default Shipping GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

### `insertTaxGLAccount(Id entityId)` → `GLAccount__c`

Creates and inserts a GL Account for the specified Entity Id using the default Tax GL Account name.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity that the GL Account is for |

#### Return

**Type**

GLAccount__c

**Description**

a GLAccount__c object

---
