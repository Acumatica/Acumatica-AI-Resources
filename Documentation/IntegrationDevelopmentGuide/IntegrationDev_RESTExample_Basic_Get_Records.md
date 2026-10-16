# Retrieve Records by Conditions

To retrieve the records that satisfy the specified conditions from Acumatica ERP by using the contract-based REST API, you access the needed URL address with the `GET` HTTP method; if necessary, you also specify filtering conditions in the parameters of the method. See the following sections for details on the request and the response.

## HTTP Method and URL

If you need to retrieve the list of records, you use the `GET` HTTP method and the following URL.

```
GET http://<Base endpoint URL>/<Top-level entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Top-level entity&gt;* is the name of the entity for which you are going to retrieve the list of records.

For example, suppose that you want to retrieve the list of stock item records from a local Acumatica ERP instance with the name *AcumaticaDB* by using the system endpoint with the name *Default* and Version 26.200.001. You should use the following URL to retrieve the list of records: *http://localhost/AcumaticaDB/entity/Default/26.200.001/StockItem*.

## Parameters

You can use the following parameters when you retrieve records from Acumatica ERP:

-   *$filter*: To specify the filtering conditions that identify the record to be updated. For details, see [$filter Parameter \(Contract Version 5\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_filter.md).
-   *$skip*: To specify the number of records to be skipped from the list of returned records. For more information about the parameter, see [$skip Parameter \(Contract Versions 5 and 4\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_skip.md).
-   *$top*: To specify the number of records to be returned in the list. For details about the parameter, see [$top Parameter \(Contract Versions 5 and 4\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_top.md).
-   *$expand*: To specify the linked and detail entities to be expanded. For more information, see [$expand Parameter \(Contract Version 5\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_expand.md).

    **Attention:** You must list in the *$expand* parameter every detail and related entity that you are going to have in the response body.

-   *$select*: To specify the fields of the entity to be returned. For more information, see [$select Parameter \(Contract Version 5\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_select.md).
-   *$custom*: To specify the fields that are not defined in the contract to be returned. For details, see [$custom Parameter \(Contract Version 4\)](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter_custom.md).

## Request Headers

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format of the response body, which should be application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr></tbody>
</table>

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request that retrieves records by conditions.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*200*

</td><td>

The request has been completed successfully. The response body contains the list of records that satisfy the specified conditions.

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

The following request shows an example of the retrieval of StockItem records that are *Active* and that have been modified since the specified date.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/26.200.001/StockItem?
    $expand=WarehouseDetails&
    $filter=ItemStatus%20eq%20'AC'%20and
        %20LastModifiedDateTime%20gt%202024-08-18T23%3A59%3A59.999%2B04%3A00
    HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
```

## Usage Notes

When multiple records are retrieved from Acumatica ERP, the system tries to optimize the retrieval of the records and obtain all needed records in one request to the database \(instead of requesting the records one by one\). If the optimization fails, the system returns an error, which specifies the entities or fields that caused the failure of the optimized request. To prevent the error from occurring, you can do any of the following:

-   If you do not need to retrieve the entities or fields that caused the failure, you can exclude these entities or fields from the request as follows:
    -   Exclude the entities from the entities specified in the *$expand* parameter
    -   Explicitly specify the other fields to be returned \(while excluding the fields that caused the failure\) by using the *$select* parameter
-   If you need to retrieve the entities or fields that caused the failure, you can retrieve the needed records one by one, either by key fields or by IDs. For more information, see [Retrieve a Record by Key Fields](IntegrationDev_RESTExample_Basic_Get_Record_by_Key.md) and [Retrieve a Record by ID](IntegrationDev_RESTExample_Basic_Get_Record_by_ID.md).

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

