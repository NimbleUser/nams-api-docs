@IsTest
private class AffiliationsDocsSamples {
    @IsTest
    private static void create_expectAffiliationCreated() {
        di_Injector mockInjector = new di_Injector(new DefaultModule());
        AffiliationsApiV1.di_InjectorPriv = mockInjector;

        Id childAccountId = fflib_IDGenerator.generate(Account.SObjectType);
        Id parentAccountId = fflib_IDGenerator.generate(Account.SObjectType);

        /// [creating-affiliations]
        Affiliation affiliation = AffiliationsApi.v1.factory().createNew(childAccountId, parentAccountId);
        /// [creating-affiliations]

        System.assertNotEquals(null, affiliation);
        System.assertEquals(childAccountId, affiliation.getChildId(), 'Expected the correct child id set.');
        System.assertEquals(parentAccountId, affiliation.getParentId(), 'Expected the correct parent id set.');
    }

    @IsTest
    private static void retrieve_expectAffiliationsRetrived() {
        di_Injector mockInjector = new di_Injector(new DefaultModule());
        AffiliationsApiV1.di_InjectorPriv = mockInjector;

        Id affiliationId1 = fflib_IDGenerator.generate(Account.SObjectType);
        Id affiliationId2 = fflib_IDGenerator.generate(Account.SObjectType);

        Id childId1 = fflib_IDGenerator.generate(Account.SObjectType);
        Id childId2 = fflib_IDGenerator.generate(Account.SObjectType);
        Id parentId = fflib_IDGenerator.generate(Account.SObjectType);

        Affiliation affiliation1 = AffiliationTestData.newInstance()
            .withId(affiliationId1)
            .withChildId(childId1)
            .withParentId(parentId)
            .build();

        Affiliation affiliation2 = AffiliationTestData.newInstance()
            .withId(affiliationId2)
            .withChildId(childId2)
            .withParentId(parentId)
            .build();

        List<Affiliation> records = new List<Affiliation> { affiliation1, affiliation2 };
        
        Set<String> childAccountIds = new Set<String> {childId1};
        Set<String> parentAccountIds = new Set<String> {parentId};
        Set<String> affiliationIds = new Set<String>{ affiliationId1, affiliationId2 };

        fflib_ApexMocks mocks = new fflib_ApexMocks();
        AffiliationsApiRetriever mockAffiliationsApiRetriever = (AffiliationsApiRetriever) mocks.mock(AffiliationsApiRetriever.class);
        AffiliationsApi.v1.setMockRetriever(mockAffiliationsApiRetriever);

        mocks.startStubbing();
        mocks.when(mockAffiliationsApiRetriever.with((Pluggable)fflib_Match.anyObject()))
            .thenReturn(mockAffiliationsApiRetriever);
        mocks.when(mockAffiliationsApiRetriever.get())
            .thenReturn(new List<Affiliation> { records.get(0), records.get(1) });
        mocks.when(mockAffiliationsApiRetriever.getById(affiliationIds))
            .thenReturn(new List<Affiliation> { records.get(0), records.get(1) });
        mocks.when(mockAffiliationsApiRetriever.getParentAffiliations(childAccountIds))
            .thenReturn(new List<Affiliation> { records.get(0) });
        mocks.when(mockAffiliationsApiRetriever.getChildAffiliations(parentAccountIds))
            .thenReturn(new List<Affiliation> { records.get(0), records.get(1) });
        mocks.stopStubbing();

        /// [retrieve-affiliations-by-id]
        List<Affiliation> retrieveAffiliationsById = 
            AffiliationsApi.v1.retriever().getById(affiliationIds);
        /// [retrieve-affiliations-by-id]

        /// [retrieve-affiliations-by-parents]
        List<Affiliation> retrieveAffiliationsByParents = AffiliationsApi.v1.retriever()
            .getParentAffiliations(childAccountIds);
        /// [retrieve-affiliations-by-parents]

        /// [retrieve-affiliations-by-children]
        List<Affiliation> retrieveAffiliationsByChildren = AffiliationsApi.v1.retriever()
            .getChildAffiliations(parentAccountIds);
        /// [retrieve-affiliations-by-children]

        /// [retrieve-all-affiliations]
        List<Affiliation> retrieveAllAffiliations = AffiliationsApi.v1.retriever().get();
        /// [retrieve-all-affiliations]

        /// [retrieve-all-with-plugin]
        List<Affiliation> affiliationsWithPlugin = AffiliationsApi.v1.retriever()
            .with(new CustomAffiliationsPlugin())
            .get();
        /// [retrieve-all-with-plugin]

        System.assertEquals(2, retrieveAffiliationsById.size(), 'Expected 2 affiliations retrieved.');
        System.assertEquals(1, retrieveAffiliationsByParents.size(), 'Expected 1 affiliation retrieved.');
        System.assertEquals(2, retrieveAffiliationsByChildren.size(), 'Expected 2 affiliation retrieved.');
        System.assertEquals(2, retrieveAllAffiliations.size(), 'Expected 2 affiliations retrieved.');
        System.assertEquals(2, affiliationsWithPlugin.size(), 'Expected 2 affiliations retrieved.');
    }

