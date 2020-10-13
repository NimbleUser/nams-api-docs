@IsTest
private class ChaptersDocsSamples {
    @IsTest
    private static void create_expectChapterCreated() {

        di_Injector mockInjector = new di_Injector(new DefaultModule());
        ChaptersApiV1.di_InjectorPriv = mockInjector;

        /// [creating-chapters]
        Account chapter1 = new Account();
        Account chapter2 = new Account();

        List<Account> exampleAccounts = new List<Account> { chapter1, chapter2 };
        List<Chapter> chapterObjects = ChaptersApi.v1.factory().create(exampleAccounts);
        /// [creating-chapters]

        System.assertEquals(2, chapterObjects.size(), 'Expected 2 wrapped chapters.');
    }

    @IsTest
    private static void getAssignmentRule_expectAssignmentRuleCreated() {
        /// [assignment-rule]
        Evaluation mockEvaluation = EvaluationTestData.newInstance().build();
        Chapter mockChapter = ChapterTestData.newInstance().withAssignmentRule(mockEvaluation).build();

        Evaluation chapterAssignmentRule = mockChapter.getAssignmentRule();
        /// [assignment-rule]
        System.assertEquals(mockEvaluation, chapterAssignmentRule,
            'Expected the assignment rule set for the chapter.');
    }

    @IsTest
    private static void retrieve_expectChaptersRetrived() {

        di_Injector mockInjector = new di_Injector(new DefaultModule());
        ChaptersApiV1.di_InjectorPriv = mockInjector;

        Id chapterId1 = fflib_IDGenerator.generate(Account.SObjectType);
        Id chapterId2 = fflib_IDGenerator.generate(Account.SObjectType);

        Account chapter1 = new Account(Id = chapterId1);
        Account chapter2 = new Account(Id = chapterId2);

        List<Account> exampleAccounts = new List<Account> { chapter1, chapter2 };
        List<Chapter> chapterObjects = ChaptersApi.v1.factory().create(exampleAccounts);

        Set<Id> chapterIds = new Set<Id>{ chapterId1, chapterId2 };

        fflib_ApexMocks mocks = new fflib_ApexMocks();
        ChaptersApiRetriever mockChaptersApiRetriever = (ChaptersApiRetriever) mocks.mock(ChaptersApiRetriever.class);
        ChaptersApi.v1.setMockRetriever(mockChaptersApiRetriever);

        mocks.startStubbing();
        mocks.when(mockChaptersApiRetriever.with((Pluggable)fflib_Match.anyObject()))
            .thenReturn(mockChaptersApiRetriever);
        mocks.when(mockChaptersApiRetriever.get())
            .thenReturn(new List<Chapter> { chapterObjects.get(0), chapterObjects.get(1) });
        mocks.when(mockChaptersApiRetriever.getById(chapterIds))
            .thenReturn(new List<Chapter> { chapterObjects.get(0), chapterObjects.get(1) });
        mocks.stopStubbing();

        /// [retrieve-chapters-byId]
        List<Chapter> retrieveChaptersById = ChaptersApi.v1.retriever().getById(chapterIds);
        /// [retrieve-chapters-byId]

        /// [retrieve-all-chapters]
        List<Chapter> retrieveAllChapters = ChaptersApi.v1.retriever().get();
        /// [retrieve-all-chapters]

        /// [retrieve-all-with-plugin]
        PluginObject plugin= new PluginObject();
        List<Chapter> retrieveAllChaptersWithPlugin = ChaptersApi.v1.retriever().with(plugin).get();
        /// [retrieve-all-with-plugin]

        System.assertEquals(2, retrieveChaptersById.size(), 'Expected 2 chapters retrieved.');
        System.assertEquals(2, retrieveAllChapters.size(), 'Expected 2 chapters retrieved.');
        System.assertEquals(2, retrieveAllChaptersWithPlugin.size(), 'Expected 2 chapters retrieved.');

    }

