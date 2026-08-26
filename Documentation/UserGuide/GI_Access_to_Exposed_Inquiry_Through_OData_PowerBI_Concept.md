# Generic Inquiry Access Through OData: Connecting to Acumatica ERP from Power BI {#_f0fdb548-69ff-4836-8783-37119a0fa771 .concept}

Microsoft Power BI is a platform that you use to find and visualize data, share analysis, and collaborate intuitively. With Power BI, you can visualize the results of Acumatica ERP generic inquiries that are exposed through the OData protocol. You can also create custom views for Power BI.

## Custom Power BI Views { .section}

You can create custom Power BI views for your instance of Acumatica ERP. The process of creating your own view of Acumatica ERP data in Microsoft Power BI includes the following general steps:

1.  You create a generic inquiry and expose its results through OData. For more information, see [Generic Inquiries and OData: To Expose Inquiry Results Through OData](GI_Exposing_Inquiry_by_Using_OData_Exposing_Inquiry_Through_OData_Activity.md).
2.  In Microsoft Excel, you retrieve the data from the generic inquiry, as described in [Generic Inquiry Access Through OData: To Access an Exposed Inquiry in Microsoft Excel](GI_Access_to_Exposed_Inquiry_Through_OData_Excel_Activity.md). You then prepare the data model for Power BI. By using the Power Pivot add-in to Microsoft Excel, you create, arrange, and normalize the data model of the raw data obtained from the generic inquiry.
3.  You upload the Excel file with the data model to Microsoft Power BI. For more information, see [Getting data from Excel to Power BI](https://docs.microsoft.com/en-us/power-bi/service-excel-workbook-files) in the Microsoft documentation.

## Requirements for the User Account Role { .section}

The access to Power BI views is configured for user roles in Acumatica ERP as the access to the corresponding generic inquiries. An out-of-the-box Acumatica ERP instance includes the predefined *BI* access role, which provides access to the generic inquiries to be used in Power BI. A user with the *Administrator* role can assign the *BI* role to the needed users by using the [Users](SM_20_10_10.md) \(SM201010\) form.

To restrict user access to certain views in Power BI, you can use existing user roles or create additional user roles in Acumatica ERP. You should specify the needed access rights to the appropriate generic inquiry forms by using the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form. For more information on granting user access to Acumatica ERP forms, see [Access Rights to Generic Inquiries: General Information](GI_Access_Rights_GeneralInfo.md).

**Parent topic:**[Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)