    @IsTest
    private static void affiliate_expectAccountsAffiliated() {
        di_Injector mockInjector = new di_Injector(new DefaultModule());
        AffiliationsApiV1.di_InjectorPriv = mockInjector;

        Id childId = fflib_IDGenerator.generate(Account.SObjectType);
        Id parentId = fflib_IDGenerator.generate(Account.SObjectType);

        Account account1 = new Account(Id = childId);
        Account account2 = new Account(Id = parentId);

        AccountBase childAccount = AccountsApi.v1.accountFactory().create(new List<Account>{ account1 }).get(0);
        AccountBase parentAccount = AccountsApi.v1.accountFactory().create(new List<Account>{ account2 }).get(0);

        Affiliation mockAffiliation = AffiliationTestData.newInstance()
            .withChildId(childId)
            .withParentId(parentId)
            .build();

        fflib_ApexMocks mocks = new fflib_ApexMocks();
        AffiliationsApiService mockAffiliationsApiService = (AffiliationsApiService) mocks.mock(AffiliationsApiService.class);
        AffiliationsApi.v1.setMockService(mockAffiliationsApiService);

        mocks.startStubbing();
        mocks.when(mockAffiliationsApiService.affiliate(childAccount, parentAccount))
            .thenReturn(mockAffiliation);
        mocks.stopStubbing();

        /// [affiliate-accounts]
        Affiliation affiliation = AffiliationsApi.v1.service().affiliate(childAccount, parentAccount);
        /// [affiliate-accounts]

        System.assertEquals(childId, affiliation.getChildId(), 'Expected correct Id set on affiliation.');
        System.assertEquals(parentId, affiliation.getParentId(), 'Expected correct Id set on affiliation.');
    }

    @IsTest
    private static void terminate_expectAffiliationTerminated() {
        di_Injector mockInjector = new di_Injector(new DefaultModule());
        AffiliationsApiV1.di_InjectorPriv = mockInjector;

        Id childId = fflib_IDGenerator.generate(Account.SObjectType);
        Id parentId = fflib_IDGenerator.generate(Account.SObjectType);

        Set<String> childIds = new Set<String> {Id.valueOf(childId)};

        Affiliation affiliation = AffiliationTestData.newInstance()
            .withChildId(childId)
            .withParentId(parentId)
            .build();

        /// [terminate-affiliations]
        List<Affiliation> affiliationsToTerminate = new List<Affiliation>{ affiliation };
        AffiliationsApi.v1.service().terminate(affiliationsToTerminate);
        /// [terminate-affiliations]

        fflib_ApexMocks mocks = new fflib_ApexMocks();
        AffiliationsApiRetriever mockAffiliationsApiRetriever = (AffiliationsApiRetriever) mocks.mock(AffiliationsApiRetriever.class);
        AffiliationsApi.v1.setMockRetriever(mockAffiliationsApiRetriever);

        mocks.startStubbing();
        mocks.when(mockAffiliationsApiRetriever.getById(childIds))
            .thenReturn(new List<Affiliation>());
        mocks.stopStubbing();

        List<Affiliation> affiliations = AffiliationsApi.v1.retriever().getById(childIds);

        System.assertEquals(0, affiliations.size(), 'Expected no affiliations retrieved.');
    }

    private class DefaultModule extends di_Module {
        public override void configure() {
            bind('AffiliationsApiFactory').to(DefaultAffiliationFactory.class);
            bind('AffiliationsApiService').to(DefaultAffiliationService.class);
        }
    }

    /**
     * @description The force-di framework needs this to be public to create the binding.
     */
    public class DefaultAffiliationFactory extends AffiliationsApiFactory {
        public override Affiliation createNew(String childId, String parentId) { 
            return AffiliationTestData.newInstance()
            .withChildId(childId)
            .withParentId(parentId)
            .build();
         }
        protected override IModel getModel(SObject record) {  return null; }
    }

    /**
     * @description The force-di framework needs this to be public to create the binding.
     */
    public class DefaultAffiliationService extends AffiliationsApiService {
        public override Affiliation affiliate(AccountBase childAccount, AccountBase parentAccount) { return null; }
        public override void terminate(List<Affiliation> affiliations) { }
    }

    private class CustomAffiliationsPlugin extends Pluggable {
        public Boolean OnBeforeCreateCalled = false;
        public Boolean OnCreateCalled = false;
        public Boolean OnAfterCreateCalled = false;
        public override void onBeforeCreate(List<Object> queriedRecords) {
            this.OnBeforeCreateCalled = true;
        }
        public override void onCreate(Object originalRecord, Object generatedWrapper) {
            this.OnCreateCalled = true;
        }
        public override void onAfterCreate(List<Object> generatedWrappers) {
            this.OnAfterCreateCalled = true;
        }
    }
}