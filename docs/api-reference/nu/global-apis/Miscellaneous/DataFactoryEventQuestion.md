# DataFactoryEventQuestion class

Exposes constants and methods commonly used for creating and inserting Event Question records. These constants and methods are global to help aid in testing customizations and extensions that are created outside of the package.

---
## Properties

### `TEST_EVT_DINNER_QUESTION_OPTIONS` → `List<String>`

---
## Methods
### `createEventQuestion(Id eventId, Id sessionProductId, Boolean isRequired, Integer displayOrder, String question, String type)` → `EventQuestion__c`

Creates an Event Question from the specified parameters. The Session Product Id is not required. For the display order number, lower numbers display higher in the list of questions when presented to the user. The Question Type possible values can be derived by looking at the picklist values on the Event Question object in Salesforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |
|`Id` |  the Id of the Product that is of the Registration Record Type. Optional. |
|`Boolean` |  if true, the question must be answered |
|`Integer` |  the display order of the question |
|`String` |  the question to display to the user |
|`String` |  the type of question to display |

#### Return

**Type**

EventQuestion__c

**Description**

a EventQuestion__c object

### `createEventQuestionOption(Id evtQuestionId, String questionOption, Integer displayOrder)` → `EventQuestionOption__c`

Creates an Event Question Option using the specified parameters. For the display order number, lower numbers display higher in the list of options when presented to the user.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event Question |
|`String` |  the text to display as the option to the user |
|`Integer` |  the display order of the question option |

#### Return

**Type**

EventQuestionOption__c

**Description**

a EventQuestionOption__c object

### `createEventQuestionOptions(Id evtQuestionId, List<String> questionOptions)` → `List<EventQuestionOption__c>`

Creates Event Question Option records, one per each question supplied in the List of Strings for the specified Event Question Id. For the display order, the options will be ordered the same as they are in the List of Strings.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event Question |
|`List<String>` |  the List of Strings that hold the text to display as options to the user |

#### Return

**Type**

List<EventQuestionOption__c>

**Description**

a List of EventQuestionOption__c object records

### `createEvtDietaryReqsQuestion(Id evtId)` → `EventQuestion__c`

Creates an Event Question record using the default dietary requirements question for the Event Id specified. The question is not marked as required, and answer type is a textarea field. The Event Question is not assigned to an Event Session. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |

#### Return

**Type**

EventQuestion__c

**Description**

a EventQuestion__c object

### `createEvtDinnerQuestion(Id evtId)` → `EventQuestion__c`

Creates an Event Question record using the default dinner question for the Event Id specified. The question is marked as required, and answer type is a single select field. The Event Question is not assigned to an Event Session. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |

#### Return

**Type**

EventQuestion__c

**Description**

a EventQuestion__c object

### `createEvtDinnerQuestionOptions(Id evtDinnerQuestionId)` → `List<EventQuestionOption__c>`

Creates Event Question Option records using the default dinner question options for the Event Question Id specified. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event Question |

#### Return

**Type**

List<EventQuestionOption__c>

**Description**

a List of EventQuestionOption__c object records

### `insertEventQuestion(Id eventId, Id sessionProductId, Boolean isRequired, Integer displayOrder, String question, String type)` → `EventQuestion__c`

Creates and inserts an Event Question from the specified parameters. The Session Product Id is not required. For the display order number, lower numbers display higher in the list of questions when presented to the user. The Question Type possible values can be derived by looking at the picklist values on the Event Question object in Salesforce.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |
|`Id` |  the Id of the Product that is of the Registration Record Type. Optional. |
|`Boolean` |  if true, the question must be answered |
|`Integer` |  the display order of the question |
|`String` |  the question to display to the user |
|`String` |  the type of question to display |

#### Return

**Type**

EventQuestion__c

**Description**

a EventQuestion__c object

### `insertEventQuestionOptions(Id evtQuestionId, List<String> questionOpts)` → `List<EventQuestionOption__c>`

Creates and inserts Event Question Option records, one per each question supplied in the List of Strings for the specified Event Question Id. For the display order, the options will be ordered the same as they are in the List of Strings.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event Question |
|`List<String>` |  the List of Strings that hold the text to display as options to the user |

#### Return

**Type**

List<EventQuestionOption__c>

**Description**

a List of EventQuestionOption__c object records

### `insertEventQuestions(Id evtId)` → `List<EventQuestion__c>`

Creates and inserts the default dinner and default dietary requirements Event Question records for the Event Id specified. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event |

#### Return

**Type**

List<EventQuestion__c>

**Description**

a List of EventQuestion__c object records

### `insertSingleSelectEventQuestionWithOptions(Id eventId, Id sessionProductId)` → `EventQuestion__c`

Creates and inserts an Event Question using a default single select question for the Event and Registration Product Id specified. Additionally, default Event Question Options are inserted. This method should be used for testing purposes only.

#### Parameters
|Param|Description|
|-----|-----------|
|`Id` |  the Id of the Event Question |

#### Return

**Type**

EventQuestion__c

**Description**

a List of EventQuestionOption__c object records

---
