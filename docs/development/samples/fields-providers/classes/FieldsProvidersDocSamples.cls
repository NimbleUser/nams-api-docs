@IsTest(IsParallel=true)
private class FieldsProvidersDocSamples {
    /// [sample-provider]
    public class AccountFieldsProvider extends FieldsProviderBase {
        public override Set<String> getFields() {
            return new Set<String> {
                'Id',
                'Name'
            };
        }
    }
    /// [sample-provider]

    @IsTest
    private static void registeringType() {
        /// [registering-provider]
        FieldsProviderFactory.registerProviderForSObjectType(Account.SObjectType, AccountFieldsProvider.class);
        /// [registering-provider]

        /// [retrieving-fields]
        Set<String> fields = FieldsProviderFactory.newInstance(Account.SObjectType).getFields();
        /// [retrieving-fields]
        System.assert(!fields.isEmpty(), 'Did not expect an empty list.');
    }

    @IsTest
    private static void registeringFields() {
        /// [registering-fields]
        FieldsProviderFactory.registerFieldsForSObjectType(Account.SObjectType, new Set<String> { 'Id' });
        /// [registering-fields]

        Set<String> fields = FieldsProviderFactory.newInstance(Account.SObjectType).getFields();
        System.assert(!fields.isEmpty(), 'Did not expect an empty list.');
    }
}
