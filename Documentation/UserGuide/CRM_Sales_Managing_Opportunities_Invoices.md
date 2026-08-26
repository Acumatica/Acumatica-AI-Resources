# Opportunity Management: Invoices {#_3a52497e-3f2c-4395-99c1-46846cfde788 .concept}

The **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form may include detail lines that represent products or services for potential sales. A detail line may contain a stock item or a non-stock item defined in Acumatica ERP, or it may contain no inventory item at all. \(That is, the **Inventory ID** column on the **Details** tab may be left empty for the line, which gives you the ability to manually enter a line description in the **Description** column and other values—such as the quantity, price, discount, or warehouse—in the respective columns.\)For details, see [Opportunity Management: Products and Services in an Opportunity](CRM_Sales_Managing_Opportunities_Products_Services.md).

For the opportunity, you can create an AR invoice if a business account of the *Customer* type has been selected for the opportunity. This invoice will include only the detail lines with non-stock items that have been defined in the system. You cannot create an invoice based on that opportunity if the opportunity includes no detail lines, only detail lines with the **Inventory ID** column left empty, or only detail lines with stock items.

You can start creating an invoice based on an opportunity in either of the following ways:

-   By clicking **Create Invoice** on the More menu of the [Opportunities](CR_30_40_00.md) form
-   By clicking **Convert to Invoice** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form

Clicking either of these commands causes the system to open the **Create Invoice** dialog box, where you can specify basic settings, including whether prices and discounts should be recalculated.

**Tip:** If the products, services, and total amount of a deal are still being discussed, and the **Manual Amount** check box is selected in the Summary area of the [Opportunities](CR_30_40_00.md) or [Sales Quotes](CR_30_45_00.md) form, to create an invoice from an opportunity or sales quote with this check box selected, you can select the **Create an Invoice for the Specified Manual Amount** check box of the **Create Invoice** dialog box.

When you click **Create**, the system closes the dialog box and opens the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the applicable settings filled in, so that you can create an invoice associated with the opportunity or the sales quote. For more details about the creation of an invoice from a sales quote, see [Opportunity Management: Sales Quotes](CRM_Sales_Managing_Opportunities_Sales_Quotes.md).

## Creation of an Invoice from an Opportunity { .section}

When an opportunity-based invoice is created, the values of the following settings are copied from the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form to the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form:

-   The settings in the **Bill-To Address** section \(including the **Override Address** check box\), **Bill-To Contact** section \(including the **Override Contact** check box\), **Ship-To Address** and **Ship-To Info** sections from the **Addresses** tab of the [Opportunities](CR_30_40_00.md) form to the corresponding section of the **Addresses** tab of the [Invoices and Memos](AR_30_10_00.md) form
-   The **Credit Terms** box on the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form to the **Terms** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form
-   The settings in the **Tax Settings** section from the **Additional Info** tab of the [Opportunities](CR_30_40_00.md) form to the **Tax Info** section on the **Taxes** tab of the [Invoices and Memos](AR_30_10_00.md) form

The system lists the invoices created from an opportunity on the **Relations** tab of the [Opportunities](CR_30_40_00.md) form. An opportunity can have any number of invoices. An invoice is assigned the *Derivative* role in the **Role** column of this tab, meaning that the invoice has been created based on the opportunity. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

## Creation of an Invoice from a Sales Quote { .section}

You can start creating an invoice from a sales quote by clicking **Convert to Invoice** on the More menu of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form.

An invoice can be created from both a primary quote for an opportunity and a non-primary one. An opportunity can have multiple invoices that are created based on non-primary quotes. The system lists the created invoices on the **Relations** tab of the [Sales Quotes](CR_30_45_00.md) \(CR304500\) and [Opportunities](CR_30_40_00.md) \(CR304000\) forms. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

