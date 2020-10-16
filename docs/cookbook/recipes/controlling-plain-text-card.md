# Controlling a Plain Text Card via a Data Source and Controller

# Background

It is possible to define the contents of a Plain Text card using the results of a Data Source.

## Example

Often, a CH user should see different messages based on the existence of records. For example, if they have not provided a disclosure as part of an application, they should see a message asking them to complete a disclosure. If they *have* provided a disclosure, they should see a message asking them if they want to review the disclosure.

## What the user sees when...

### **...user has an active disclosure**

This is what the user will see when they have an active disclosure:

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled.png)

### **...user does NOT have an active disclosure**

This is what the user will see when they do not have an active disclosure:

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%201.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%201.png)

## Card Type Setup

Create a card type using the Apex Controller

Name: OpportunityDisclosureCard

Display Name: Opportunity Disclosure Card

Card Component Constructor: PlainTextCardComponentFactory

Controller Name: OpportunityDisclosureCardTypeController

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%202.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%202.png)

## Card Setup

Name: OpportunityDisclosureCard

Heading Label: OpportunityDisclosureCardHeading

!> **Card Layout** The DisplayHTML Card Layout will properly render HTML within labels on Plain Text Cards. The description labels that are set in the controller class contain HTML.

!> Any description set here will not appear on the card, because of the customizations in the controller class.

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%203.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%203.png)

Labels

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%204.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%204.png)

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%205.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%205.png)

### **Data Source**

This controller uses a custom Apex data source, which is why the context is blank. To use the more typical NC SOQL Data Source, create a Query record and reference it here. Assign your data source to the Card.

![Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%206.png](Controlling%20a%20Plain%20Text%20Card%20via%20a%20Data%20Source%20an%2007813e9501a743b09c4390f249ac8bcd/Untitled%206.png)

Relevant Code Snippets

```apex
/**
 * @description Checks whether or not there is a Disclosure and returns the corresponding label.
 * @return String The Label that should be displayed on the Card.
 */
global override String getDetail() {
    if (thereIsADisclosure) {
        return Label.OpportunityDisclosureReview;
    }
 
    return Label.OpportunityDisclosureNoRecords;
}
 
/**
 * @description Determines if the Description Label defined on the Card should be used, or if the getDetail() method
 *              should be used instead.
 * @returns False, always. The Description Label should be conditionally rendered and the default shouldn't be used.
 */
global override Boolean getUseDescriptionLabel() {
    return false;
}
```

## Controller Code

The controller for the Card that queries the data source and then sets the contents based upon the results. This example contains more complex logic than is required to implement the control over the text content

The methods that need to be changed are:

- getUseDescriptionLabel()
    - Tells the controller to not display the default label, but instead use the getDetail() method to get the description label. Note to prod: would be nice to have consistent naming here for clarity.
    - **This must always return false in order to evaluate getDetail().**
- getDetail()
    - This is where the logic should live for choosing the label to display.
- initialize()
    - This is where to query the data source. Below, the boolean **thereIsADisclosure** is set using data source info and is referenced throughout the class.

