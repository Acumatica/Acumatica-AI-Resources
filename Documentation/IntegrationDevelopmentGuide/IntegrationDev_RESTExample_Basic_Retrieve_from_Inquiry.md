# Retrieve Data from an Inquiry Form {#_6340cff3-4732-4231-9e42-5d1e5e65b5dd .concept}

To retrieve data from an inquiry form of Acumatica ERP by using the contract-based REST API, you access the needed URL with the `PUT` HTTP method and pass the parameters of the inquiry in JSON format in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL { .section}

If you need to retrieve data from an inquiry form, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

**Tip:** The `PUT` method is always used to retrieve data from an entity that is mapped to a generic inquiry. This is because generic inquiries can contain parameters whose values you may need to specify by passing their values in the body of the request.

The URL includes the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity that corresponds to the generic inquiry form you are going to retrieve data from.

For example, suppose that you want to retrieve data from the [Inventory Summary](../UserGuide/IN_40_10_00.md) \(IN401000\) form, which is mapped to the InventorySummaryInquiry entity in the system endpoint with the *Default* name and Version 25.200.001. Also suppose that you use a local Acumatica ERP instance with the name *AcumaticaDB*. You would use the following URL to retrieve data: *http://localhost/AcumaticaDB/entity/Default/25.200.001/InventorySummaryInquiry*.

## Parameter { .section}

When you are retrieving data from an inquiry form, you have to use the *$expand* parameter to expand the detail entity, which contains the results of the inquiry. For a detailed description of the parameter, see [$expand Parameter](IntegrationDev_RESTExample_Parameter_expand.md).

## Request Headers { .section}

You can specify the following headers in the request.

|Header|Description|
|------|-----------|
|Accept|Specifies the format of the response body, which should be application/json.|
|Content-Type|Specifies the format of the request body, which should be application/json.|
|Cookie|Specifies the cookies that you have received during the sing-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header in any of the following cases:

 -   You have used the login method to sign in to Acumatica ERP.
-   You are using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

|

## Request Body { .section}

You pass parameters of the inquiry in JSON format in the request body. The following code shows an example of the representation of parameters of the [Inventory Summary](../UserGuide/IN_40_10_00.md#) \(IN401000\) inquiry form in JSON format.

```language-json
{
  "InventoryID" : {"value" : "APJAM08" } ,
  "WarehouseID" : {"value" : "RETAIL" }
}
```

## Response Status Codes { .section}

The following table lists the HTTP status codes that the system returns for a request that retrieves data from an inquiry form.

|Code|Description|
|----|-----------|
|*200*|The request has been completed successfully. The response body contains the data retrieved from the inquiry form.|
|*400*|The data specified in the request is invalid.|
|*401*|The user is not signed in to the system.|
|*403*|The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.|
|*429*|The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Users](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).|
|*500*|An internal server error has occurred.|

## Example { .section}

The following request shows an example of the retrieval of data from the [Inventory Summary](../UserGuide/IN_40_10_00.md#) \(IN401000\) inquiry form.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/25.200.001/InventorySummaryInquiry?
    $expand=Results HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "InventoryID" : {"value" : "SIMCARD" } ,
  "WarehouseID" : {"value" : "YOGI" }
}
```

## Example: Custom Generic Inquiry { .section}

The following request shows an example of the retrieval of data from the Item Availability Data \(INGI0002\) custom generic inquiry.

No entity is mapped to the custom generic inquiry in the system endpoints, which are provided in Acumatica ERP by default. Thus, to export data from this generic inquiry by using the contract-based API, you need to use a custom endpoint or an extension of an existing endpoint. In this example, the *ItemAvailabilityData/0001* custom endpoint is used.

```
PUT /entity/ItemAvailabilityData/0001/ItemAvailabilityDataInquiry?
    $expand=ItemAvailabilityDataInquiryDetails HTTP/1.1
Host: [<Acumatica ERP instance URL>]
Accept: application/json
Content-Type: application/json

{}
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

