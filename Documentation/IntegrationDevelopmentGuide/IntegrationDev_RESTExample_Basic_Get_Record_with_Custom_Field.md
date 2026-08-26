# Retrieve a Record with Custom Fields {#_01266cc0-6eb1-4e41-b049-246e5915496d .concept}

To retrieve a record with custom fields by using the contract-based REST API, you access the needed URL with the `GET` HTTP method. For more information on retrieval of records, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md), [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md), [Retrieve Records by Conditions](IntegrationDev_RESTExample_Basic_Get_Records.md).

## HTTP Method and URL { .section}

To retrieve a record with custom fields, you use the `GET` HTTP method and the same URL as you would use to retrieve a record that contains only those fields that are defined in the endpoint \(see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md)and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md)\).

## Parameters { .section}

To retrieve a record with custom fields, you use the *$custom* parameter. For more information on the use of the *$custom* parameter, see [$custom Parameter](IntegrationDev_RESTExample_Parameter_custom.md).

You can also use other parameters that are available for a request for retrieval of a record. For details, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md)and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md).

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

Suppose that you have added to the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form the `PRODUCT` user-defined field. The following request shows an example of the retrieval of sales order's fields along with the `PRODUCT` field.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesOrder/SO/000087?
    $custom=Document.AttributePRODUCT HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

