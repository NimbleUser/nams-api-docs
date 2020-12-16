# MembershipBulkBilling class

Contains the logic necessary to generate bills, items, and item lines for memberships.

---
## Properties

### `memberships` → `List<Membership>`

Stores the list of memberships being billed for the current execution. Instantiated in the getBillsToInsert() method by default.

### `request` → `BulkBilling.Request`

Stores the request for this billing generation. Instantiated in the setup() method by default.

---
## Methods
### `getBillsToInsert(List<SObject> billingObjects)` → `List<BulkBilling.Bill>`

Generates carts as bill records for the list of membership records passed in, unless the membership has already been billed. Stores the list of records to be used in later calculations.

#### Parameters
|Param|Description|
|-----|-----------|
|`billingObjects` |  The membership records for which to create carts. |

#### Return

**Type**

List<BulkBilling.Bill>

**Description**

The list of bill objects.

### `getItemLinesToInsert(ProductPricingResponse productPricingResponse)` → `List<BulkBilling.BillItemLine>`

Generates cart item line records for the ProductPricingResponse passed in. Ties each cart item line to the appropriate membership type product link record.

#### Parameters
|Param|Description|
|-----|-----------|
|`productPricingResponse` |  The ProductPricingResponse for which to create cart item lines. |

#### Return

**Type**

List<BulkBilling.BillItemLine>

**Description**

The list of bill item line objects.

### `getItemsToInsert(List<BulkBilling.Bill> insertedBills)` → `List<BulkBilling.BillItem>`

Generates membership cart item records for the list of membership records.

#### Parameters
|Param|Description|
|-----|-----------|
|`insertedBills` |  The carts that were inserted, as bill objects. |

#### Return

**Type**

List<BulkBilling.BillItem>

**Description**

The list of bill item objects.

### `getMembershipTypeId()` → `Id`

Returns the Membership Type Id for this request.

### `getQueryLocator()` → `Database.QueryLocator`

Returns a query locator that will be used to generate membership bills, items, and item lines. Only active, non-recurring memberships for the given request's membership type and end date are returned.

#### Parameters
|Param|Description|
|-----|-----------|
|`bulkBillingRequest` |  The BulkBilling.Request that contains data to be used for this membership bulk billing run. |

#### Return

**Type**

Database.QueryLocator

**Description**

The query locator.

---
## Inner Classes

### MembershipBulkBilling.Membership class

Holds the information for the membership being billed.

---
#### Constructors
##### `Membership(Membership__c record)`

Constructor for constructing a membership record.
###### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record that represents the membership being billed. |

---
#### Methods
##### `getAccount()` → `Id`

Returns the account tied to the membership.

###### Return

**Type**

Id

**Description**

The Id of the account.

##### `getEndDate()` → `Date`

Returns the end date of the membership.

###### Return

**Type**

Date

**Description**

The end date of the membership.

##### `getMembershipTypeId()` → `Id`

Returns the membership type Id of the membership.

###### Return

**Type**

Id

**Description**

The membership type Id of the membership.

##### `getOptionalMembershipTypeProductLinks()` → `Set<Id>`

Returns null by default. Override this method to return a set of optional membership type product links to include. If left null, internal logic includes all optional items included in the previous order.

###### Return

**Type**

Set<Id>

**Description**

The Ids of the optional membership type product links.

##### `getOrderItem()` → `Id`

Returns the order item corresponding to the membership. If no order exists for the membership, null is returned.

###### Return

**Type**

Id

**Description**

The Id of the order item.

##### `getPrimaryMembershipTypeProductLink()` → `Id`

Returns the primary membership type product link of the membership. If null or an Id of a non-renewal membership type product link is returned, the primary product will be used to find the primary membership type product link instead.

###### Return

**Type**

Id

**Description**

The Id of the primary membership type product link.

##### `getPrimaryProduct()` → `Id`

Returns the primary product of the membership. Used in inner logic if the primary membership type product link is null or is a non-renewal membership type product link. The primary product is retrieved from the associated order item line, if set; otherwise, it is retrieved from the primary membership product lookup field.

###### Return

**Type**

Id

**Description**

The Id of the primary product.

##### `getStartDate()` → `Date`

Returns the start date of the membership.

###### Return

**Type**

Date

**Description**

The start date of the membership.

---
