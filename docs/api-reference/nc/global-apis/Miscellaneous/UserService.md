# UserService class

UserService accesses the users and accounts defined in the org, including imported accounts with no Salesforce user accounts attached to them.

---
## Properties

### `Instance` → `UserService`

---
## Methods
### `createUser(UserRequest userRequest)` → `User`
### `ensureUserAccess(UserAccessRequest request)` → `OperationResult`

Makes sure that the user corresponding to the passed username is Active.

#### Parameters
|Param|Description|
|-----|-----------|
|`request` |  A UserAccessRequest object with the user Id information. |

#### Return

**Type**

OperationResult

**Description**

OperationResult with the results of the operation.

### `insertUser(UserRequest userRequest)` → `User`
---
## Inner Classes

### UserService.UserAccessRequest class

UserAccessRequest is an object that allows the user to request information regarding the user's login access, by using a passed in User Id.

---
#### Constructors
##### `UserAccessRequest(Id userId)`
---
### UserService.UserRequest class

UserRequest is an object that allows the passing in of an Account, Email Address, and Password for the creation of a User Account based on that info.

---
#### Constructors
##### `UserRequest(Account account, String email)`
##### `UserRequest(Account account, String email, String password)`
---