    @IsTest
    private static void getAutoAssignableChapters_contextMatchesOneChapter_expectAChapterReturned() {
        AccountBase sourceAccount = AccountBaseTestData.newInstance().build();

        fflib_ApexMocks mocks = new fflib_ApexMocks();
        ChaptersApiRetriever mockChaptersApiRetriever = (ChaptersApiRetriever) mocks.mock(ChaptersApiRetriever.class);
        ChaptersApi.v1.setMockRetriever(mockChaptersApiRetriever);

        ChaptersApiService mockChaptersApiService = (ChaptersApiService) mocks.mock(ChaptersApiService.class);
        ChaptersApi.v1.setMockService(mockChaptersApiService);

        EvaluationsApiService mockEvaluationsApiService = (EvaluationsApiService)mocks.mock(EvaluationsApiService.class);
        EvaluationsApi.v1.setMockEvaluationService(mockEvaluationsApiService);

        Evaluation mockEvaluation = EvaluationTestData.newInstance().build();
        Chapter mockChapter = ChapterTestData.newInstance().withAssignmentRule(mockEvaluation).build();

        mocks.startStubbing();
        mocks.when(mockChaptersApiRetriever.with((Pluggable)fflib_Match.anyObject()))
            .thenReturn(mockChaptersApiRetriever);
        mocks.when(mockChaptersApiRetriever.get())
            .thenReturn(new List<Chapter> { mockChapter });
        mocks.when(mockChaptersApiService.getAutoAssignableChapters(sourceAccount))
            .thenReturn(new List<Chapter> { mockChapter });
        mocks.when(mockEvaluationsApiService.evaluate(
            (EvaluationContext)fflib_Match.anyObject(), (Evaluation)fflib_Match.anyObject()))
            .thenReturn(buildMockEvaluationResult(true));
        mocks.stopStubbing();

        /// [get-auto-assignable-chapters]
        List<Chapter> autoAssignableChapters = ChaptersApi.v1.service().getAutoAssignableChapters(sourceAccount);
        /// [get-auto-assignable-chapters]
        System.assertEquals(1, autoAssignableChapters.size(), 'Expected a single Chapter returned.');
    }

    @IsTest
    private static void getAutoAssignableAccounts_contextMatchesOneAccount_expectAccountReturned() {
        fflib_ApexMocks mocks = new fflib_ApexMocks();
        AccountsApiAccountRetriever mockRetriever = (AccountsApiAccountRetriever)mocks.mock(AccountsApiAccountRetriever.class);
        AccountsApi.v1.setMockRetriever(mockRetriever);

        ChaptersApiService mockChaptersApiService = (ChaptersApiService) mocks.mock(ChaptersApiService.class);
        ChaptersApi.v1.setMockService(mockChaptersApiService);

        EvaluationsApiService mockEvaluationsApiService = (EvaluationsApiService)mocks.mock(EvaluationsApiService.class);
        EvaluationsApi.v1.setMockEvaluationService(mockEvaluationsApiService);

        AccountBase testAccountBase = (AccountBase)mocks.mock(AccountBase.class);

        Evaluation mockEvaluation = EvaluationTestData.newInstance().build();
        Chapter sourceChapter = ChapterTestData.newInstance().withAssignmentRule(mockEvaluation).build();

        mocks.startStubbing();
        mocks.when(mockRetriever.get()).thenReturn(new List<AccountBase> { testAccountBase });
        mocks.when(mockChaptersApiService.getAutoAssignableAccounts(sourceChapter))
             .thenReturn(new List<AccountBase> { testAccountBase });
        mocks.when(mockEvaluationsApiService.evaluate(
            (EvaluationContext)fflib_Match.anyObject(), (Evaluation)fflib_Match.anyObject()))
            .thenReturn(buildMockEvaluationResult(true));
        mocks.stopStubbing();

        /// [get-auto-assignable-accounts]
        List<AccountBase> autoAssignableAccounts = ChaptersApi.v1.service().getAutoAssignableAccounts(sourceChapter);
        /// [get-auto-assignable-accounts]
        System.assertEquals(1, autoAssignableAccounts.size(), 'Expected a single Account returned.');
    }

    private class DefaultModule extends di_Module {
        public override void configure() {
            bind('ChaptersApiFactory').to(DefaultChapterFactory.class);
        }
    }

     /**
     * @description The force-di framework needs this to be public to create the binding.
     */
    public class DefaultChapterFactory extends ChaptersApiFactory {
        protected override IModel getModel(SObject record) {  return null; }
    }

    private class PluginObject extends Pluggable {
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

    private static EvaluationResult buildMockEvaluationResult(Boolean matches) {
        fflib_ApexMocks mocks = new fflib_ApexMocks();
        EvaluationResult matchResult = (EvaluationResult)mocks.mock(EvaluationResult.class);
        mocks.startStubbing();
        mocks.when(matchResult.matches()).thenReturn(matches);
        mocks.stopStubbing();
        return matchResult;
    }

}
