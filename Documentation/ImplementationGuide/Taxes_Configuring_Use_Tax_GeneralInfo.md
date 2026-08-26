# Use Taxes: General Information {#_326a24c4-1186-4ba4-918f-6d38dfc0bd42 .concept}

A *use tax* is a type of a tax levied in the United States. If your company purchases tax-free goods \(for example, from a vendor that is not registered in the state of your purchase, so that your company does not pay sales tax\), the company must report the purchases and pay the use tax to the tax agency of its home state. The use tax is typically levied at the same rate as the sales tax that would have been paid in the company's state. In Acumatica ERP, the system calculates a use tax in vendor bills, AP adjustments, purchase orders, expense receipts and claims, and cash disbursements.

## Learning Objectives { .section}

In this chapter, you will learn how to configure a use tax that can be used in AP documents, purchase orders, expense receipts and claims, and cash disbursements.

## Applicable Scenarios { .section}

You configure a use tax to be used in the following cases:

-   Your company bought taxable goods, but paid no sales tax
-   Your company bought taxable goods and has paid less tax than the applicable sales tax

## Configuration of Taxes { .section}

The entities that you have configured in the taxes subledger should be linked with the following entities, which you create in other Acumatica ERP subledgers:

-   Stock items and non-stock items: To calculate tax amounts in the documents in which you specify inventory IDs, you should create stock items \(for goods\) and non-stock items \(for services\) and associate each item with the appropriate tax category. The tax category defines the taxes that can be applied to this stock or non-stock item.
-   Vendor and customer accounts: You should create needed vendors in accounts payable and customers in accounts receivable if they do not already exist. Depending on the geographical location of the sale or purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor or customer, you should assign the appropriate tax zone to each new or existing vendor and customer.

Once these entities are configured, the system will calculate tax amounts when a user enters a document in the system. The system does this by applying the particular tax or taxes determined by the system according to the location of the selected customer or vendor and the type of stock or non-stock item specified in the document.

## Use Tax Settings { .section}

Once a user selects a vendor or location in a document on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form, the system checks whether a tax zone is specified for the vendor on the **Purchase Settings** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form. If so, the system inserts in the document the applicable taxes, based on the vendor details and the tax categories specified in the document lines. You can review the tax amounts computed by the system on the **Taxes** tab of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) form.

For a use tax, the **Exclude from Tax-on-Tax Calculation** check box must be selected on the **Tax Settings** tab of the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form because a use tax should be excluded from the taxable amount for calculating the second-level taxes. For details, see [Tax Calculation Methods: General Information](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_GeneralInfo.md).

## Minimum and Maximum Taxable Amounts { .section}

For each row of the table on the **Tax Schedule** tab of the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, you can define the minimum and maximum taxable amount for each tax in the corresponding columns.

-   If a minimum amount is specified in the **Min. Taxable Amount** column, the tax rate of 0 will be applied to amounts less than the specified minimum.
-   If a maximum amount is specified in the **Max. Taxable Amount** column, the taxable amount will be capped to the maximum specified. For example, a tax has the following settings:

    -   **Tax Rate**: `5.00`
    -   **Max. Taxable Amount**: `100.00`
    If a user creates a document with the amount of $200, the tax amount applied to this document will be $5.


In all other cases, the tax is calculated based on the original taxable amount.

**Parent topic:**[Use Tax](../ImplementationGuide/Taxes_Configuring_Use_Tax_Mapref.md)

