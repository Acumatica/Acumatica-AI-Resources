# DAC-Based OData: Basic Data Retrieval

In this topic, you can find basic information about data retrieval by using the DAC-based OData interface. To retrieve the data, you append the DAC name and various parameters to the base URL of the DAC-based OData interface. For details about the base URL, see [The URL for the DAC-Based OData Interface](RPT_DAC_OData_GeneralInfo.md#_17597c9b-c7c4-4659-ae6a-f15108e59eee).

## Retrieving All Records of a DAC

You can use the following request to get all records of a DAC.

```
GET https://<Acumatica ERP instance URL>/t/<TenantName>/api/odata/dac/<DACName>
```

In this URL, the DAC is specified by its fully qualified name or by its short name \(which does not include the namespace\). You can find the fully qualified name of the DAC in the metadata. For example, the use of either of the following URLs receives the same contents of the SOOrder DAC:

-   *https://sweetlife.com/erp/t/U100/api/odata/dac/SOOrder*
-   *https://sweetlife.com/erp/t/U100/api/odata/dac/PX\_Objects\_SO\_SOOrder*

**Tip:** Password fields are retrieved encrypted.

## Retrieving a Record by Its Key Fields

You can retrieve a record with certain values of key fields by specifying these fields and their values in the URL.

The following sample request retrieves the sales order for which the `OrderType` field is set to *SO* and the `OrderNbr` field is set to *000058*.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder(OrderType='SO',OrderNbr='000058')
```

## Specifying Particular Fields in a Response

In a request, you can specify the DAC fields that you want the response to contain. You do this by specifying the desired fields in the *$select* parameter.

**Tip:** Before you add a field to *$select*, inspect the `Cap.FilterRestrictions` annotation of the entity set in the metadata:

-   Do not add a field listed in the `NonFilterableProperties` collection because the DAC-based OData interface treats each field in this collection as non-selectable.
-   If the annotation contains `<PropertyValue Property="Filterable" Bool="false"/>`, do not add fields declared in that DAC to *$select*. You can still add inherited fields unless they are listed in the `NonFilterableProperties` collection.

The following sample request retrieves customers and provides the `AcctCD`, `AcctName`, and `CustomerClassID` fields in the response.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/PX_Objects_AR_Customer?
$select=AcctCD,AcctName,CustomerClassID
```

To list the fields of the detail records, you specify the following in the request:

-   In the *$expand* parameter, the navigation property for the detail DAC
-   After the property, in parentheses, the DAC fields as the values of the *$select* parameter

**Tip:** By default, the maximum depth of expansion of the detail DACs in the *$expand* parameter is 3. You can change this value by specifying the value of the maxExpansionDepth attribute of the odata tag, which is available inside the px.core tag in the `Web.config` file of your Acumatica ERP instance.

The following sample URL retrieves customers along with their default addresses.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/PX_Objects_AR_Customer?
$select=AcctCD,AcctName,CustomerClassID&
$expand=AddressByDefAddressID(
$select=AddressLine1,AddressLine2,City,State,PostalCode)
```

The response includes the customers' `AcctCD`, `AcctName`, and `CustomerClassID` fields and the following fields of the customers’ addresses: `AddressLine1`, `AddressLine2`, `City`, `State`, and `PostalCode`.

## Retrieving Records in Batches

To retrieve records in batches from Acumatica ERP by using DAC-based OData, you need to use the *$top* and *$skip* parameters of the request. We recommend that you also use the *$orderby* parameter to specify the order of records.

**Attention:** If the *$orderby* parameter is not specified for retrieving batches of records, the system sorts the records by the key fields in ascending order.

The following example retrieves a batch of warehouse detail records. It indicates that the records should be ordered by inventory ID in ascending order. The system will retrieve the top 500 records, excluding the first 50.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/PX_Objects_IN_INSiteStatus?
$skip=50&
$top=500&
$orderby=InventoryID
```

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

