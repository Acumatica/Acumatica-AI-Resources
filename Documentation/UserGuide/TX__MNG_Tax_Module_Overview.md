# Tax Management Overview {#_8eba446f-2309-4d01-a067-f8dfdfeb1fd1 .concept}

You can use the tax-related functionality of Acumatica ERP for automatic calculation of tax amounts on each bill, invoice, and other similar document created in Acumatica ERP. To set up the tax calculation in the documents across the system, you should create all required taxes with their effective rates along with other tax-related entities, such as tax zones and tax categories, and then associate these entities with appropriate elements of other Acumatica ERP functional areas involved in the calculation process.

This chapter briefly describes the primary features of the tax functionality. The processes of setting up the tax calculation and configuring the tax reporting functionality are described extensively in other topics of this guide.

## Types of Taxes {#section_nyg_fjv_vxb .section}

In Acumatica ERP, you can configure taxes of the following general types: sales tax, use tax, withholding tax, value-added tax \(VAT\), and goods and services tax \(GST\). These taxes are applied in different countries and their rates depend on the governmental laws of each country. The rate of the tax of each type can vary on different territories of the same country and depends on the type of goods or services your business provides. For example, a tax can be applied at standard rate or fall into one of the following categories: zero-rated or reduced-rated, depending on the provided goods and services.

## Tax Calculation {#section_pyg_fjv_vxb .section}

You can calculate taxes in Acumatica ERP by using different methods. You can specify the appropriate tax calculation method for a tax, including calculating the tax amount based on the total document amount or for each item listed in the document, or excluding the tax amount from the product price specified in the document.

## Tax Zones and Categories {#section_ryg_fjv_vxb .section}

In Acumatica ERP, you can configure taxes of all federal and local levels. For this, you can create the *tax zones*, in which you include the taxes of appropriate rates, and associate each zone with the customer or vendor location. For tax-exempt customers \(for example, those with reseller permits\), you can create the tax zones with zero-rated taxes. Thus, the tax amount in the document will be calculated basing on the tax, which corresponds to the location of the customer or vendor as well as on the type of the services or goods mentioned in the document \(for example, in the invoice\), for which, in turn, you should also create and assign a *tax category*. For more details, see [Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md).

## Tax Agencies {#section_syg_fjv_vxb .section}

In Acumatica ERP, you can configure a tax report for a particular tax agency and set up automatic accumulation of appropriate tax amounts in the tax report. For each tax agency, you can define specific reporting settings, such as the reporting period or the rounding rules. For details, see [Tax Agency](../ImplementationGuide/Taxes_TaxAgency_Mapref.md).

## Tax Reporting {#section_uyg_fjv_vxb .section}

Acumatica ERP gives you the ability to create tax reports. If your company plans to create tax reports by using Acumatica ERP, you should configure a tax report for each tax collection agency to which the taxes have to be reported.

The structure and content of the tax report is prescribed by each particular tax collection agency and can be filed in a paper or electronic form. Usually, this form contains a number of boxes that require the tax amounts and taxable amounts to be entered. In Acumatica ERP, the tax report is represented as a table where the boxes are represented as the lines. You can configure a tax report with required lines, and set up automatic accumulation of tax amounts and taxable amounts in the appropriate lines. For details, see [Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md).

The preparation of a tax report includes the following steps: preparing a tax report for a required reporting period, and closing the reporting period. You can adjust the net tax amount in the tax report by creating the tax adjustment document manually, or create another revision of the tax report for the closed reporting period. For details, see [Preparing a Tax Report for Sales Taxes](Taxes_Preparing_a_Tax_Report_Mapref.md).

When you have configured a tax report and set up all required relations, you can prepare the tax report by clicking one button. You should set up the reporting periods and some report properties individually for each tax agency account. \(In Acumatica ERP, a tax agency is defined as a vendor.\) All the required tax and taxable amounts will be collected in the tax report as each taxable document is released in the system.

While preparing a tax report, you can view all documents that were used for composing the tax report—that is, the documents, such as bills and invoices, whose tax-related amounts were collected in the tax report.

You can view any required tax-related information for a selected period or the date by using the following reports:

-   [Tax Summary](TX_62_10_00.md)
-   [Tax Details](TX_62_05_00.md)
-   [Tax Summary by GL Account by Date](TX_62_30_00.md)
-   [Tax Details by GL Account by Date](TX_62_25_00.md)
-   [Tax Summary by GL Account by Period](TX_62_20_00.md)
-   [Tax Details by GL Account by Period](TX_62_15_00.md)

