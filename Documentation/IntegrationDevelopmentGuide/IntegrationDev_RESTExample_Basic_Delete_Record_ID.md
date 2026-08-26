# Remove a Record by ID {#_04825ddc-c3af-49de-8663-ae119e84b987 .concept}

In the contract-based REST API, you can remove a record by its session identifier. To remove a record from Acumatica ERP, you access the needed URL address with the `DELETE` HTTP method. See the following sections for details on the request and the response.

Any REST API response contains the `_links/self` field for every top-level entity it returns. The value of this field is part of the URL of a `GET` request to retrieve this top-level entity by its ID. The same URL can be used in a `DELETE` request to remove this entity.

**Attention:** If you need to remove a detail line of a record, you should use the `PUT` HTTP method, as described in [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## HTTP Method and URL { .section}

If you need to remove a record with a known entity ID, you use the `DELETE` HTTP method and the following URL. For details about entity IDs, see [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md).

```
DELETE http://<Base endpoint URL>/<Top-level entity>/<Entity ID>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to remove a record.
-   *&lt;Entity ID&gt;* is the ID of the record to be removed. Entity ID is a GUID that is assigned to each entity you work with during an Acumatica ERP session. You can obtain the value of the entity ID from the ID property of an entity returned from Acumatica ERP.

For example, suppose that you want to remove the sales order with entity ID *03efa858-2351-4bd5-ae06-3d9fb3b3c1e6* from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to remove the sales order: *http://localhost/AcumaticaDB/entity/Default/25.200.001/SalesOrder/03efa858-2351-4bd5-ae06-3d9fb3b3c1e6*.

## Parameters { .section}

You use no parameters when you remove a record.

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that removes a record by its entity ID.

|Code|Description|
|----|-----------|
|*204*|The request has been completed successfully. The record is removed.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of the removal of the sales order with the ID *286F2AF0-21F5-EB11-9DF1-9828A61840C3*.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
DELETE /entity/Default/25.200.001/SalesOrder
       /286F2AF0-21F5-EB11-9DF1-9828A61840C3 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

