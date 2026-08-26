# Retrieve the List of Records in Batches {#_0ea8ce7c-4423-4286-a481-37e7261cc30f .concept}

To retrieve a large number of records of the same type by using the contract-based REST API, you can use several approaches. There are two extremes in performing this task:

-   You make a single request that retrieves the whole information you need. In this case there is a risk of an operation timeout.
-   You make many requests, each of which retrieves a single record you need. In this case the whole task takes a lot of time.

A balanced approach combines these two extremes: you make multiple requests with the *$top* and *$skip* parameters, each of which retrieves a part of the records you need. The number of records to retrieve in a single request you select empirically to optimize the performance of the whole task or to paginate records.

## HTTP Method and URL { .section}

If you need to retrieve the list of records, you use the `GET` HTTP method and the following URL.

```
GET http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to retrieve the list of records.

For example, suppose that you want to retrieve the list of stock item records from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to retrieve the list of records: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters { .section}

For the information on the request parameters, see [$top Parameter](IntegrationDev_RESTExample_Parameter_top.md) and [$skip Parameter](IntegrationDev_RESTExample_Parameter_skip.md).

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that retrieves records by conditions.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the list of records that satisfy the specified conditions.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

Suppose that you want to retrieve the sales orders in batches of five. The following example shows how to retrieve the second batch of five sales orders.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder
    ?$top=5&$skip=5 HTTP/1.1
Host: [<Acumatica ERP instance URL>]
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

