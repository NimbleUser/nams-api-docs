# DataFactoryProrationRuleItem class

Exposes constants and methods commonly used for creating and inserting Proration Rule Item records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createProrationRuleItem(Integer termMonth, Decimal percentageAmount)` → `ProrationRuleItem__c`

Creates a Proration Rule Item using the specified term month and percentage amount. "false" is used for the Advance Term and the Proration Rule is unassigned (null).

#### Parameters
|Param|Description|
|-----|-----------|
|`Integer` |  The term month this item is applied to. |
|`Decimal` |  The percentage amount to mutiply the calculated dues amount by to determine the proration amount. |

#### Return

**Type**

ProrationRuleItem__c

**Description**

a ProrationRuleItem__c object

### `createProrationRuleItem(Id prorationRuleId, Integer termMonth, Decimal percentageAmount)` → `ProrationRuleItem__c`

Creates a Proration Rule Item using the specified prorationRuleId, term month, percentage amount. "false" is used for the Advance Term.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  The id of the proration rule to attach this item to. |
|`Integer` |  The term month this item is applied to. |
|`Decimal` |  The percentage amount to mutiply the calculated dues amount by to determine the proration amount. |

#### Return

**Type**

ProrationRuleItem__c

**Description**

a ProrationRuleItem__c object

### `createProrationRuleItem(Id prorationRuleId, Integer termMonth, Decimal percentageAmount, Boolean advanceTerm)` → `ProrationRuleItem__c`

Creates a Proration Rule Item using the specified prorationRuleId, term month, percentage amount, and advanced.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  The id of the proration rule to attach this item to. |
|`Integer` |  The term month this item is applied to. |
|`Decimal` |  The percentage amount to mutiply the calculated dues amount by to determine the proration amount. |
|`Boolean` |  Specifies whether to advance the term or not. When true, the term is the first of the join month |

#### Return

**Type**

ProrationRuleItem__c

**Description**

a ProrationRuleItem__c object

### `insertProrationRuleItem(Id prorationRuleId, Integer termMonth, Decimal percentageAmount, Boolean advanceTerm)` → `ProrationRuleItem__c`

Creates and inserts a Proration Rule Item using the specified prorationRuleId, term month, percentage amount, and advance term.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  The id of the proration rule to attach this item to. |
|`Integer` |  The term month this item is applied to. |
|`Decimal` |  The percentage amount to mutiply the calculated dues amount by to determine the proration amount. |
|`Boolean` |  Specifies whether to advance the term or not. When true, the term is the first of the join month |

#### Return

**Type**

ProrationRuleItem__c

**Description**

a ProrationRuleItem__c object

### `insertProrationRuleItem(Id prorationRuleId, Integer termMonth, Decimal percentageAmount)` → `ProrationRuleItem__c`

Creates and inserts a Proration Rule Item using the specified prorationRuleId, term month, and percentage amount. "false" is used for the Advance Term.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  The id of the proration rule to attach this item to. |
|`Integer` |  The term month this item is applied to. |
|`Decimal` |  The percentage amount to mutiply the calculated dues amount by to determine the proration amount. |

#### Return

**Type**

ProrationRuleItem__c

**Description**

a ProrationRuleItem__c object

---
