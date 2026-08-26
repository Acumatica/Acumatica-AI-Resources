# Sales Taxes: General Information {#_fde1a926-8a0f-4b9a-858e-2587345b2111 .concept}

A tax in Acumatica ERP is an entity that defines the tax rate, calculation method, and effective date, as well as the GL accounts to which the tax amounts are accumulated.

A *sales tax* is a tax collected by a company from customers as a part of the invoice amount; then the company pays the accumulated tax amounts to the responsible tax agency. \(The company does not claim the sales tax it pays to vendors.\) In Acumatica ERP, the system calculates the sales tax in customer and vendor documents.

## Learning Objectives { .section}

In this chapter, you will learn how to configure sales taxes and value-added taxes to be used in AR and AP documents.

## Applicable Scenarios { .section}

You configure sales taxes in the following cases:

-   You want to process AR documents with sales taxes
-   You want to process AP documents with sales taxes

## Configuration of Taxes { .section}

The entities that you have configured in the taxes subledger should be linked with the following entities, which you create in other Acumatica ERP subledgers:

-   Stock items and non-stock items: To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category. The tax category defines the taxes that can be applied to this stock or non-stock item.
-   Vendor and customer accounts: You should create needed vendors in accounts payable and customers in accounts receivable if they do not already exist. Depending on the geographical location of the sale or purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor or customer, you should assign the appropriate tax zone to each new or existing vendor and customer.

Once these entities are configured, the system will calculate tax amounts when a user enters a document in the system. The system does this by applying the particular tax or taxes determined by the system according to the location of the selected customer or vendor and the type of stock or non-stock item specified in the document.

## Minimum and Maximum Taxable Amounts { .section}

For each row of the table on the **Tax Schedule** tab of the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, you can define the minimum and maximum taxable amount for each tax in the corresponding columns.

-   If a minimum amount is specified in the **Min. Taxable Amount** column, the tax rate of 0 will be applied to amounts less than the specified minimum.
-   If a maximum amount is specified in the **Max. Taxable Amount** column, the taxable amount will be capped to the maximum specified. For example, a tax has the following settings:

    -   **Tax Rate**: `5.00`
    -   **Max. Taxable Amount**: `100.00`
    If a user creates a document with the amount of $200, the tax amount applied to this document will be $5.


In all other cases, the tax is calculated based on the original taxable amount.

## Updating the Tax Rate { .section}

If the rate of a particular tax is going to be changed in the future, on the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, you can specify the new tax rate and the date on which it will become effective. To do that, you add a new row to the table on the **Tax Schedule** tab and specify its settings.

**Parent topic:**[Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md)

