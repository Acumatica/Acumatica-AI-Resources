# Discount Application in Purchase Documents {#_a8d543a1-e2fa-4042-9923-196f8c05d5ff .concept}

If the *Vendor Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure line-level, group-level, and document-level discounts that will be applied to purchase orders. For information on configuring discounts of different types, see the topics of the chapter. This topic explains how Acumatica ERP applies discounts to purchase orders.

## Types of Discounts in Purchase Orders { .section}

When a user enters a purchase order, the system selects and applies the automatic discounts configured in the system in the following order:

1.  Line-level discounts \(which are applied to each line of the document\): For each purchase order line, the system finds and applies the line-level discount with the largest discount amount. The system can apply only one \(the best\) line-level discount to a purchase order line. When the accounts payable bill is prepared for the purchase order, the line discounts are prorated from the purchase order lines to the accounts payable bill lines.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds and applies the group-level discount or discounts. \(Multiple group discounts can be applied to a purchase order.\) The discountable amount for each group discount is calculated as the sum of the extended prices of all lines in the group to which the group discount is applicable. Group discounts are applied in parallel: if multiple group discounts are applicable to the same purchase order lines, each discount is calculated based on the total of these lines, which is not affected by other group discounts. When the accounts payable bill is prepared for the purchase order, group discounts are recalculated in the accounts payable bill according to the line quantity and amount in this bill.
3.  Document-level discounts \(which are applied to the total amount of the document\): The system finds the document-level discount with the largest discount amount for the purchase order and applies it. The system can apply only one \(the best\) document-level discount to a document. When the accounts payable bill is prepared for the purchase order, document discounts are recalculated in the accounts payable bill according to the line quantity and amount in this bill.

Line-level discounts that the system has automatically applied to purchase order lines are shown in the **Discount Percent**, **Discount Amount** and **Discount Code** columns on the **Document Details** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. Document-level and group-level discounts that were applied to a document are shown on the **Discounts** tab of this form.

**Parent topic:**[Configuring Vendor Discounts](../UserGuide/Prices_Vendor_Discounts.md)

