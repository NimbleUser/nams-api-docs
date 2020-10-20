# Custom Card Configuration

## Background

Previously, when custom card configuration information was desired, it was next to impossible to do for folks writing customizations. It required a specific request to the product team to add a new field and release it. Technical consultants were stuck utilizing the fields packaged in the product and nothing else was available. All of that has changed now thanks to the creation of the **`NC__Card__c.NC__Configuration__c`** field. This field allows technical consultants to reference configuration data of any kind which can be fit into a 255 character text field.

## Adding Configuration to a Card

Adding the desired configuration can be done easily through point and click.

1. From inside staff view, navigate to **/apex/nc__pageconfiguration** (relative to the root of your Salesforce domain's URL).
2. In the **Page to Configure** dropdown, select the page containing the card you want to add custom configuration to e.g. **Profile Snapshot**.
3. Click **Edit** next to the card you desire to add custom configuration to e.g. **SnapshotPersonalCard**.
4. In the field labeled **Configuration** you may store up to 255 characters of custom configuration data. Do that now.
5. Click **Save**.

## Utilizing the Configuration in a Card Controller

Now that the configuration is stored on the NC__Card__c record, we can access it easily from inside a custom card controller. Our example controller is called `CustomCardController`.

```apex
/**
 * @description Extends CardComponentController conditionally rendering based upon custom configuration data.
 **/
global with sharing class CustomCardController extends NC.CardComponentController {
    @testVisible private static final String EXAMPLE_CONFIG = 'test_config'
  
    /**
     * @description Determines if this card should render, based upon being configured to display.
     * @return True if this card should render, else false.
     */
    global override Boolean getShouldRender() {
        // Grab the configuration field from the NC.CardComponentController method which makes it available.
        String configurationData = getConfiguration();
  
        // This working, but incredibly basic use case is, if this card's NC__Configuration__c field contains
        // a value of 'test_config', the card should render.
        return configurationData.equalsIgnoreCase(EXAMPLE_CONFIG);
    }
}
```

## Unit Testing the Configuration in a Card Controller Test Class

Since we've built a custom card controller class, we probably need a way to unit test it, right?

```apex
@isTest
private class CustomCardControllerTest {
    @isTest
    private static void getShouldRender_withExampleConfig_expectTrue() {
        NU.Card testCard = NU.CardTestData.Instance
            .withConfiguration(CustomCardController.EXAMPLE_CONFIG)
            .createCard();
        CustomCardController testController = new CustomCardController();
        testController.setCard(testCard);
 
        Test.startTest();
        Boolean shouldRender = testController.getShouldRender();
        Test.stopTest();
 
        System.assert(shouldRender, 'Expected card to render with custom config.');
    }
  
    @isTest
    private static void getShouldRender_withoutExampleConfig_expectFalse() {
        NU.Card testCard = NU.CardTestData.Instance.createCard();
        CustomCardController testController = new CustomCardController();
        testController.setCard(testCard);
 
        Test.startTest();
        Boolean shouldRender = testController.getShouldRender();
        Test.stopTest();
 
        System.assert(!shouldRender, 'Did not expect card to render without custom config.');
    }
}
```

## Conclusion

As you can see, it's straightforward and simple to add custom configuration data through point and click, then retrieve it in a custom controller and mock it out in unit tests.
