# BulkBilling class

This class is called by BatchBulkBilling and contains the logic necessary to generate bills, items, and item lines.

---
## Methods
### `newInstance(Request bulkBillingRequest)` → `BulkBilling`

Returns an instance of the BulkBilling class, passing in the BulkBilling.Request object.

#### Parameters
|Param|Description|
|-----|-----------|
|`bulkBillingRequest` |  The BulkBilling.Request that contains data to be used for this bulk billing run. |

---
## Inner Classes

### BulkBilling.Bill class

Holds the generated bill information.

---
#### Constructors
##### `Bill(SObject record)`

Constructor for constructing a bill record.
###### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record that represents the bill to be inserted. |

---
#### Properties

##### `Record` → `SObject`

Represents the bill record to be inserted. This property is just used to create the list of records to insert.

---
#### Methods
##### `getBillTo()` → `Id`

Returns the Bill To of the bill.

###### Return

**Type**

Id

**Description**

The Account Id of the Bill To.

---
### BulkBilling.BillItem class

Holds the generated bill item information.

---
#### Constructors
##### `BillItem(SObject record)`

Constructor for constructing a bill item record.
###### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record that represents the bill item to be inserted. |

---
#### Properties

##### `Record` → `SObject`

Represents the bill item record. This property is just used to create the list of records to insert.

---
#### Methods
##### `getCustomer()` → `Id`

Returns the customer of the bill item.

###### Return

**Type**

Id

**Description**

The Account Id of the customer.

---
### BulkBilling.BillItemLine class

Holds the generated bill item line information.

---
#### Constructors
##### `BillItemLine(SObject record)`

Constructor for constructing a bill item line record.
###### Parameters
|Param|Description|
|-----|-----------|
|`record` |  The record that represents the bill item line to be inserted. |

---
#### Properties

##### `Record` → `SObject`

Represents the bill item line record. This property is just used to create the list of records to insert.

---
### BulkBilling.Request class

Holds the request information to be used for a bulk billing run.

---
#### Properties

##### `BillDate` → `Date`

The bill date for the billing run to be used for all generated carts.

##### `BillingType` → `String`

The type for this request - ie, Membership or Program.

##### `CurrentTermEndDate` → `Date`

The end date that will be used by to generate the query for all records to bill. For Membership Bulk Billing, this will be the end date of the account's most recent membership.

##### `IsPreview` → `Boolean`

Flag indicated if request is used for preview records.

##### `ObjectId` → `Id`

The Id of the object that will be used to generate the query for all records to bill. For Membership Bulk Billing, this will be the Membership Type Id.

---
