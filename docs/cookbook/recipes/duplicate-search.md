# Duplicate Search

## Background

To prevent users in Community Hub from creating duplicate records we originally created the IDupeService interface. This allowed us to created the DupeService and ContainsDupeService implementations, which allow you to search for exact matches and fuzzy search respectively. Because of the foundation we already had with the IDupeService and its implementations we wanted to build upon it and create a more generic framework that allows for point-and-click definition of the FieldSet to be used to define the search. Additionally we moved from a hardcoded component to display duplicate records to a card based implementation, now behaving like a RecordList card.

## How Does It Work

![Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled.png](Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled.png)

1. First we need a FieldSet card. This is just a plain old FieldSet card but you need to consider a couple of things:
    1. The FieldSet that is defined for this card is what powers the search.
    2. The DataSource defined for this card **must return an empty SObject.**
2. The Search button is where the magic happens. This button is in charge of calling the DupeSearchAction (more on this later), where the duplicate search occurs.

![Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled%201.png](Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled%201.png)

Once the Search button is clicked it will take care of defining which IDupeService2 implementation to use, passing it to the DupeSearchAction, which in turn performs the search and broadcasts a `RecordsMessage` with the Ids of the duplicate records found.

![Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled%202.png](Duplicate%20Search%20f39b0540a6a8405290b378d67949e2fd/Untitled%202.png)

Lastly we have a `ReceivedRecordList` card, which is hidden until it receives the `RecordsMessage` with the records it will be displaying. The `ReceivedRecordList` card is just an extension of the `RecordList` card, which means you can do the same things you do for a plain `RecordList` card, like add buttons to it and define a custom FieldSet for it to use.

> The `ReceivedRecordList` card does not need a DataSource. This is because it is waiting for the `RecordsMessage` to tell it which records should be displayed.

> **Pro-tip**: ReceivedRecordList card is just a RecordsMessage card with a few minor differences. Feel free to implement your own, the only thing it needs to do is listen for the RecordsMessage.

## Implementing Your Own Search

To implement your own search you need to do the following:

1. Create a FieldSet card.
2. **Optional** - Implement a custom `NC.IDupeService2`.
3. Create a Search Button.
4. Put it all together

### Example

We want to create create a search experience where users are able to search for Order records that were created during the last 30 days.

1. **Create a FieldSet card.**
    1. First let's create a FieldSet that will allow users to search for Orders by name. We can do this through point-and-click.
    2. Now we need a DataSource. Remember that our DataSource should return an empty NU__Order__c record:

    ```apex
    /**
     * @description Data source for an empty NU__Order__c.
     **/
    public virtual without sharing class NewOrderDataSource extends NC.DataSource {
        @testVisible private static final String REQUEST_PARAM = 'req';
     
        /**
         * @description Gets the type of SObjects returned by the data source: NU__Order__c.
         * @return The Order SObject type.
         */
        public override Schema.SObjectType getSObjectType() {
            return NU__Order__c.SObjectType;
        }
     
        /**
         * @description Gets a new NU__Order__c instance.
         * @param req A list of string field names to retrieve with the query.
         * @return List of NU__Order__c with a new NU__Order__c record.
         * @throws ArgumentNullException if req is null.
         */
        public override Object getData(Request req) {
            NC.ArgumentNullException.throwIfNull(req, REQUEST_PARAM);
            return new List<NU__Order__c > { new NU__Order__c() };
        }
    }
    ```

    1. Now just create your FieldSet card through point-and-click.
2. **Implementing an IDupeService2**
    1. For this example we just want to use the `NC.ContainsDupeService2` instead of implementing our own.
3. **Create a Search Button**

    ```apex
    /**
     * @description Button to search for duplicate Order records.
     **/
    global virtual without sharing class DuplicateOrderButton extends NC.Button {
        private static final String IS_PERSON_ACCOUNT_FIELD_NAME = 'IsPersonAccount';
     
        /**
         * @description Constructs a DuplicateOrderButton.
         * @param buttonRequest Button.Request to construct this button.
         */
        global DuplicateOrderButton (NC.Button.Request buttonRequest) {
            super(buttonRequest);
        }
     
        /**
         * @description Executes the DupeSearchAction action.
         * @return An Action.Result.
         */
        global virtual override Action.Result execute() {
            // In the execute method for our button we first want to define which IDupeService2 to use.
            NC.IDupeService2 dupeService = new NC.ContainsDupeService2();
            // In our case we want to use the ContainsDupeService2, but we could just use any custom one.
     
            // In the button we have access to our parent's (the card) DataSource, which in defines
            // what the user is searching for:
            SObject record = Querier.getRecord(CardDataSourceName);
     
            // And we also have access to the FieldSet name in the card by calling CardFieldSetName.
            // With this information we can create our Criteria Map.
            Map<Schema.SObjectField, Object> criteriaMap = DupeCheckService.newInstance().buildCriteriaMap(
            record, CardFieldSetName, new Map<String, Object>());
     
            // Because our requirements said we are only checking for orders created in the last 30 days, let's
            // make sure that is part of our query:
            List<String> additionalCriteria = new List<String>();
            additionalCriteria.add('CreatedDate = LAST_N_DAYS:30');
     
            // Now we create our request...
            NC.DupeServiceRequest request = new NC.DupeServiceRequest(NU__Order__c.SObjectType, criteriaMap);
            // ...and call the DupeSearchAction, which will take care of the search.
            DupeSearchAction searchAction = new DupeSearchAction(this.Messages, dupeService, request);
     
            return searchAction.execute();
        }
     
        /**
         * @description Constructs a DuplicateOrderButton instance.
         */
        public class Constructor implements NC.IButtonConstructor {
            /**
             * @description Constructs a Button to display on a page.
             * @param buttonRequest A request for a button instance.
             * @return Button which has been constructed.
             */
            public DuplicateOrderButton construct(NC.Button.Request buttonRequest) {
                return new DuplicateOrderButton(buttonRequest);
            }
        }
    }
    ```

4. **Put it all together**

The only thing we need to do is put all of the custom settings together:

1. Create a Button record that uses our new `DuplicateOrderButton` as the class. Add the button to our new FieldSet card.Add the card to any page, as well as the `ReceivedRecordList` card.
