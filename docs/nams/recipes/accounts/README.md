# Accounts

The `AccountsApi` is used to create and manage person and business related Accounts.

## Model and Factories
The following Model objects currently exist:

* `AccountBase`
* `PersonBase`

Each object represents an SObject in the database, but exists in memory until persisted.

Model objects should not be created directly, instead Factories provide ways to create Model objects easily.

The following Factories currently exist:

* `AccountFactory`
* `ContactFactory`

Since contacts and individual person accounts share many common fields and are occasionally used interchangeably, the AccountsApi also allows for Contact objects to be created through the AccountsApi Factory.

## Account

The `Account` represents different types of accounts relating to a person or a business.

Here's how you create an Account through the API if you want to create a new person based account, business based account, or a new person based account that will reflect the Contact object:

[code](../../samples/accounts/classes/AccountsDocsSamples.cls ':include :type=code apex :fragment=creating-accounts')

The main difference between creating a person account, contact account, and business account are the fields that will be present on the AccountBase. For example, a person account will have fields that relate directly to person accounts such as 'FirstName' and 'LastName', while business accounts will have fields that relate more to a business, such as a generic 'Name' field.

An `Account`, just like any other Model class, can can be created and interacted with independently to provide flexibility until you are ready to tie your data together.

Instead of needing to set all model fields individually, we can simply pass an already populated account through a constructor and have all the account's fields available for use:

[code](../../samples/accounts/classes/AccountsDocsSamples.cls ':include :type=code apex :fragment=model-usage')

You can also pass and retrieve any custom data to the Model object that you tie into the SObject record that will eventually be saved into the database, as long as the SObject represented by the model contains a field for it.

To *put* custom data into the Model as well as *get* the data from the model:

[code](../../samples/accounts/classes/AccountsDocsSamples.cls ':include :type=code apex :fragment=get-set-values')
