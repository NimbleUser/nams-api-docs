# Getting Started

!> Please be aware, that this guide is written for developers. To understand the contents of this guide you will need at least some knowledge of how to develop for the Salesforce platform.

## Environment

Nimble AMS comprises several managed packages. The recipes and samples throughout this guide rely on code that comes from
one of these managed packages. Before trying to follow any of the guides, first make sure you have the necessary package installed
in your development org.

Each managed package has a different namespace that is referenced when calling code that comes from that package. The core Nimble AMS packages
and their namespaces are:

* Nimble AMS - `NU`
* Community Hub - `NC`

Nimble AMS also offers a suite of second generation packages (2GP) that share the same namespace: `nams`. When calling code from this
namespace make sure you have all the necessary packages installed, starting with the `Headless` package and then any helper package
for the API you wish to use (e.g. `Affiliations`, `Chapters`, etc.)

## APIs

APIs are the way we let developers communicate with the core systems of our product. Most of our APIs have a similar anatomy and understanding
this anatomy will help you understand how to use them.

### Layers
Our APIs are divided into different layers, each with a different responsibility. Which layers are implemented depend on the functionality of the API.

* **Entry-Point**: represents the class through which callers can interact with the API.
* **Model**: represents the database data the API interacts with.
* **Retriever**: in charge of retrieving records from a source of data (normally the database) and returning Model objects.
* **Factory**: in charge of creating Model objects.
* **Service**: in charge of holding the operations for the API. 

![API Anatomy](/_media/api-anatomy.png)

#### Entry-point

Represents the class through which callers can interact with the API.

**Naming convention**

Named with a plural word that represents plus the Api suffix. For example, `ProductsApi`.

**Summary**

This class is in charge of exposing a variable with the APIs version numbers that returns an instance of the implementation of that service. For example, the ProductsApi class looks as follows

```apex
/**
 * @description Provides endpoints for product information retrieval and management.
 */
global with sharing class ProductsApi {
    /**
     * @description Returns a version 1 instance of this API.
     */
    global static ProductsApiV1 v1 { get; private set; }

    static {
        ProductsApiDependenciesDefaulter.setDefaultDependencies();
        v1 = new ProductsApiV1();
    }
}
```

Note how the `v1` variable returns an implementation of ProductsApiV1, which is the true entry-point class for the version one of this API, 
but should never be called directly by a consumer of the API.

Additionally, note how in the static constructor we are making an additional call besides the initialization of ProductsApiV1. 
All other layers of an API are dynamically instantiated through the use of dependency injection, so this call is used to set up all dependencies once the entry-point is accessed.

!> For dependency injection we use the [Force-di](https://github.com/apex-enterprise-patterns/force-di)  library. You can override any layer of any API we provide by using this hook.

#### Factory
The factory layer is in charge of creating Model objects. Model objects are classes that represent an SObject (an object in the database) and are used to avoid interacting directly with database objects, but instead through in-memory instances that represent them.

**Naming convention**

Named with the name of the API entry-point followed by the word Factory. For example ProductsApiFactory.

**Summary**

This class is in charge of creating instances of other classes. Model classes should not be created directly, but instead through factories, which allows us to have custom logic while instantiating them.

Using the ProductsApi example, if a consumer of the API would want to create a new instance of Product, rather than doing

`Product product = new Product();`

It would look something like this.

`Product product = ProductsApi.v1.factory().createNew();`

#### Retriever
In charge of retrieving records from a source of data (normally the database) and returning Model objects.

**Naming convention**

Named with the name of the API entry-point followed by the word Retriever. For example `ProductsApiRetriever`.

**Summary**

The factory layer is in charge of retrieving data from the database and returning the Model class representation. 
They are very similar to factory classes in the sense that they return Model classes, the difference being that they 
are exclusively used to get data from the database, while factories can create brand new objects. 
Because of their relationship with database data, using the retriever layer is similar to querying data the database using Selectors.

#### Service(s)
The service layer is made up of one or more classes that define the API operations.

**Naming convention**

Named with the name of the API entry-point followed by the word Service. For example ProductsApiService.

**Summary**

This layer can be defined exactly the same way the one in Enterprise Architecture Patterns - Service Layer.

One or more service classes can be created to keep the classes to a single responsibility.

#### Plugins

Plugins expose additional capabilities of the Retriever or Factory layer of an API, allowing you to create 
custom Plugins if you wish to create custom capabilities that the API currently does not have.

When consuming the API, the plugin call is optional, so when you call into the API without them this results in the 
plugin data from not being returned in the payload. 
