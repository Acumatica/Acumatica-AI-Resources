# Retrieve Data from an Inquiry Form

To retrieve data from an inquiry form of Acumatica ERP by using the contract-based REST API, you access the needed URL with the `PUT` HTTP method and pass the parameters of the inquiry in JSON format in the request body. See the following sections for details on the request and the response.

## HTTP Method and URL

If you need to retrieve data from an inquiry form, you use the `PUT` HTTP method and the following URL.

```
PUT http://<Base endpoint URL>/<Top-level entity>
```

**Tip:** The `PUT` method is always used to retrieve data from an entity that is mapped to a generic inquiry. This is because generic inquiries can contain parameters whose values you may need to specify by passing their values in the body of the request.

The URL includes the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity that corresponds to the generic inquiry form you are going to retrieve data from.

For example, suppose that you want to retrieve data from the [Inventory Summary](../UserGuide/IN_40_10_00.md) \(IN401000\) form, which is mapped to the InventorySummaryInquiry entity in the system endpoint with the *Default* name and Version 26.200.001. Also suppose that you use a local Acumatica ERP instance with the name *AcumaticaDB*. You would use the following URL to retrieve data: *http://localhost/AcumaticaDB/entity/Default/26.200.001/InventorySummaryInquiry*.

## Parameter

When you are retrieving data from an inquiry form, you have to use the *$expand* parameter to expand the detail entity, which contains the results of the inquiry. For a detailed description of the parameter, see [$expand Parameter \(Contract Version 5\)](IntegrationDev_RESTExample_Parameter_expand.md).

## Request Headers

You can specify the following headers in the request.

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format of the response body, which should be application/json.

</td></tr><tr><td>

Content-Type

</td><td>

Specifies the format of the request body, which should be application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr></tbody>
</table>

## Request Body

You pass parameters of the inquiry in JSON format in the request body. The following code shows an example of the representation of parameters of the [Inventory Summary](../UserGuide/IN_40_10_00.md#) \(IN401000\) inquiry form in JSON format.

```json
{
  "InventoryID" : {"value" : "APJAM08" } ,
  "WarehouseID" : {"value" : "RETAIL" }
}
```

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request that retrieves data from an inquiry form.

<table id="_de5aba0d-08ea-4e7e-aa2b-1c4e8e0adb19"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully. The response body contains the data retrieved from the inquiry form.

</td></tr><tr><td>

*400*

</td><td>

The data specified in the request is invalid.

</td></tr><tr><td>

*401*

</td><td>

The user is not signed in to the system.

</td></tr><tr><td>

*403*

</td><td>

The user has insufficient rights to access the Acumatica ERP form that corresponds to the API entity.

</td></tr><tr><td>

*429*

</td><td>

The number of requests has exceeded the limit imposed by the license \(see [License Restrictions for API Sessions and Requests](../Shared/../IntegrationDevelopmentGuide/IS__con_License_Restrictions_API_Users.md)\).

</td></tr><tr><td>

*500*

</td><td>

An internal server error has occurred.

</td></tr></tbody>
</table>

## Example

The following request shows an example of the retrieval of data from the [Inventory Summary](../UserGuide/IN_40_10_00.md#) \(IN401000\) inquiry form.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
PUT /entity/Default/26.200.001/InventorySummaryInquiry?
    $expand=Results HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json

{
  "InventoryID" : {"value" : "SIMCARD" } ,
  "WarehouseID" : {"value" : "YOGI" }
}
```

## Example: Custom Generic Inquiry

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

