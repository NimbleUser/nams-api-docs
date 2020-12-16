# SendEmailInvAct class

Invocable Action that allows for sending emails through a Flow or Process Builder and uses the internal configured email service (like Sendgrid).

---
## Methods
### `sendEmail(List<SendEmailRequest> requests)` → `List<SendEmailResult>`

Sends email based on the provided information. Optionally creates an Activity if the information for it is provided. Emails are sent asynchronously to support Flows and Process Builder actions that are triggered after DML occurs.

#### Parameters
|Param|Description|
|-----|-----------|
|`requests` |  List of SendEmailInvAct.SendEmailRequests with the necessary information to send emails. |

#### Return

**Type**

List<SendEmailResult>

**Description**

List of SendEmailInvAct.SendEmailResult for the sent emails. Note that only this list will always have

---
## Inner Classes

### SendEmailInvAct.SendEmailRequest class

Request class with information about the emails to send. Mirrors the properties on the Email class but exposed as InvocableVariables.

---
#### Constructors
##### `SendEmailRequest()`

Constructs a SendEmailRequest defaulting the value of ToAddresses, BccAddresses, and CcAddresses to an empty string.
---
#### Properties

##### `ActivityRelatedRecordId` → `Id`

An optional id of the record to use for the What field on the activity record.

##### `ActivityWhoIds` → `String`

The ids of records that activities should be created for.

##### `BccAddresses` → `String`

List of additional recipients to BCC.

##### `CcAddresses` → `String`

List of additional recipients to CC.

##### `ContactId` → `Id`

Id of contact record that will receive the email. Required if using an email template or if ToAddresses is empty.

##### `FromAddress` → `String`

The email address that the email is sent from. Not supported by SalesforceEmailProvider.

##### `FromName` → `String`

The display name that the email is sent from.

##### `Html` → `String`

The HTML content of the email. Required if Text is not set. Cannot be set if using a template.

##### `OrgWideEmailAddressId` → `Id`

The Organization-Wide Email Address record to use when sending through the SalesforceEmailProvider.

##### `ReplyTo` → `String`

The email address that receives replies.

##### `SaveAsActivity` → `Boolean`

Whether the email should be saved as an activity. If set, ActivityWhoIds must be set.

##### `Subject` → `String`

The subject line of the email. Cannot be set if using a template.

##### `TemplateDeveloperName` → `String`

Developer name of an email template to merge. If set, Contact Id must be set and Subject, Text, and Html must not be used. Alternatively, the Template Id can be specified.

##### `TemplateId` → `Id`

Id of an email template to merge. If set, Contact Id must be set and Subject, Text, and Html must not be used. Alternatively, the Template Developer Name can be specified.

##### `TemplateRelatedRecordId` → `Id`

When using an email template, this record is used to populate additional merge fields.

##### `Text` → `String`

The text content of the email. Required if HTML is not set. Cannot be set if using a template.

##### `ToAddresses` → `String`

List of additional recipients. Required if Contact Id is not set.

##### `UseDefaultOrgWideEmailAddress` → `Boolean`

Whether to use the default from name specified on the Configure page. Ignored if From Name is set.

---
### SendEmailInvAct.SendEmailResult class

Contains the result of the email operation.

---
#### Properties

##### `AsyncApexJobId` → `Id`

Id of the job that will send the emails.

---
