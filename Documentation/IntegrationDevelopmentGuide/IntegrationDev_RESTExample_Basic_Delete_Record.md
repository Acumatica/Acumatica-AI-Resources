# Remove a Record by Key Fields {#_d806636f-3cb8-4fd6-bc1e-fef9cdf9683d .concept}

In the contract-based REST API, you can remove a record by the values of its key fields. To remove a record from Acumatica ERP, you access the needed URL address with the `DELETE` HTTP method. See the following sections for details on the request and the response.

**Attention:** If you need to remove a detail line of a record, you should use the `PUT` HTTP method, as described in [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## HTTP Method and URL { .section}

If you need to delete a record with known key fields, you use the `DELETE` HTTP method and the following URL.

```
DELETE http://<Base endpoint URL>/<Top-level entity>/<Key value 1>/<Key value 2>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to remove a record.
-   *&lt;Key value 1&gt;* and *&lt;Key value 2&gt;* are the values of the key fields of the record to be removed. You use the number and order of key fields as they are defined on the corresponding Acumatica ERP form.

    **Attention:** You can pass the key fields separated by a vertical bar \(*\|*\) instead of a slash \(*/*\). If the value of a key field contains a slash, you need to refer to a record by its entity ID instead of the values of its key fields.


For example, suppose that you want to remove the sales order with order type *SO* and order number *000123* from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 25.200.001. You should use the following URL to remove the sales order: *http://localhost/AcumaticaDB/entity/Default/25.200.001/SalesOrder/SO/000123*.

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

The following table lists the HTTP status codes that the system returns for a request that removes the record by the values of its key fields or by its entity ID.

|Code|Description|
|----|-----------|
|*204*|The request has been completed successfully. The record is removed.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of the removal of the *CGFEEDER* stock item by the value of the key field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
DELETE /entity/Default/25.200.001/StockItem/CGFEEDER HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

