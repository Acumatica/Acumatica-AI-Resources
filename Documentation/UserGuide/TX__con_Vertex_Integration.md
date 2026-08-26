# Online Integration with Vertex Tax Calculation {#_4b2baf3e-867a-49cd-9d9b-9a658bf44025 .concept}

If your company sells multiple types of products in many tax jurisdictions, configuring tax calculation and reporting in Acumatica ERP and maintaining up-to-date rates for all the taxes may require too much work and time. In this case, you might consider integrating with the Tax Calculation service by Vertex and then processing sales and VAT taxes online by using it. Acumatica ERP supports integration both with Vertex O Series \(On-Premise or On-Demand deployment\) and Vertex Cloud \(SaaS deployment\).

Also, Acumatica ERP shares a customer class and unit price with Vertex and you can use this data to work with in your Vertex Account.

Because Acumatica ERP provides built-in support for online integration with Vertex tax calculation, you can easily set up this integration. The integration involves tasks that should be performed on both sides: in Acumatica ERP and in Vertex.

**Attention:** Make sure that the *External Tax Calculation Integration* feature is enabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Account Configuration on the Vertex Website { .section}

You can configure the integration with the Vertex tax calculation service as soon as you have the following:

-   A subscription to the [Vertex Tax](http://www.vertexinc.com) service
-   The unique identifier \(Trusted ID\) for your organization's account in Vertex
-   The credentials \(username and password\) to access your Vertex account

In your Vertex account, you should configure the company structure that corresponds to the structure of branches in Acumatica ERP, and configure the tax profile for each company in Vertex \(which corresponds to each Acumatica ERP branch\).

For more information, see [To Configure Your Vertex Account](TX__HOW_Setting_Up_Vertex_Integration.md).

## Setup of Integration with Vertex Tax Calculation in Acumatica ERP { .section}

To set up the integration with the Vertex tax calculation service in Acumatica ERP, you should perform the following general tasks:

1.  Setting up the connection between your Acumatica ERP and Vertex. You also map each Acumatica ERP branch to the corresponding company that you have created in the Vertex for that branch.
2.  Creating a dedicated tax agency account for use with Vertex tax calculation.
3.  Creating a tax zone associated with the tax agency you have created.
4.  Setting up the Vertex tax codes \(Vertex uses hundreds of tax codes for products and services that are sold in the United States\) as tax categories in one of the following ways:
    -   If your company's stock list includes many types of products, you can define all these tax codes as tax categories in Acumatica ERP by creating a tax category for each tax code. In this case, consider importing the needed tax codes by using an import scenario, which you can create on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.
    -   If your company's stock list is small, use only the codes that apply to your company's products by creating the appropriate tax categories manually by using the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
    -   If it is sufficient for your company to use the default tax category, create one tax category \(for example, you can name it *Taxable*\) by using the [Tax Categories](TX_20_55_00.md) \(TX205500\) form. In this case, you should create the corresponding tax code in your Vertex account to associate it with the default tax category in Acumatica ERP.
5.  Configuring customers by specifying the Vertex tax zone for each required customer as the default tax zone. For each customer location with an effective tax exemption certificate, you should specify the number of this certificate and the default entity use code that provides the reasons for exemption.
6.  Configuring stock items and non-stock items by assigning them a special tax category that corresponds to the appropriate Vertex tax code.

    If you are going to import stock item records from the source application you used before Acumatica ERP, consider adding to your import scenario the steps for assigning tax categories to the items.

    **Tip:** To facilitate assigning tax categories to stock items, you can use item classes, which are defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. Item classes provide settings for similar products, and most items in the class have the same tax category. Once you assign a tax category to an item class, all items \(of this class\) that you create later will have this tax category and other class settings by default.


For instructions on configuring the integration with Vertex tax calculation service, see [To Set Up Integration With Vertex Tax Calculation](TX_HOW_Configure_Integration_with_Vertex.md).

**Tip:** We recommend that you use tax calculation either by configuring integration with the Vertex tax calculation service, or by setting up the tax calculation process within Acumatica ERP. Thus, you do not mix two tax calculation approaches in one system.

## Document Processing { .section}

Once integration with Vertex tax calculation service is configured and activated, documents are processed as follows:

-   Individually, in real time, by using the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) and [Invoices](SO_30_30_00.md) \(SO303000\) forms. Once a user takes a sales order or an invoice off hold, the system checks whether the customer location specified on the document is in the special \(*VERTEX*\) tax zone. If so, the system sends a request to Vertex Tax for processing the document. Vertex Tax determines the applicable taxes based on the customer location address, entity code, available exemption certificates, and tax rules \(if any\), and computes the tax amounts. Vertex Tax shows the tax IDs and tax amounts of the applicable taxes on the processed documents.

    For a sales order created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and invoice prepared for this order on the [Invoices](SO_30_30_00.md) form, make sure that the **Disable Automatic Tax Calculation** check box is cleared on the **Financial** tab. If the check box is selected, Acumatica ERP stops sending API requests to the Vertex tax calculation service.

