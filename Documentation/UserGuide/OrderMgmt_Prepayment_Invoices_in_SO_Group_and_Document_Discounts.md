# Prepayment Invoices: Application of Group and Document Discounts to Prepayment Invoices {#_25787e18-e700-48c4-8aa3-d9916b51cdcd .concept}

In Acumatica ERP, group and document discounts can be applied to prepayment invoices that are created from sales orders. When discounts are defined on a sales order, the system recalculates these discounts proportionally to the prepayment amount and applies them to the corresponding prepayment invoice. Depending on system configuration, discounts can be carried over from the sales order or determined based on discount eligibility of items added directly to the prepayment invoice.

## Group and Document Discounts in Prepayment Invoices {#section_tss_lpy_cdc .section}

If group or document \(or both\) discounts have been applied to a sales order and listed on the **Discounts** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system applies these discounts to the created prepayment invoice. The discount amount is recalculated proportionally to the prepayment amount and inserted in the **Document Discount** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form. These discounts are also added to the **Discounts** tab of the [Invoices and Memos](AR_30_10_00.md) form. If you edit any details copied from the sales order in the prepayment invoice, the system recalculates the discount amount accordingly.

If a sales order includes multiple discounts, the system aggregates these discounts by type \(group or document\) and adds one consolidated line for all group discounts and another line for all document discounts \(including the external document discount\) to the created prepayment invoice to the **Discounts** tab of the [Invoices and Memos](AR_30_10_00.md) form leaving the **Discount Code** and **Sequence ID** columns empty in these lines.

**Important:** The *Customer Discounts* feature should be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the group and document discounts are configured in your Acumatica ERP instance.

If you add a line or lines to the prepayment invoice on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) form and any added item is eligible for a group or document discount, the system applies the corresponding discount to the prepayment invoice. On the **Discounts** tab, the system adds a line with that discount with the **Discount Code** and **Sequence ID** columns filled in. This does not affect the original sales order, and the discounts from the sales order are not recalculated.

If the *Customer Discounts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) form, the discount specified in the **Document Discount** box in the Summary area of the [Sales Orders](SO_30_10_00.md) form is used for the prepayment invoice. Upon creating the prepayment invoice, the system recalculates the discount amount based on the prepayment amount and inserts the value in the **Document Discount** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form. In that case, no lines are added to the **Discounts** tab.

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

