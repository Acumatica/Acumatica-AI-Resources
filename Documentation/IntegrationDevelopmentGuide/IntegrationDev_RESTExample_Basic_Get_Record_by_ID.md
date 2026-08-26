# Retrieve a Record by ID {#_bc9531b0-717b-4b2d-8899-ff7ca805ade1 .concept}

To retrieve a record by the value of the entity ID from Acumatica ERP by using the contract-based REST API, you access the needed URL with the `GET` HTTP method and specify the fields that should be returned in the parameters of the method. See the following sections for details on the request and the response.

**Attention:** The entity ID is a GUID that is assigned to each entity you work with during an Acumatica ERP session. You can obtain the value of the entity ID from the ID property of an entity returned from Acumatica ERP.

The records of top-level entities that you retrieve through the contract-based REST API have persistent IDs, which are the values in the `NoteID` column of the corresponding database tables. That is, you can use the value from the ID property of a top-level entity returned from Acumatica ERP throughout different sessions with Acumatica ERP. However, if a record does not have a note ID \(which could be the case for detail entities, entities that correspond to generic inquiries, or custom entities\), this record is assigned the entity ID that is new for each new session. That is, after a new sign-in to Acumatica ERP, you cannot use the entity ID that you received in the previous session to work with the entity.

Any REST API response contains the `_links/self` field for every top-level entity it returns. The value of this field is part of the URL of a `GET` request to retrieve this top-level entity by its ID. The same URL can be used in a `DELETE` request to remove this entity.

## HTTP Method and URL { .section}

If you need to obtain a particular record with the entity ID, you use the `GET` HTTP method and the following URL.

```
http://<Base endpoint URL>/<Top-level entity>/<Entity ID>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   `<Top-level entity>` is the name of the entity for which you are going to retrieve a record.
-   `<Entity ID>` is the ID of the record to be retrieved.

For example, suppose that you want to retrieve the sales order with entity ID *a6295b33-c7f6-e811-b817-00155d408001* from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to retrieve the sales order.

```
http://localhost/AcumaticaDB/entity/Default/25.200.001/SalesOrder/a6295b33-c7f6-e811-b817-00155d408001
```

## Parameters { .section}

You can use the following parameters when you retrieve a record from Acumatica ERP:

-   *$expand*: To specify the linked and detail entities to be expanded. For more information, see [$expand Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md).

    **Attention:** You must list in the *$expand* parameter every detail and related entity that you are going to have in the response body.

-   *$select*: To specify the fields of the entity to be returned. For more information, see [$select Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md).
-   *$custom*: To specify the fields that are not defined in the contract to be returned. For details, see [$custom Parameter](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_custom.md).

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

The following request shows an example of the retrieval of a SalesOrder record with detail records by the entity ID through the REST API.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder
    /a6295b33-c7f6-e811-b817-00155d408001?$expand=Details HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

