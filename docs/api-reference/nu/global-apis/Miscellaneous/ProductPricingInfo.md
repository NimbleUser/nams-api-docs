# ProductPricingInfo class

Stores information needed to determine product pricing for a Product.

---
## Properties

### `EndDate` → `Date`

Holds the End Date of the product - for membership and subscriptions, in case pricing depends upon dates.

### `HistoryDataGeneratorHelper` → `HistoryDataGenerator`

HistoryDataGenerator that controls if and how automatic HistoryData instances are created for the line.

### `JoinDate` → `Date`

Holds the date on which the account joined this membership.

### `MembershipLinkId` → `Id`

Holds the Id of the Membership Type Product Link in case membership pricing depends upon the Membership Type and/or Membership Type Product Link data.

### `Product` → `global`

Holds the instance of Product.

### `ProductId` → `Id`

Holds the Id of the Product.

### `ProrationRuleItemIdToApply` → `Id`

Holds the Id of the proration rule item to apply during price proration.

### `Quantity` → `Integer`

Holds the quantity of the Product being priced.

### `StartDate` → `Date`

Holds the Start Date of the product - for membership and subscriptions, in case pricing depends upon dates.

---
## Methods
### `newInstance(Id productId, Integer quantity)` → `ProductPricingInfo`

Creates a new instance of ProductPricingInfo with the Product Id and Quantity populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  Product Id to use. |
|`quantity` |  Quantity to use. |

#### Return

**Type**

ProductPricingInfo

**Description**

ProductPricingInfo instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

### `newInstance(Id productId, Integer quantity,HistoryDataGenerator historyGenerator)` → `ProductPricingInfo`

Creates a new instance of ProductPricingInfo with the Product Id and Quantity populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  Product Id to use. |
|`quantity` |  Quantity to use. |
|`historyGenerator` |  HistoryDataGenerator instance that controls how the HistoryDatas will be |

#### Return

**Type**

ProductPricingInfo

**Description**

ProductPricingInfo instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

### `newInstance(Id productId, Integer quantity,Boolean generateHistoryDatas)` → `ProductPricingInfo`

Creates a new instance of ProductPricingInfo with the Product Id and Quantity populated.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  Product Id to use. |
|`quantity` |  Quantity to use. |
|`generateHistoryDatas` |  Whether HistoryData objects should be generated or not for the OrderLine that will |

#### Return

**Type**

ProductPricingInfo

**Description**

ProductPricingInfo instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

### `newInstance(Id productId, Integer quantity, Id membershipTypeProductLinkId, Date startDate, Date endDate)` → `ProductPricingInfo`

Creates a new instance of ProductPricingInfo intended for purposes of memberships.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  Product Id to use. |
|`quantity` |  Quantity to use. |
|`membershipTypeProductLinkId` |  The Membership Type Product Link Id to use. |
|`startDate` |  The Start Date to use. |
|`endDate` |  The End Date to use. |

#### Return

**Type**

ProductPricingInfo

**Description**

ProductPricingInfo instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

### `newInstance(Id productId, Integer quantity, Id membershipTypeProductLinkId,Date startDate, Date endDate, HistoryDataGenerator historyGenerator)` → `ProductPricingInfo`

Creates a new instance of ProductPricingInfo intended for purposes of memberships.

#### Parameters
|Param|Description|
|-----|-----------|
|`productId` |  Product Id to use. |
|`quantity` |  Quantity to use. |
|`membershipTypeProductLinkId` |  The Membership Type Product Link Id to use. |
|`startDate` |  The Start Date to use. |
|`endDate` |  The End Date to use. |
|`historyGenerator` |  HistoryDataGenerator instance that controls how the HistoryDatas will be |

#### Return

**Type**

ProductPricingInfo

**Description**

ProductPricingInfo instance.

#### Throws
|Exception|Description|
|---------|-----------|
|`ArgumentNullException` |  if any of the params is null. |

---
