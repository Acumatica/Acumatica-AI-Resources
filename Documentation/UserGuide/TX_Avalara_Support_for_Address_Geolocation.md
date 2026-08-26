# AvaTax's Detection of the Customer's Tax Jurisdiction {#_f24d5e99-4a69-46c4-9396-36cf0aef409b .concept}

The AvaTax service can identify a customer's tax jurisdiction by using either the postal code or the latitude and longitude coordinates.

## Identification of the Customer's Tax Jurisdiction {#section_mpn_ynh_tpb .section}

You can specify a customer's location by entering either the postal code or the latitude and longitude coordinates directly on the document entry form or in the customer’s settings. \(The list of forms containing the **Latitude** and **Longitude** boxes is provided later in this topic.\)

When you specify the latitude and longitude coordinates, the AvaTax service defines the customer's tax jurisdiction based on these coordinates. If you specify both the postal address and the latitude and longitude coordinates, the AvaTax service defines the tax jurisdiction based on the postal code. If the postal code and the latitude or longitude coordinate \(or both coordinates\) are missing, the AvaTax service cannot identify the tax jurisdiction, and the system displays an error message.

After the latitude and longitude coordinates are saved, the system copies these coordinates between the associated documents. For example, when you create an invoice based on a sales order, the system copies the address information, including the latitude and longitude coordinates, from the sales order to the invoice. You can override the copied coordinates, if needed.

**Tip:** The entered latitude and longitude coordinates must be specified to six decimal places.

## Forms and Reports that Use Latitude and Longitude Coordinates {#section_vwj_5nh_tpb .section}

The following forms have the **Latitude** and **Longitude** boxes.

|Form|Location|
|----|--------|
|[Invoices and Memos](AR_30_10_00.md) \(AR301000\)|In the **Ship-To Address** section of the **Addresses** tab|
|[Customers](AR_30_30_00.md) \(AR303000\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Customer Locations](AR_30_30_20.md) \(AR303020\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Cash Sales](AR_30_40_00.md) \(AR304000\)|In the **Ship-To Address** section of the **Addresses** tab|
|[Business Accounts](CR_30_30_00.md) \(CR303000\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Account Locations](CR_30_30_10.md) \(CR303010\)|In the **Location Addresses** section of the **General** tab|
|[Opportunities](CR_30_40_00.md) \(CR304000\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Sales Quotes](CR_30_45_00.md) \(CR304500\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Service Orders](FS_30_01_00.md) \(FS300100\)|In the **Address** section of the **Settings** tab|
|[Appointments](FS_30_02_00.md) \(FS300200\)|In the **Address** section of the **Settings** tab|
|[Project Quotes](PM_30_45_00.md) \(PM304500\)|In the **Ship-To Address** section of the **Addresses** tab|
|[Sales Orders](SO_30_10_00.md) \(SO301000\)|In the **Ship-To Address** section of the **Addresses** tab|
|[Shipments](SO_30_20_00.md) \(SO302000\)|In the **Ship-To Address** section of the **Shipping** tab|
|[Invoices](SO_30_30_00.md) \(SO303000\)|In the **Ship-To Address** section of the **Addresses** tab|

The latitude and longitude coordinates are displayed on the reports that are generated on the following report forms:

-   [Invoice &amp; Memo](SO_64_30_00.md) \(SO643000\)
-   [Invoice/Memo](AR_64_10_00.md) \(AR641000\)
-   [Service Order](FS_64_10_00.md) \(FS641000\)
-   [Appointment](FS_64_20_00.md) \(FS642000\)
-   [Sales Order](SO_64_10_10.md) \(SO641010\)
-   [Shipment Confirmation](SO_64_20_00.md) \(SO642000\)
-   [Appointments in Service Order](FS_64_25_00.md) \(FS642500\)

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

