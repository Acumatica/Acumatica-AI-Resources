# Sales Taxes: Additional Settings for Sales Taxes {#_21976fac-e198-43f9-9aed-4a69c267de1d .concept}

This topic lists the settings that can be applied when creating sales taxes.

## First-Level and Second-Level Taxes { .section}

Sometimes multiple taxes should be applied to one document. *First-level taxes* are those taxes that should be applied to the net amount of the document \(the net price of the included goods or services\). *Second-level taxes* are those taxes that should be applied to the sum of the document’s taxable amount and the first-level tax amount. A second-level tax is sometimes called *tax-on-tax calculation*.

## Defining How Cash Discounts Are Applied { .section}

In the **Cash Discount** box on the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) form, you can specify the method of calculating the taxable amount if a cash discount is applied to the document. You can select one of the following options:

**Note:** A cash discount can be applied to a document only within the cash discount period. The end date of the cash discount period is specified in the **Cash Discount Date** box in the invoice \(or the similar document\). This date is defined by the system according to the specified credit terms. For details, see [Setup of Credit Terms](../Shared/../UserGuide/AR__con_Credit_Terms.md).

-   *Reduces Taxable Amount*: The system deducts the discount amount from the document amount before tax calculation. Thus, the tax amount is calculated based on the discounted taxable amount. For example, assume that the price of the one purchased item is $100, the tax rate is 10%, and the cash discount is 20%. In this case, the taxable amount is decreased by the discount amount and is equal to $100 \(price\) - $20 \(discount\) = $80. Thus, the tax amount is $8. The document amount is equal to the product price plus the discounted tax amount: $100 \(price\) + $8 \(tax amount\) = $108.
-   *Does Not Affect Taxable Amount* \(selected by default\): The discount amount doesn’t affect the taxable amount. That is, the base for tax calculation is the same as the base for discount calculation. As in the previous example, consider a price of $100, a discount of 20%, and a tax of 10%. Because the taxable amount is not affected by the discount, it is $100. The tax amount is $10. Thus, the document amount is $110.
-   *Reduces Taxable Amount on Early Payment* \(this option is available for the taxes of the VAT type only\). The system recalculates the taxable amount in the document if the full payment has been received within the cash discount period. The documents that have been fully paid within the cash discount period are listed on the [Generate AR Tax Adjustments](../Shared/../UserGuide/AR_50_45_00.md) \(AR504500\) form. On this form, you can generate credit memos that will be automatically applied to the corresponding documents upon release. For details, see [VAT for Early Payments: To Process a Payment with a Cash Discount](../Shared/../UserGuide/Taxes_Adjusting_VAT_Early_Payments_Process_Activity.md).

## Defining the Reporting Group { .section}

If you plan to use the built-in tax reporting functionality in Acumatica ERP, you should select the reporting group that you have created for the tax agency specified in the **Tax Agency ID** box on the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) form. For details, see [Tax Report](../Shared/../ImplementationGuide/Taxes_TaxReport_Mapref.md).

If you do not plan to use the built-in tax reporting functionality, specify one of the predefined reporting groups \(*input* or *output*\) in the **Reporting Group** column on the **Tax Schedule** tab of this form. For the details on which reporting group to select, see [Tax Report Configuration: General Information](../Shared/../ImplementationGuide/TaxReport_GeneralInfo.md).

**Parent topic:**[Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md)

