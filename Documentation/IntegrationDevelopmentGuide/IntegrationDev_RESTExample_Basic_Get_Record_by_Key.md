# Retrieve a Record by Key Fields {#_52c97a83-1fa1-40e9-8219-52a89a91f2da .concept}

To retrieve a record by the values of its key fields from Acumatica ERP by using the contract-based REST API, you access the needed URL with the `GET` HTTP method and specify the fields that should be returned in the parameters of the method. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

If you need to obtain a particular record with the known key fields, you use the `GET` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/<Key value 1>/<Key value 2>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to retrieve a record.
-   *&lt;Key value 1&gt;* and *&lt;Key value 2&gt;* are the values of the key fields of the record to be retrieved. You use the number and order of key fields as they are defined on the corresponding Acumatica ERP form.

    **Attention:** You can pass the key fields separated by a vertical bar \(*\|*\) instead of a slash \(*/*\). If the value of a key field contains a slash, you need to refer to a record by its entity ID instead of the values of its key fields.


For example, suppose that you want to retrieve the sales order with order type *SO* and order number *000123* from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to retrieve the sales order: *http://localhost/AcumaticaDB/entity/Default/25.200.001/SalesOrder/SO/000123*.

## Parameters { .section}

You can use the following parameters when you retrieve a record from Acumatica ERP:

-   *$expand*: To specify the linked and detail entities to be expanded. For more information, see [$expand Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md).

    **Attention:** You must list in the *$expand* parameter every detail and related entity that you are going to have in the response body.

-   *$custom*: To specify the fields that are not defined in the contract to be returned. For details, see [$custom Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_custom.md).
-   *$select*: To specify the fields of the entity to be returned. For more information, see [$select Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md).

For detailed descriptions of the parameters, see [Parameters for Retrieving Records](IntegrationDev_RESTExample_Parameter.md).

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

The following table lists the HTTP status codes that the system returns for a request that retrieves a record.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the requested record.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of the retrieval of a SalesOrder record through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder/SO/000001
    ?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes { .section}

If you specify the key field values in the $filter parameter instead of passing the key fields in the URL of the request, Acumatica ERP treats this request as a request for multiple records and performs additional optimizations, which are not necessary when you request one record. Therefore, we recommend that you specify the key field values in the URL of the request if you want to retrieve one record.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