-   In bulk, on schedule, by using the [Calculate Taxes](AP_50_16_00.md) \(AP501600\), [Calculate Taxes](CA_50_16_00.md) \(CA501600\), or [Calculate Taxes](AR_50_16_00.md) \(AR501600\) forms. Each of these forms displays the documents \(of particular types\) for which taxes have not been calculated \(for example, if the connection was not available\). Vertex Tax processes the documents one by one, by calculating taxes and returning tax IDs and tax amounts. A user can initiate document processing manually or schedule it to be performed at night or any other convenient time.

**Attention:** Taxes are calculated on sales orders only for informational purposes. Only taxes on invoices are actually reported.

## Vertex Tax Calculation in AR Invoices { .section}

For sales tax calculation of an AR invoice, Acumatica ERP sends to Vertex the invoice amount and the information on two addresses used in Vertex: *Address From* and *Address To*.

*Address From* is generally the address of the branch specified for the invoice as a whole—the one specified in the **Branch** box on the **Financial Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. If the invoice has been created from a service order or an appointment, *Address From* is the address of the warehouse \(if applicable\) specified for the line item, or the branch location address of the service order \(if no warehouse is applicable\). This address does not affect the sales tax calculation but is required in the Vertex API.

For a document of the *Credit Memo* or *Cash Return* type, Acumatica ERP sends the address of the customer's location as the *Address From* in the header and in document lines that have been directly entered.

*Address To* affects the tax calculation. In all existing versions of Acumatica ERP, the system uses the following sources of the addresses to send to Vertex for tax calculation of a particular document.

|Document|Address To|
|--------|----------|
|An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form, including an invoice that refers to a project \(but excluding an invoice that refers to a service order or appointment\)|The main contact address that is specified for the customer account on the **General Info** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form|
|An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form if the invoice has been generated for a service order or appointment|The address specified in the **Address** section on the **Settings** tab of the [Service Orders](FS_30_01_00.md) \(FS300100\) form for the related service order|
|An AR invoice created on the [Invoices and Memos](AR_30_10_00.md) form, for lines that were added to the invoice on this form and for lines that do not have an associated shipment reference number|The address of the customer location that is specified for the invoice in the **Location** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form and that is also displayed in the **Ship-To Address** section of the **Address Details** tab of this form|
|A document with the *Invoice*, *Cash Sale*, or *Debit Memo* type created on the [Invoices](SO_30_30_00.md) \(SO303000\) form, with lines added directly on this form|The address of the customer location that is specified for the document in the **Location** box in the Summary area of the [Invoices](SO_30_30_00.md) form and that is also displayed in the **Ship-To Address** section of the **Address Details** tab of this form|
|A pro forma invoice created on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, with lines added directly on this form|The address of the customer location that is specified for the document in the **Location** box in the Summary area of the [Pro Forma Invoices](PM_30_70_00.md) form and that is also displayed in the **Ship-To Address** section of the **Address Details** tab of this form|

If you need the system to use different logic in retrieving *Address To* for sales tax calculation in documents, you can override the appropriate method through customization of Acumatica ERP.

## Tax Reporting { .section}

By using the [Post Taxes](TX_50_15_00.md) \(TX501500\) form, you can select the documents to be reflected on your tax reports. This form displays the list of released transactions for which Vertex Tax has calculated the taxes. You can post to your Vertex account all the listed transactions or only those that you select, depending on the information you want Vertex to use on the tax reports for your organization. Each posted document will have a copy in Vertex.

**Parent topic:**[Integrating Acumatica ERP with Vertex Tax Provider](../UserGuide/config_Vertex_Integration_Mapref.md)

