# BankAccountPaymentComponentController class

Controls BankAccountPayment.component, providing virtually no base functionality at this time as we do not accept one-off bank account payments for now. Serves as a base extension point for ManageExtPmtBankProfileCompController.

---
## Constructors
### `BankAccountPaymentComponentController()`

Default no-arg constructor for building instances of BankAccountPaymentComponentController.
---
## Properties

### `BankAccountDetail` → `znu.`

The name associated with a bank account.

### `SelectedAccountTypeLabel` → `String`

The selected account type in the UI to later convert to a znu.BankAccountDetail.AccountTypeOption during the request population cycle.

---
## Methods
### `getAccountTypeOptions()` → `List<SelectOption>`

Gets a list of select options based upon available account type options.

#### Return

**Type**

List<SelectOption>

**Description**

A List<SelectOption> for available account types.

---
