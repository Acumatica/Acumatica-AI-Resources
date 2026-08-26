# Retrieve Comments for Attached Files {#_dbed8f9a-da49-4d28-888d-437b5a74d41c .concept}

You can retrieve comments that have been specified for the files attached to a record from Acumatica ERP by using the contract-based REST API. To do this, you access the needed URL with the `GET` HTTP method and specify the files array to be returned. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

To retrieve a record with the list of files attached to the record and comments specified for these files, you use the `GET` HTTP method and the same URL as you would use to retrieve a record \(see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md) and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md)\).

## Parameters { .section}

A comment for a file is returned in the comment field for the file item in the files array. To retrieve a record with comments for the files attached to the record, you use the *$expand* and *$select* parameters with *files* as the value. For detailed descriptions of the parameters, see [Parameters for Retrieving Records](IntegrationDev_RESTExample_Parameter.md).

You can also use other parameters that are available for a request to retrieve a record. For details, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md) and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md).

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

The following example request retrieves the list of files attached to the *EJECTOR03* stock item.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/StockItem/EJECTOR03?
    $select=InventoryID,files&$expand=files HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

The response body, shown below, includes the comment in the comment field.

```
{
  "id":"a0f8594a-7de2-e811-b816-00155d408001",
  "rowNumber":1,
  "note":
  {
    "value":""
  },
  "InventoryID":
  {
    "value":"EJECTOR03"
  },
  "custom":{},
  "_links":
  {
    "self":"...",
    "files:put":"..."
  },
  "files":
  [
    {
      "id":"8050623c-b31f-42a1-876a-13598c90fd29",
      "filename":"Stock Items (EJECTOR03   )\\T2MCRO.jpg",
      "href":"...",
      "comment":"Test comment"
    }
  ]
}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