```apex
/**
 * @description Controls OpportunityDisclosure component (a variant of the PlainText component).
 **/
public without sharing class OpportunityDisclosureCardTypeController extends NC.CardComponentController {
    @testVisible private static final String DISCLOSURE_CURRENT_DATA_SOURCE = 'DisclosureCurrent';
    @testVisible private static final String OPPORTUNITY_DATA_SOURCE = 'Opportunity';
    @testVisible private static final String CURRENT_OPP_ASSIGNMENT_DATA_SOURCE = 'CurrentOpportunityAssignment';
 
    @testVisible private final static String WRONG_TYPE_RETURNED_BY_DATA_SOURCE =
            'The {0} Data Source must return a list of {1}.';
    @testVisible private final static String NO_RECORDS_RETURNED_BY_DATA_SOURCE =
            'The {0} Data Source must return at least one record.';
 
    @testVisible private List<Disclosure__c> disclosuresList;
    @testVisible private List<Opportunity__c> oppList;
    @testVisible private Opportunity__c opp;
    @testVisible private Assignment__c newAssignment;
    @testVisible private Boolean thereIsADisclosure;
 
    /**
     * @description Subscribes to AssignmentSubmittedMessage type, initializes instance variables that won't change over
     *              the lifetime of the class.
     * @throws WronglyTypedDataSourceException When the Query has been changed to return a different type.
     * @throws MissingRecordsException When the Data Source does not return a record needed by the class.
     */
    public override void initialize() {
        Messages.subscribe(VolunteerApplyButton.AssignmentSubmittedMessage.class, this);
        initializeOpportunity();
        initializeDisclosures();
        initializeNewAssignment();
 
        thereIsADisclosure = !disclosuresList.isEmpty();
    
    /**
     * @description Receives the AssignmentSubmittedMessage that contains the Assignment to modify.
     * @param incomingMessage The Message sent from the VolunteerApplyButton.
     */
    public override void doHandleMessage(NC.Message incomingMessage) {
        if (incomingMessage instanceof VolunteerApplyButton.AssignmentSubmittedMessage) {
            VolunteerApplyButton.AssignmentSubmittedMessage message =
                    (VolunteerApplyButton.AssignmentSubmittedMessage)incomingMessage;
            submit(message.getParameter());
        }
    }
 
    /**
     * @description Determines if this Card should be displayed.
     * @return True if there is an Opportunity, and if that Opportunity requires a Disclosure, and there is no
     *              pre existing Assignment. Checks the Data Source for a record. The Data Source only returns a record
     *              when there is no pre existing Assignment.
     */
    public override Boolean getShouldRender() {
        Boolean noPreExistingAssignment = newAssignment != null;
        Boolean opportunityRequiresDisclosure = (opp != null && opp.RequiresDisclosure__c);
        Boolean opportunityIsOpen = (opp != null && opp.Status__c == 'Open');
 
        return noPreExistingAssignment && opportunityRequiresDisclosure && opportunityIsOpen && super.getShouldRender();
    }
 
    /**
     * @description Determines if there is a Disclosure and thus if the operation is valid.
     * @return OperationResult, successful if there is a Disclosure and failed if not.
     */
    public override NC.OperationResult validate(){
        if (thereIsADisclosure) {
            return super.validate();
        }
 
        return NC.OperationResult.newInstance().addErrorMessage(Label.MustSelectaDisclosure);
    }
 
    /**
     * @description Populates the Disclosure field on the Assignment.
     */
    public void submit(Assignment__c assignment) {
        assignment.Disclosure__c = disclosuresList[0].Id;
    }
 
    /**
     * @description Determines if the Description Label defined on the Card should be used, or if the getDetail() method
     *              should be used instead.
     * @returns False, always. The Description Label should be conditionally rendered and the default shouldn't be used.
     */
    public override Boolean getUseDescriptionLabel() {
        return false;
    }
 
    /**
     * @description Checks whether or not there is a Disclosure and returns the corresponding label.
     * @return String The Label that should be displayed on the Card.
     */
    public override String getDetail() {
        if (thereIsADisclosure) {
            return Label.OpportunityDisclosureReview;
        }
 
        return Label.OpportunityDisclosureNoRecords;
    }
 
    @testVisible
    private void initializeOpportunity() {
        Object opportunityQueryResult = Querier.getData(OPPORTUNITY_DATA_SOURCE);
        if (opportunityQueryResult instanceof List<Opportunity__c>) {
            oppList = (List<Opportunity__c>)opportunityQueryResult;
 
            if (oppList.isEmpty()) {
                throw new MissingRecordsException(String.format(NO_RECORDS_RETURNED_BY_DATA_SOURCE,
                        new List<String> { OPPORTUNITY_DATA_SOURCE }));
            } else {
                opp = oppList[0];
            }
        } else {
            throw new WronglyTypedDataSourceException(String.format(WRONG_TYPE_RETURNED_BY_DATA_SOURCE,
                    new List<String> { OPPORTUNITY_DATA_SOURCE, 'Opportunities' }));
        }
    }
 
    @testVisible
    private void initializeDisclosures() {
        Object disclosureQueryResult = Querier.getData(DISCLOSURE_CURRENT_DATA_SOURCE);
        if (disclosureQueryResult instanceof List<Disclosure__c>) {
            disclosuresList = (List<Disclosure__c>)disclosureQueryResult;
        } else {
            throw new WronglyTypedDataSourceException(String.format(WRONG_TYPE_RETURNED_BY_DATA_SOURCE,
                    new List<String> { DISCLOSURE_CURRENT_DATA_SOURCE, 'Disclosures' }));
        }
    }
 
    @testVisible
    private void initializeNewAssignment() {
        List<Assignment__c> newAssignmentList = (List<Assignment__c>)Querier.getData(this.getCard().IDataSourceName);
        if (!newAssignmentList.isEmpty()) {
            newAssignment = newAssignmentList[0];
        } else {
            newAssignment = null;
        }
    }
 
    public class WronglyTypedDataSourceException extends Exception { }
 
    public class MissingRecordsException extends Exception { }
}
```

!> Make sure to add a unit test for the controller. The bolded sections of the descriptions of the cards in the screenshots are links. It is possible for your card to redirect you to another page on Community Hub. In this case the links bring the user to a page where they can review or create a disclosure.

# Conclusion

You can use advanced logic to control instructions and information shown to a User on a Plain Text card.
