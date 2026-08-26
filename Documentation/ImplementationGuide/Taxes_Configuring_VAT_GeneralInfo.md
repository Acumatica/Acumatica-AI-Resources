# Value-Added Taxes: General Information {#_e5dfdf2f-366a-4582-95ca-e5cd1a120623 .concept}

A *value-added tax \(VAT\)* or *goods and services tax \(GST\)* is a consumption tax that is used in the European Union \(EU\), Canada, Australia, and Japan. The tax is paid at each stage of production and distribution. Your organization, as the vendor of the goods, collects this tax from customers as part of the price and pays to the tax agency only the difference between the collected amount and the amount paid to your organization's vendors.

In Acumatica ERP, value-added taxes are used if the *VAT Reporting* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. With this feature enabled, you can configure VAT-type taxes to automatically calculate them on bills and invoices and report them to a tax agency. The system calculates a VAT in vendor bills and adjustments in accounts payable, and in customer invoices and memos in accounts receivable. In different countries, this tax is used along with different modifications of it.

## Learning Objectives { .section}

In this chapter, you will learn how to configure a value-added tax.

## Applicable Scenarios { .section}

You configure value-added taxes in the following cases:

-   Your organization must process AR and AP documents with VATs
-   Your organization needs to report VAT-exempt sales and purchases

## Configuration of Taxes { .section}

The entities that you have configured in the taxes subledger should be linked with the following entities, which you create in other Acumatica ERP subledgers:

-   Stock items and non-stock items: To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category. The tax category defines the taxes that can be applied to this stock or non-stock item.
-   Vendor and customer accounts: You should create needed vendors in accounts payable and customers in accounts receivable if they do not already exist. Depending on the geographical location of the sale or purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor or customer, you should assign the appropriate tax zone to each new or existing vendor and customer.

Once these entities are configured, the system will calculate tax amounts when a user enters a document in the system. The system does this by applying the particular tax or taxes determined by the system according to the location of the selected customer or vendor and the type of stock or non-stock item specified in the document.

## General VAT { .section}

Taxes of the general VAT type are paid at each stage of the production of goods or at each stage in the distribution process. Your organization adds VAT amounts to the sales prices of goods and collects the tax from the customers; this tax amount is called *output tax*. On the other hand, your organization pays the vendor the VAT tax amounts on all related supplies and services; this tax amount is called *input tax*. The tax amount that your organization should pay to the tax agency is calculated as the difference between the output amount and the input amount.

You create a VAT of the general type on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form. While creating a tax, you have to specify a rate to be used for the input tax and a rate to be used for the output tax. The rates can be the same or different.

## Exempt VAT {#section_vv2_1y4_y4b .section}

An *exempt VAT* is applied for certain goods and services \(such as medical care, educational services, and postal services\). If the services provided by your organization are not subject to VAT, your organization does not collect the tax on sales. As a rule, the taxes charged by vendors for related supplies are not claimable by your organization. However, in most cases, your organization should report the amounts of sales that are exempt from VAT.

When you create a VAT of the exempt type, you have to specify 0 rates for the input tax and output tax, so that tax amounts will not be calculated in the documents, but taxable amounts will be accumulated in the tax report.

## Minimum and Maximum Taxable Amounts { .section}

For each row of the table on the **Tax Schedule** tab of the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, you can define the minimum and maximum taxable amount for each tax in the corresponding columns.

-   If a minimum amount is specified in the **Min. Taxable Amount** column, the tax rate of 0 will be applied to amounts less than the specified minimum.
-   If a maximum amount is specified in the **Max. Taxable Amount** column, the taxable amount will be capped to the maximum specified. For example, a tax has the following settings:

    -   **Tax Rate**: `5.00`
    -   **Max. Taxable Amount**: `100.00`
    If a user creates a document with the amount of $200, the tax amount applied to this document will be $5.


In all other cases, the tax is calculated based on the original taxable amount.

## VAT Taxable Total in Documents { .section}

You can control how the VAT taxable amount will be displayed in the summary area of the document \(in the **VAT Taxable Total** box\) when more than one value-added tax is applied to the document.

In multiline documents \(those that contain multiple sales or purchase entries\), different taxes can be applied to each line of the document. The system calculates the VAT taxable amount for each line according to the settings of the applicable tax. Each taxable amount can be added by the system to the **VAT Taxable Total** box, if the **Include in Taxable Total** check box is selected on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form for the corresponding tax.

If two or more taxes are applied to the same line, all the taxable amounts should not be included in the document's VAT taxable total. Thus, if multiple taxes should be applied to your multiline documents, we recommend that you clear the **Include in Taxable Total** check box in the settings of one of the corresponding taxes, so the **VAT Taxable Total** box will be empty.

**Important:** We do not recommend clearing the **Include in Taxable Total** check box for all taxes applied to a document.

Those manipulations do not affect the calculation of tax amounts.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

