@IsTest
private class PersistenceDocsSamples {
    // Simple Example

    /// [accountmodel]
    public class AccountModel implements IPersistenceSupport {
        private Account record;

        public AccountModel(String accountName) {
            this.record = new Account(Name = accountName);
        }

        public SObject getRecord() {
            return record;
        }
    }
    /// [accountmodel]

    @IsTest
    private static void simpleExample() {
        PersistenceService.getSObjectInstance().registerModelDefinition(Account.SObjectType, PersistenceDefinitionBase.class);

        /// [simpleregistercommit]
        AccountModel exampleAccount = new AccountModel('John Smith');
        PersistenceService.getSObjectInstance().register(exampleAccount);
        PersistenceService.getSObjectInstance().commitWork();
        /// [simpleregistercommit]

        List<Account> accounts = [SELECT Id FROM Account WHERE Name = 'John Smith'];
        System.assertEquals(1, accounts.size(), 'Expected the account to be in the database.');
    }

    // Relationship example
    /// [models-and-defs]
    public class AccountWithContactsModel implements IPersistenceSupport {
        private Account record;
        private List<ContactWithAccountModel> children = new List<ContactWithAccountModel>();

        public AccountWithContactsModel(String accountName) {
            this.record = new Account(Name = accountName);
        }

        public SObject getRecord() {
            return record;
        }

        public List<ContactWithAccountModel> getChildren() {
            return this.children;
        }

        public void addChild(ContactWithAccountModel child) {
            this.children.add(child);
        }
    }

    public class AccountDefinition extends PersistenceDefinitionBase {
        public override List<IPersistenceSupport> getChildren() {
            return ((AccountWithContactsModel)this.getModel()).getChildren();
        }
    }

    public class ContactWithAccountModel implements IPersistenceSupport {
        private Contact record;
        //private List<AccountWithContactModel> children = new List<AccountWithContactModel>();
        private AccountWithContactsModel parent;

        public ContactWithAccountModel(String accountName) {
            this.record = new Contact(LastName = accountName);
        }

        public SObject getRecord() {
            return record;
        }

        public void setAccount(AccountWithContactsModel parent) {
            this.parent = parent;
            // It is important that the account knows about the children it has
            parent.addChild(this);
        }

        public AccountWithContactsModel getAccount() {
            return this.parent;
        }
    }

    // This file defines the parent-child relationship through the Contact.AccountId lookup field.
    public class ContactDefinition extends PersistenceDefinitionBase {
        public override List<Relationship> getRelationships() {
            return new List<Relationship> {
                    new Relationship(Contact.AccountId, ((ContactWithAccountModel)this.getModel()).getAccount())
            };
        }
    }
    /// [models-and-defs]

    @IsTest
    private static void relationshipExample() {
        /// [relationship-registrations]
        PersistenceService.getSObjectInstance().registerModelDefinition(Account.SObjectType, AccountDefinition.class);
        PersistenceService.getSObjectInstance().registerModelDefinition(Contact.SObjectType, ContactDefinition.class);
        /// [relationship-registrations]

        /// [calling-persistence]
        AccountWithContactsModel exampleAccount = new AccountWithContactsModel('Acme');
        ContactWithAccountModel exampleContact = new ContactWithAccountModel('Smith');
        exampleContact.setAccount(exampleAccount);

        PersistenceService.getSObjectInstance().register(exampleAccount);
        PersistenceService.getSObjectInstance().commitWork();
        /// [calling-persistence]

        List<Account> accounts = [SELECT Id FROM Account WHERE Name = 'Acme'];
        System.assertEquals(1, accounts.size(), 'Expected the account to be in the database.');

        List<Contact> contacts = [SELECT Id, LastName FROM Contact WHERE LastName = 'Smith'];
        System.assertEquals(1, contacts.size(), 'Expected a contact in the database.');
    }

    /// [bulk-handler]
    public class AffiliationQuerier implements BulkPersistenceMessageHandler {
        public void notify(List<IPersistenceSupport> persistenceSupports) {
            Set<Id> accountIds = new Set<Id>();
            for (IPersistenceSupport currentSupport : persistenceSupports) {
                if (currentSupport.getRecord().Id != null) {
                    accountIds.add(currentSupport.getRecord().Id);
                }
            }

            List<SObject> affiliations = queryForAffiliations(accountIds);
            // Perform operation in bulk...
        }
        /// [bulk-handler]

        public Boolean Notified { get; set; }

        public AffiliationQuerier() {
            this.Notified = false;
        }

        private List<SObject> queryForAffiliations(Set<Id> accountIds) {
            this.Notified = true;
            return new List<SObject>();
        }
    }

    @IsTest
    private static void bulkOperationExample() {
        AffiliationQuerier handler = new AffiliationQuerier();
        PersistenceService.getSObjectInstance().registerBulkHandler(Account.SObjectType, handler);

        AccountModel exampleAccount = new AccountModel('John Smith');
        PersistenceService.getSObjectInstance().register(exampleAccount);
        PersistenceService.getSObjectInstance().commitWork();

        System.assert(handler.Notified, 'Expected the handler to have been notified.');
    }

    // Metadata persistence callback example
    /// [callback]
    public class SampleCallback extends MetadataPersistenceCallback {
        public override void handleResult(Metadata.DeployResult result, Metadata.DeployCallbackContext context) {
            System.debug(result.success);
            System.debug(result.errorMessage);
        }
    }
    /// [callback]
}
