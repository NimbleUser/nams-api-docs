# Email class

Send emails through Salesforce or external email providers

---
## Properties

### `ActivityWhatId` → `Id`

An optional id of the record to use for the What field on the activity record.

### `ActivityWhoIds` → `List<Id>`

The ids of records that activities should be created for.

### `BccAddresses` → `List<String>`

List of additional recipients to BCC.

### `CcAddresses` → `List<String>`

List of additional recipients to CC.

### `ContactId` → `Id`

Id of contact record that will receive the email. Required if 		using an email template or if ToAddresses is empty.

### `FromAddress` → `String`

The email address that the email is sent from. 		Not supported by SalesforceEmailProvider.

### `FromName` → `String`

The display name that the email is sent from.

### `Html` → `String`

The HTML content of the email. 		Required if Text is not set. 		Cannot be set if using a template.

### `OrgWideEmailAddressId` → `Id`

The Organization-Wide Email Address record to use 		when sending through the SalesforceEmailProvider.

### `ReplyTo` → `String`

The email address that receieves replies.

### `SaveAsActivity` → `Boolean`

Whether the email should be saved as an activity. 		If set, ActivityWhoIds must be set.

### `Subject` → `String`

The subject line of the email. 		Cannot be set if using a template.

### `TemplateId` → `Id`

The Id of an email template to merge. 		If set, ContactId must be set and Subject, Text, and 			Html must not be set.

### `TemplateWhatId` → `Id`

When using an email template, this record is 		used to populate additional merge fields.

### `Text` → `String`

The text content of the email. 		Required if Html is not set. 		Cannot be set if using a template.

### `ToAddresses` → `List<String>`

List of additional recipients. 		Required if ContactId is not set.

---
## Methods
### `send(List<Email> emails)` → `SendEmailResult`

Sends the list of email messages. 		Emails will be sent through batch apex if the 			count exceeds what can be sent in the current 			context, or if using email templates.

#### Parameters
|Param|Description|
|-----|-----------|
|`emails` |  The emails to send |

#### Return

**Type**

SendEmailResult

**Description**

The result of sending the emails

### `send(List<Messaging.SingleEmailMessage> emails)` → `SendEmailResult`

Sends the list of email messages. 		Emails will be sent through batch apex if the 			count exceeds what can be sent in the current 			context, or if using email templates unless 			using the SalesforceEmailProvider.

#### Parameters
|Param|Description|
|-----|-----------|
|`emails` |  The emails to send. |

#### Return

**Type**

SendEmailResult

**Description**

The result of sending the emails.

---
## Inner Classes

### Email.EmailResult class

The result of sending an individual email

---
#### Properties

##### `Errors` → `List<String>`

Errors that occurred when attempting to send the email

##### `Success` → `Boolean`

Whether the email was sent successfully

---
### Email.SendEmailResult class

The results of sending a list of emails

---
#### Properties

##### `AsyncApexJobId` → `Id`

If the emails are being sent using a batch job, this 		contains the Id of the AsyncApexJob corresponding to the batch job

##### `EmailResults` → `List<EmailResult>`

The results of attempting to send each email

---
