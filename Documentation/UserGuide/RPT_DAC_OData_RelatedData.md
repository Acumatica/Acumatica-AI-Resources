# DAC-Based OData: Retrieving Related Data

In this topic, you can find details about how to retrieve records along with related data by using the DAC-based OData interface. To retrieve the related data, you append the DAC name and the *$expand* parameter to the base URL of the DAC-based OData interface. For details about the base URL, see [The URL for the DAC-Based OData Interface](RPT_DAC_OData_GeneralInfo.md#_17597c9b-c7c4-4659-ae6a-f15108e59eee).

## Retrieving Related Data

You can obtain records along with related data, such as detail records or other linked records. For example, consider a sales order record: Each sales order record may have one or more detail records, which contain data about the inventory items included in the sales order. A sales order record also includes the identifier of the customer, which can be used to retrieve the linked customer record. Therefore, along with a sales order record, you can retrieve detail records and the linked customer record.

You can obtain the records, along with their detail records, in a single query by using the *$expand* parameter and the needed navigation property.

The following sample request retrieves sales orders along with their detail information.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=(OrderType eq 'IN')&
$expand=SOLineCollection
```

The following sample request retrieves sales orders along with data of the customer record related to each of those sales orders.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=(OrderType eq 'IN')&
$expand=BAccountByCustomerID
```

To retrieve records with multiple kinds of detail lines from Acumatica ERP by using DAC-based OData, in the *$expand* parameter, you use multiple navigation properties separated with comma.

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

