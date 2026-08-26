# Retrieve Records Filtered by Custom Fields {#_22f1003d-f09a-4907-907a-144944b15a0f .concept}

If you use the REST API, to retrieve records that satisfy the specified conditions for custom fields from Acumatica ERP, you access the needed URL with the `GET` HTTP method and specify filtering conditions in the parameters of the method. See the following sections for details on the request and the response.

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

To retrieve records filtered by custom fields, you use the *$filter* parameter.

You can use the following custom function to filter records by the values of custom fields: `cf.<Type name>(f='<View name>.<Field name>')`, where `<Type name>` is the type of the custom element, `<View name>` is the name of the data view that contains the element, and `<Field name>` is the name of the element.

For more information on the use of the *$filter* parameter, see [$filter Parameter](IntegrationDev_RESTExample_Parameter_filter.md).

For other parameters that can be used in the request, see [Retrieve Records by Conditions](IntegrationDev_RESTExample_Basic_Get_Records.md).

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

The following request shows an example of the retrieval of SalesInvoice records for which CuryBalanceWOTotal is *0* and DiscDate is later than February 18, 2024.

**Tip:** The CuryBalanceWOTotal field corresponds to the **Write-Off Total** box on the right pane of the **Applications** tab of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. The DiscDate field corresponds to the **Cash Discount Date** box in the Summary area of the [Invoices](../UserGuide/SO_30_30_00.md) form.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/25.200.001/SalesInvoice
    $filter=cf.Decimal(f='Document.CuryBalanceWOTotal') eq 0M and 
      cf.DateTime(f='Document.DiscDate') 
        gt datetimeoffset'2024-02-18T23%3A59%3A59.999%2B04%3A00'  HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

