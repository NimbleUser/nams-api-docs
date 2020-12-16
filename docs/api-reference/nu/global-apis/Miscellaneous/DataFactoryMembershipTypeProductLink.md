# DataFactoryMembershipTypeProductLink class

Exposes constants and methods commonly used for creating and inserting Membership Type Product Link records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Methods
### `createMembershipTypeDonationProdLink(Id membershipTypeId, Id donationProductId)` → `MembershipTypeProductLink__c`

Creates a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity. A donation product should be used, as this method creates the Membership Type Product Link with a default Donation Purpose (and Stage of Both).

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `createMembershipTypeProdLink(Id membershipTypeId, Id productId, String stage, String purpose)` → `MembershipTypeProductLink__c`

Creates a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |
|`String` |  the Stage of the Membership Type Product Link |
|`String` |  the Purpose of the Membership Type Product Link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `createMembershipTypeProdLink(Id membershipTypeId, Id productId)` → `MembershipTypeProductLink__c`

Creates a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity. Only membership products may be used, as this method creates the Membership Type Product Link with a default Primary Purpose and Stage of Both.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `createMembershipTypeProdLink(Id entityId, Id membershipTypeId, Decimal amount,String stage, String purpose)` → `MembershipTypeProductLink__c`

Creates a Membership Type Product Link for the given Membership Type and Entity Ids. A default membership product is inserted for the given amount. The Membership Type should be assigned to the specified Entity Id. If not specified, the Stage will default to Both and the Purpose will default to Primary.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Membership Type to link |
|`Decimal` |  the Amount of the product to be inserted |
|`String` |  the Stage of the Membership Type Product Link |
|`String` |  the Purpose of the Membership Type Product Link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `insertMembershipTypeDonationProdLink(Id membershipTypeId, Id donationProductId)` → `MembershipTypeProductLink__c`

Creates and inserts a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity. A donation product should be used, as this method creates the Membership Type Product Link with a default Donation Purpose (and Stage of Both).

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `insertMembershipTypeProdLink(Id membershipTypeId, Id productId, String stage, String purpose)` → `MembershipTypeProductLink__c`

Creates and inserts a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |
|`String` |  the Stage of the Membership Type Product Link |
|`String` |  the Purpose of the Membership Type Product Link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `insertMembershipTypeProdLink(Id membershipTypeId, Id productId)` → `MembershipTypeProductLink__c`

Creates and inserts a Membership Type Product Link, linking together the specified Membership Type and Product Ids. The Membership Type and Product must be of the same Entity. Only membership products may be used, as this method creates the Membership Type Product Link with a default Primary Purpose and Stage of Both.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Membership Type to link |
|`Id` |  the Id of the Product to link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

### `insertMembershipTypeProdLink(Id entityId, Id membershipTypeId, Decimal amount,String stage, String purpose)` → `MembershipTypeProductLink__c`

Creates and inserts a Membership Type Product Link for the given Membership Type and Entity Ids. A default membership product is inserted for the given amount. The Membership Type should be assigned to the specified Entity Id. If not specified, the Stage will default to Both and the Purpose will default to Primary.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Entity |
|`Id` |  the Id of the Membership Type to link |
|`Decimal` |  the Amount of the product to be inserted |
|`String` |  the Stage of the Membership Type Product Link |
|`String` |  the Purpose of the Membership Type Product Link |

#### Return

**Type**

MembershipTypeProductLink__c

**Description**

a MembershipTypeProductLink__c object

---
