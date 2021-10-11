# NAMS REST API Implementation Guide

To help reduce the potential number of `global` classes we might create as REST endpoints,
and to make implementing new endpoints easier, we have created a framework in NAMS to handle
and route REST requests through a single global entry point.
This guide will walk you through creating a new endpoint and routing requests in a few different ways.

## Features

- Single global entry point for _all_ REST API's (accessed via `/nams/api/*`)
- Dynamic API endpoints - defined by Custom Metadata Type records
- Follows and helps enforce
  [best](https://docs.microsoft.com/en-us/azure/architecture/best-practices/api-design)
  [practices](https://stackoverflow.blog/2020/03/02/best-practices-for-rest-api-design/)
  for RESTful API design

---

## Preface

I wanted to give credit to the inspiration for this framework -
[apex-rest-route](https://github.com/callawaycloud/apex-rest-route).
The documentation, code quality, and tests are very well done.

If you are not familiar with exposing Apex REST API's in Salesforce,
I would strongly recommend you either take the
[Trailhead trail](https://trailhead.salesforce.com/en/content/learn/modules/apex_integration_services/apex_integration_webservices)
or you can go through the
[Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_rest.htm).

## Implementing

When implementing a new API endpoint, there are a few pieces that will
need to be built - namely the endpoint and the route(s). The amount of
code needed when implementing a new endpoint should be minimal, thanks
to this framework.

### API Endpoint

An API endpoint is the entry point into the specific API implementation
you are exposing - think `accounts`, `orders`, `lms`. Endpoints are defined
through a `nams__RestEndpoint__mdt` Custom Metadata Type record. This
record defines:

- The Apex **class** that implements `RestApiEndpoint` to handle the request
- The **route** that the endpoint will be accessed from (`accounts`, for example)
- Whether or not the endpoint is **active**
- If the endpoint has been **deprecated**

The endpoint has one and only one responsibility - determine which
router should be instantiated based on the version. The router does the
heavy lifting of traversing the request paths and responding correctly.

**All endpoints should be versioned** - accessed via `/endpoint/v1`, for
example. This allows for easily changing the contract in the future by
using a new version.

#### Example

```apex
public with sharing class LmsApiEndpoint implements RestApiEndpoint {
    public void handleRequest() {
        if (!RestRouteContext.hasNextPath()) {
            throw new RouteNotFoundException(RestRouteContext.Request);
        }

        String version = RestRouteContext.popNextPath();
        switch on version {
            when 'v1' {
                LmsApiV1Route router = new LmsApiV1Route();
                router.execute();
            }
            when else {
                throw new RouteNotFoundException(RestRouteContext.Request);
            }
        }
    }
}
```

Things to note:

- `RestRouteContext` is a helper class that wraps the current `RestContext`.
  There are some helpful methods to refer to and manipulate the current path.
- The handler should handle if the request is not valid, and throw an exception.
- `RestRouteContext.popNextPath` will pop the next path element from the context
  and return it.

### REST Routes

Routes are the core of the API. Each route is responsible for both
handling incoming requests on the route itself (`GET`, `POST`, `DELETE`, `PUT`,
`PATCH`), as well as defining the sub-routes that are supported.

Following RESTful design, routes follow the `/endpoint/:resourceId`
syntax. It's always expected that the _next_ route is a resource ID if
the route specifies that it has a resource (literally the `hasResource`
`virtual` method in `RestRoute`).

An example API might look like:

- `/lms/v1/products`
- `/lms/v1/products/:productId`
- `/lms/v1/products/:productId/purchases`
- `/lms/v1/products/:productId/purchases/:purchaseId`
- `/lms/v1/purchases`
- `/lms/v1/purchases/:purchaseId`

Each route (`products` and `purchases` in the example above) will have an
associated RestRoute implementation that is handling the request or
routing to the next RestRoute.

Requests terminating at a route are handled by overriding the desired
method: `doGet`, `doPost`, `doDelete`, `doPut`, `doPatch`.

#### Returning other Content-Types

By default, anything your return from the `doX` methods will be serialized
to JSON in the response body. If you need to respond with a different
content type, you can manipulate `RestRouteContext.Response` and
return `null`:

```apex
protected override Object doGet() {
    RestRouteContext.Response.responseBody = Blob.valueOf('Hello World!');
    RestRouteContext.Response.addHeader('Content-Type', 'text/plain');
    return null;
}
```

#### Expand Support

In the example above, specifically with regard to
`/lms/v1/products/:productId`, if you wanted to get a product and its
purchases in a single API call, you could implement support for
expanding. This would return the details of the product endpoint, but
also set a property in the response with the details of the purchases
route.

```json
{
  "Id": "a1Z170000040p7tEAA",
  "LastModifiedDate": "2021-08-23T14:45:58.000+0000",
  "ShortDescription": "Take this LMS Course!",
  "Description": "Take this LMS Course!",
  "Name": "LMS Course",
  "purchases": [
    {
      "Id": "a1J17000001OAuxEAG",
      "CustomerId": "0011700001NhFkyAAF",
      "ProductId": "a1Z170000040p7tEAA"
    }
  ]
}
```

Within the `RestRoute` class is a helper method `expandResource` that you
can call into call each sub-route and store those results in the
response JSON. You will want to call that if the request contains the
`expand` parameter.

ℹ️ You can see an example of this in the `LmsApiV1ProductsRoute`
implementation below.

You can implement this on a bulk endpoint (one that returns an array of
objects), but be careful because you will need to expand each result in
the response. This can lead to hitting limits very quickly - so be
careful, or just don't support it.

```apex
if (RestRouteContext.Request.params.containsKey('expand')) {
    List<Map<String, Object>> expandedResponse = new List<Map<String, Object>>();
    for (CompanyDto company : getCompanies()) {
        this.resourceId = company.id;
        expandedResponse.add(expandResource(company));
    }
    return expandedResponse;
}
```

#### Examples

**Entry Route**

```apex
// Accessed via /lms/v1 and routes to the /products and /purchases sub-routes.
public with sharing class LmsApiV1Route extends RestRoute {
    protected override Object doGet() {
        return new LmsApiV1Info();
    }

    protected override Map<String, RestRoute> getNextRouteMap() {
        return new Map<String, RestRoute> {
            'products' => new LmsApiV1ProductsRoute(),
            'purchases' => new LmsApiV1PurchasesRoute()
        };
    }

    // No resource, as this is the entry point into the v1 API.
    protected override Boolean hasResource() {
        return false;
    }

    public class LmsApiV1Info {
        public String version = 'v1';
        public List<String> paths = new List<String> { 'products', 'purchases' };
    }
}
```

Things to note:

- There is no requirement to handle an entry route like this with API
  information. But maybe it's useful ![(blue
star)](media/image1.tmp){width="0.16666666666666666in"
  height="0.16666666666666666in"}

- Overriding the `hasResource` method and returning `false` means that the
  next path will not be treated as a resource ID. Otherwise the next
  path element is popped from the stack and available via
  `this.resourceId`.

**Resource Routes**

```apex
// Accessed standalone (/products and /products/:productId)
// and supports the /purchases next route.
// When accessing a single product (/products/:productId),
// the expand parameter can be used to also fetch the purchases.
public with sharing class LmsApiV1ProductsRoute extends RestRoute {
    protected override Object doGet() {
        if (String.isNotEmpty(this.resourceId)) {
            Object product = getLmsProduct(this.resourceId);
            if (RestRouteContext.Request.params.containsKey('expand')) {
                return expandResource(product);
            }
            return product;
        }
        return getLmsProducts();
    }

    protected override Map<String, RestRoute> getNextRouteMap() {
        return new Map<String, RestRoute> {
            'purchases' => new LmsApiV1PurchasesRoute(this.resourceId)
        };
    }

    // getLmsProduct and getLmsProducts ommitted for simplicity
}
```

Things to note:

- This route also has a sub-route it supports. Passing `this.resourceId`
  to the sub-route allows it to filter correctly, respecting the route
  and context.

- This route supports the `expand` parameter - passed in via query
  string.

```apex
// Accessed standalone (/purchases and /purchases/:purchaseId)
// or through the products route (/products/:productId/purchases)
public with sharing class LmsApiV1PurchasesRoute extends RestRoute {
    private final String productId; // Used in query if not null.

    public LmsApiV1PurchasesRoute() {}

    public LmsApiV1PurchasesRoute(String productId) {
        this.productId = productId;
    }

    protected override Object doGet() {
        if (String.isNotEmpty(this.resourceId)) {
            return getPurchase(this.resourceId);
        }
        return getPurchases();
    }

    // getPurchase and getPurchases ommitted for simplicity
}
```

Things to note:

- This endpoint supports being a sub-route of the products endpoint.
  If the `productId` is provided, the implementation should filter the
  purchases to ones only for that product.

### Errors

To return an error, you can throw a `RestRouteError.RestException` which
accepts a message, error code, and HTTP response status code. There are
several helper implementations for common use cases:

- `OperationNotSupportedException` - used when an endpoint does not
  support a specific HTTP operation. Sets a response message of
  `Method is not supported: [HTTP_CODE]`, the error code to `BAD_REQUEST`,
  and HTTP response code to `400`.

- `ResourceNotFoundException` - used when a resource was being accessed
  and not found. Sets a response message of `Resource does not exist: [RESOURCE_ID]`,
  the error code to `NOT_FOUND`, and HTTP response code to `404`.

- `RouteNotFoundException` - used when a route does not exist. Sets a
  response message of `Could not find route for: [REQUEST_URI]`, the
  error code to `NOT_FOUND`, and response code to `404`.

The response body will always contain `List<RestRouteError.Response>` as this
[follows the best practices for handling REST errors](https://salesforce.stackexchange.com/a/161430).

The `HttpStatusCodes` class can be used to reference HTTP response codes
by name (`HttpStatusCodes.OK` = `200`, for example).

## Testing and Accessing Externally

When developing a new REST endpoint, it's important to test both
internal (unit tests) and external to Salesforce. This replicates how
the endpoint would be used in a real world scenario, and ensures
everything is wired up correctly.

Every endpoint that is created should also have an accompanying Postman
collection that is stored in the repository. This makes it _much_ easier
to test, share how the endpoint works, automate running tests, and
document the functionality. Working code speaks, and collections are a
perfect example of that.

Since Postman is an entire topic on its own, this guide will not cover
that. But please refer to the
[Testing Salesforce REST with Postman Guide](/development/recipes/rest/postman/)
for more information on how to setup and configure Postman. Once you
are connected from Postman to your org, you can call into the NAMS API
through the `/services/apexrest/nams/api/` entry point.
