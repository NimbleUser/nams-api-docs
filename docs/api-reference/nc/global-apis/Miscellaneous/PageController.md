# PageController class

The base class for pages. Holds the shared data dictionary and provides access to the MessageService.

---
## Constructors
### `PageController()`

Global class constructor instantiates a CardData instance which contains the MessageService and QueryService singletons to share with the components on the page. This constructor then gets the Cards that are configured for this page.
---
## Properties

### `Messages` → `MessageService`

The MessageService instance, allowing communication between components and the page controller.

---
## Methods
### `getComponents()` → `CardComponents`

Gets the card components to be rendered on the page.

### `getCurrentPageUrl()` → `String`

Gets the current page url with parameters removed. Note the url is lowercase.

#### Return

**Type**

String

**Description**

The current page's url without query parameters.

### `save()` → `PageReference`

Calls submitPage, adding a "Got It, Thanks" label to the page messages. Catches any submission errors and adds them to the page as well.

#### Return

**Type**

PageReference

**Description**

A page to redirect to (if any). Always returns null unless overriden.

### `submitPage()` → `Boolean`

Submit the page, invoking the validate and submit events on all card components.

#### Return

**Type**

Boolean

**Description**

True for success, false otherwise.

---
