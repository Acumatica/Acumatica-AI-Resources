# Generic Inquiry Access Through OData: Data Retrieval {#_7990b4d9-1f40-4654-9494-7b2f6abfd023 .concept}

To retrieve data by using the generic inquiry–based OData interface, you append the generic inquiry name and various parameters to the base URL of the generic inquiry–based OData interface, as described in the sections below. For details about the base URL, see [The URL of the Inquiry-Based OData Interface](GI_Access_to_Exposed_Inquiry_Through_OData_GeneralInfo.md#_93d81216-ee72-44e8-88bc-559a29e06c94).

## Retrieving the Results of a Generic Inquiry {#_dda14cc7-f8e0-49aa-979d-5ab390e8ebba .section}

To view the results of an exposed generic inquiry, you append */&lt;GI\_Name&gt;* to the URL of the generic inquiry–based OData interface. In the URL, you use the name of the generic inquiry that is specified in the respective EntitySet element.

For example, you would specify the *https://sweetlife.com/erp/t/U100/api/odata/gi/BI-Customer* URL if the following are true:

-   The URL of the Acumatica ERP instance is *https://sweetlife.com/erp*.
-   The instance contains the *U100* tenant.
-   You want to obtain the results of the *BI-Customer* generic inquiry.

## Retrieving the Results of a Generic Inquiry with Parameters { .section}

To specify the values for the parameters of a generic inquiry and obtain the results of the generic inquiry, you do the following:

-   You append */&lt;GI\_Name\_WithParameters&gt;* to the URL of the generic inquiry–based OData interface. As *&lt;GI\_Name\_WithParameters&gt;*, you use the name of the generic inquiry that is specified in the respective FunctionImport element.
-   You specify the values of the parameters of the generic inquiry in parentheses.

For example, you would specify the *https://sweetlife.com/erp/t/U100/api/odata/gi/DBStorageDetailsByItemWarehouseLocation\_WithParameters\(Warehouse='WHOLESALE'\)* URL if the following are true:

-   The URL of the Acumatica ERP instance is *https://sweetlife.com/erp*.
-   The instance contains the *U100* tenant.
-   You want to obtain the results of the *DB-StorageDetailsByItemWarehouseLocation* generic inquiry for the *WHOLESALE* warehouse.

You can also use parameter aliases. You may find them useful if the parameter value includes symbols that cannot be used in the URL. In this case, you can move the parameter value to the query part. The example above can be rewritten with a parameter alias as follows: *https://sweetlife.com/erp/t/U100/api/odata/gi/DBStorageDetailsByItemWarehouseLocation\_WithParameters\(Warehouse=@1\)?@1='WHOLESALE'*

## Filtering and Ordering the Results of a Generic Inquiry { .section}

You can filter and order the data of an exposed generic inquiry. In the URL, you use a question mark to start the list of parameters, such as *$filter* and *$orderby*. To specify multiple URL parameters, you use the *&amp;* character between the parameters.

For example, you use the *https://sweetlife.com/erp/t/U100/api/odata/gi/SO-BI-SalesOrdersForYear?$filter=Customer eq 'GOODFOOD' and OrderTotal ge 1000&amp;$orderby=OrderTotal asc* URL if the following are true:

-   The URL of the Acumatica ERP instance is *https://sweetlife.com/erp*.
-   The instance contains the *U100* tenant.
-   You want to obtain the results of the *SO-BI-SalesOrdersForYear* generic inquiry.
-   You need to retrieve the results only for the *GOODFOOD* customer and with a sales order total that is greater than or equal to $1000.
-   You want to order the results by the order total ascending.

For more information on OData parameters, see [https://www.odata.org/documentation/](https://www.odata.org/documentation/). For the list of items that are not supported by OData in Acumatica ERP, see [Generic Inquiries and OData: Preparation of an Inquiry for Exposure](GI_Exposing_Inquiry_by_Using_OData_Preparation_of_Inquiry_for_Exposure.md).

## Retrieving Custom and User-Defined Fields { .section}

In a customization project, you can add custom fields to Acumatica ERP forms. You can also add user-defined fields to Acumatica ERP forms. \(For details about user-defined fields, see [User-Defined Fields](CS__con_User_Defined_Fields.md#).\)

To retrieve custom and user-defined fields through the generic inquiry–based OData interface, you need to add these fields to the results of a generic inquiry exposed via OData. For details about how to add user-defined fields to generic inquiry results, see [Modification of Inquiry Results: General Information](GI_Modifying_Inquiry_Results_General_Info.md).

## Retrieving Records with Multiple Kinds of Detail Lines { .section}

To retrieve records with multiple kinds of detail lines from Acumatica ERP by using generic inquiry–based OData, you need to configure multiple generic inquiries on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form that export all necessary data \(one generic inquiry for each kind of detail lines that you need to export\), expose these generic inquiries via OData \(by clicking the **Expose via OData** check box on the form\), and execute the OData requests. For the best performance of data retrieval, we recommend that you create a separate generic inquiry for each kind of detail lines.

## Retrieving Records in Batches { .section}

To retrieve records in batches from Acumatica ERP by using generic inquiry–based OData, you need to use the *$top* and *$skip* parameters of the request along with the $orderby parameter.

**Parent topic:**[Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)

