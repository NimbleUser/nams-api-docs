@IsTest
private class AccountsDocsSamples {
    private static void accountsApiExamples() {
        /// [creating-accounts]
        // Different types of accounts that can be created through the Accounts Api.
        // To create a person based account
        AccountBase personAccount = AccountsApi.v1.accountFactory().createNewPerson();

        // To create a business based account
        AccountBase businessAccount = AccountsApi.v1.accountFactory().createNewBusiness();

        // To create a person based account that reflects a Contact object.
        AccountBase contactAccount = AccountsApi.v1.contactFactory().createNew();
        /// [creating-accounts]

        /// [retrieve-accounts]
        // To retrieve person and business accounts.
        List<AccountBase> allRetrievedAccounts = AccountsApi.v1.accountRetriever().get();

        // To retrieve person and business accounts by Id.
        Set<String> accountIds;
        List<AccountBase> retrievedAccountsById = AccountsApi.v1.accountRetriever().getById(accountIds);

        // To retrieve contacts by Id.
        Set<String> contactIds;
        List<AccountBase> retrievedContactAccounts = AccountsApi.v1.contactRetriever().getById(contactIds);
        /// [retrieve-accounts]

        /// [model-usage]
        Account testAccount = new Account();
        // Pass an object through a business account constructor to copy field values over to the model.
        AccountBase modelExample = new BusinessAccount(testAccount);
        /// [model-usage]

        /// [get-set-values]
        // To set field values, we can use 'put'.
        testAccount.put(Account.Name, 'Test');

        // To get field values, we can use 'get'.
        String name = (String)modelExample.get('Name');
        /// [get-set-values]
    }
}