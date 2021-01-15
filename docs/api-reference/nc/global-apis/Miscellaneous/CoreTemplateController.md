# CoreTemplateController class

Controls CoreTemplate.page. It is global to allow it to be used as a controller for custom templates when replacing the stock CoreTemplate.page in implementations requiring advanced theming.

---
## Properties

### `CustomStylesheetResourceUrl` → `String`

The URL of a static resource containing a custom stylesheet for this Community Hub implementation. @return The URL of a static resource containing a custom stylesheet.

### `FaviconUrl` → `String`

Retrieves the favorite icon (if any) to insert in the <head> of each page using this template. @return Any favorite icon configured.

### `FooterComponent` → `ApexPages.Component`

Allows for a custom component to be used as the footer. @return A custom component to inject in place of the stock footer.

### `FormattedTitle` → `String`

Retrieves the formatted <title> to be inserted in the <head> of each page using this template.

### `HasCustomStylesheet` → `Boolean`

Tells the template whether this Community Hub implementation has a custom stylesheet configured. @return True if a custom stylesheet is configured, else false.

### `HeadComponent` → `ApexPages.Component`

Allows for a custom component to be inserted to the head of every page i.e. custom css, JS, etc. @return A custom component to inject to the <head>

### `HeaderComponent` → `ApexPages.Component`

Allows for a custom component to be used as the header. @return A custom component to inject in place of the stock header.

### `IsUserLoggedIn` → `Boolean`

Whether or not the current user is logged in. @return True or false.

---
