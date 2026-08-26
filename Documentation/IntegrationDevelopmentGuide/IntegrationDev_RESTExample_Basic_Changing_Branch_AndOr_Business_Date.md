# Change the Business Date or Current Branch {#_9821cff9-4970-4153-a0f8-dbf5758133a7 .concept}

When you use the contract-based REST API, the current date is used as the business date, and the branch that you specified when signing in is used as the current branch. When you create or update a record by using the contract-based REST API, you may need to use other values of the business date or current branch. To do this, you use the custom HTTP headers *PX-CbApiBusinessDate* and *PX-CbApiBranch* in the HTTP requests you make. See the following sections for details on the request and the response.

**Attention:** The new values that you specify for the business date or current branch are valid only for the current HTTP request.

## HTTP Method and URL { .section}

When you update a record in Acumatica ERP, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to create or update a record.

For example, suppose that you want to update a stock item record in a local Acumatica ERP instance with the name *AcumaticaDB* by using a system endpoint with the name *Default* and Version 25.200.001. You would use the following URL to update a record: *http://localhost/AcumaticaDB/entity/Default/25.200.001/StockItem*.

## Parameters { .section}

For information on the request parameters, see the *Parameters* section of [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) and the *Parameters* section of [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## Request Headers { .section}

|Header|Description|
|------|-----------|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|
|PX-CbApiBusinessDate|Specifies the new business date. The date can be specified in any format. If you omit this header, the current date is used as the business date.|
|PX-CbApiBranch|Specifies the new current branch. The branch should be specified as a branch name. If you omit this header, the branch that you specified when signing in is used as the current branch.|

## Request Body { .section}

For information on the request body, see the *Request Body* section of [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) and the *Request Body* section of [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## Response Status Codes { .section}

For information on possible response status codes, see the *Response Status Codes* section of [Create a Record](IntegrationDev_RESTExample_Basic_Create_Record.md) and the *Response Status Codes* section of [Update a Record](IntegrationDev_RESTExample_Basic_Update_Record.md).

## Example { .section}

The following request is an example of creating a new journal transaction with *SweetLife Store* set as the new current branch and *01-Jan-2025* set as the business date.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/JournalTransaction HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
PX-CbApiBusinessDate: 2025/01/01
PX-CbApiBranch: SweetLife Store

{
    "Description": {"value": "Test transaction description"},
    "PostPeriod": {"value": "01-2025"}
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

