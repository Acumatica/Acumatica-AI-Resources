# Retrieve Archived Records

In Acumatica ERP, you can archive records for particular entities. When you use the contract-based REST API to retrieve records, archived records are hidden by default. To make archived records visible, in the HTTP requests you make, you use the custom PX-ApiArchive HTTP header and the *SHOW* value. See the following sections for details on the request and the response.

**Attention:** The updating of an archived record can lead to unpredictable consequences.

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

For information on the request parameters, see the [Parameters](IntegrationDev_RESTExample_Basic_Get_Records.md#_2ce669c3-fdcb-4b50-b9ec-fd0cb1d86ee9) section of [Retrieve Records by Conditions](IntegrationDev_RESTExample_Basic_Get_Records.md).

## Request Headers

You can use the PX-ApiArchive optional header and set its value to *SHOW* to make archived records visible for REST API requests. For other possible headers, see [Retrieve Records by Conditions](IntegrationDev_RESTExample_Basic_Get_Records.md).

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

The following request is an example of the retrieval of shipments \(including archived ones\) that were created before December 31, 2026. ShipmentDate has the DateTimeValue type, therefore you need to specify the date and time value in the filter.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
GET /entity/Default/26.200.001/Shipment
    ?$select=ShipmentNbr,ShipmentDate&$filter=ShipmentDate lt 2026-12-31T10%3A31%3A28.402%2B03%3A00 HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/json
Content-Type: application/json
PX-ApiArchive: SHOW
```

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

