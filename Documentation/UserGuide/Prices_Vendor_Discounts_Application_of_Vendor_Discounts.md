# Application of Vendor Discounts {#_1a2fbb93-09c7-48bc-9704-025b600e1589 .concept}

When a document \(such as a bill\) is saved, vendor discounts of all levels are applied to the document automatically, except for the discounts for which the **Manual** check box is selected on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form. This topic provides details about the automatic and manual application of vendor discounts.

## Application of Automatic Discounts { .section}

The system always applies the automatic discounts in the following order when a user saves a document:

1.  Line-level discounts \(which are applied to each line of the document\): For each document line, the system checks the applicable line-level discounts and applies the one with the largest discount amount.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds the applicable group-level discounts and applies all of them.
3.  Document-level discounts \(which are applied to the total amount of the document\): The system finds and applies the applicable document-level discount with the largest discount amount for a document. The system can apply only one \(the best\) document-level discount to the document.

The following settings, which are specified on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form, affect the order of discount application and the calculation of the discounts:

-   **Exclude from Discountable Amount**: If this check box \(which is available only for line-level discounts\) is selected, the discountable amount of the line-level discount is excluded from the discountable amount for higher-level \(group or document\) discounts. For example, suppose that your vendor provides a line-level clearance discount of 75% and a document-level discount of 5% for documents with a total of more than $2000. You select this check box if the vendor does not provide an additional document-level discount of 5% to the already-discounted line amounts.
-   **Skip Document Discount**: If this check box \(which is available only for group-level discounts\) is selected, the system does not apply document discounts when this group discount is applied to the document. For example, suppose that the following discounts have been defined: a group-level discount that is applicable to multiple lines and significantly reduces the document total, and a document-level discount. You select this check box if you do not want to apply the document-level discount to the documents to which this group-level discount has been applied.

## Application of Manual Discounts { .section}

If some vendors provide discounts that do not have formal conditions for automatic application \(that is, document-specific discounts\), you can enter line-level and document-level discounts manually in each document on the following forms:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)

**Note:** In the case if on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Vendor Discounts* feature has been enabled or disabled, the functionality described below is supported by the system. The exception is the **Discount Code** column; this column is excluded from the forms if the *Vendor Discounts* feature is disabled.

You can enter manual discounts either by selecting an existing discount code with the **Manual** check box selected on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form \(in this case, the system applies the discounts that correspond to this code\) or by entering a discount percent or discount amount manually.

You can apply manual line-level discounts to a document on the **Details** tab of the appropriate form as follows:

-   If you want to use an existing discount code, in the **Discount Code** column, you select this code.
-   If you want to enter a discount manually, in the **Discount Percent** or **Discount Amount** column, you type the appropriate percent or amount \(the **Manual Discount** check box will be selected automatically\).

You can apply manual group-level or document-level discounts on the **Discounts** tab of the appropriate form as follows:

-   If you want to use an existing discount code, in the **Discount Code** column, you select this code, and in the **Sequence ID** column, you select the appropriate discount sequence for this code.
-   If you want to enter a document discount manually, in the **Discount Percent** or **Discount Amt.** column, you type the appropriate percent or amount \(the **Manual Discount** check box will be selected automatically\).

If you change the line quantities when adding manual discounts, the manual discounts will be calculated. \(They will not, however, be replaced by automatic discounts, even if the automatic discounts would result in a greater discount amount.\)

If the *Vendor Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can enter a manual document-level discount in the **Document Discounts** box in the Summary area of an appropriate data entry form.

## Application of External Discounts { .section}

In Acumatica ERP, you can apply to a document discounts that were created in external systems. For external discounts, you can create a discount code on the [Vendor Discount Codes](AP_20_40_00.md) \(AP204000\) form or enter a discount and specify the code of the external discount manually on a document.

If you want to enter an external discount manually on an appropriate entry form \(see the list below\), you can either type the external discount code in the **External Discount Code** column \(for informational use only\) or specify discount amount or percent in the **Discount Amt.** or **Discount Percent** column. open the document to which you want to apply the discount , and in the **Discount Amt.** or **Discount Percent** column of the **Discounts** tab, you enter the discount. For a discount line with this manually entered external discount, you can type the external discount code \(for informational use only\) in the **External Discount Code** column.

The system applies external discounts in the same way as it does manual document discounts; the system does not recalculate external discounts if there are changes to the document. You can specify manual external discounts for documents created on the following data entry forms:

-   [Bills and Adjustments](AP_30_10_00.md) \(AP301000\)
-   [Purchase Orders](PO_30_10_00.md) \(PO301000\)

**Parent topic:**[Configuring Vendor Discounts](../UserGuide/Prices_Vendor_Discounts.md)

