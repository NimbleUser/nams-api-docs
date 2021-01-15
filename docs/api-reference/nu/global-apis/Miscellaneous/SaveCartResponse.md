# SaveCartResponse class

Stores the result of DML operations made to a cart based on a bundle supplied to the CartService.cls

---
## Properties

### `Bundle` → `global`

Bundle instance used to drive the cart updates.

### `CartId` → `Id`

Id of the Cart__c record that the save action was intended for.

### `Result` → `Operation`

OperationResult containing details about the success or failures of the Cart__c save operation.

---
