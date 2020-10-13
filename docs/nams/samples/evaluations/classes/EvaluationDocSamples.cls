@IsTest(IsParallel=true)
private class EvaluationDocSamples {
    @IsTest
    private static void retrievingEvaluations() {
        /// [retrieving]
        List<Evaluation> allEvaluations = EvaluationsApi.v1.retriever().get();
        List<Evaluation> evaluationsByName = EvaluationsApi.v1.retriever().getByName(new Set<String> { 'some_name' });
        /// [retrieving]

        System.assertNotEquals(null, allEvaluations, 'Did not expect null.');
        System.assertNotEquals(null, evaluationsByName, 'Did not expect null.');
    }

    @IsTest
    private static void executingAnEvaluation() {
        Evaluation myEvaluation = EvaluationTestData.newInstance().build();
        SObject testRecord = new Account();
        EvaluationContext myContext = EvaluationContext.forRecord(testRecord);

        /// [evaluating]
        EvaluationResult result = EvaluationsApi.v1.service().evaluate(myContext, myEvaluation);
        /// [evaluating]

        /// [eval-result]
        System.debug(result.matches()); // Whether the calculation evaluated to true or false
        System.debug(result.Skipped); // If the evaluation was skipped, usually because not enough context was provided
        System.debug(result.Results); // List of CriteriaEvaluationResult with detailed information about how each Criterion evaluated.
        /// [eval-result]

        System.assertNotEquals(null, result, 'Expected a result returned.');
    }
}
