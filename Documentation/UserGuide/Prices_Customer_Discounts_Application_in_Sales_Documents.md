# Customer Discounts: Discount Application in Sales Documents {#_49b6f685-4b1c-4abd-b268-f75d41d9396c .concept}

Discounts configured in the system can be applied to various documents, including sales orders and sales invoices. The system can calculate discounts differently depending on the document type. For information on configuring discounts of different types, see the topics of the [Customer Discounts: General Information](Prices_Customer_Discounts_GeneralInfo.md) chapter. In this topic, you will read how Acumatica ERP applies discounts to sales orders and sales invoices.

**Attention:** The functionality of sales orders is available if the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. You can configure customer-specific discounts only if the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

## Types of Discounts in Sales Orders { .section}

When a user saves a sales order, the system selects and applies the types of automatic discounts configured in the system in the following order:

1.  Line-level discounts \(which are applied to each line of the document\): For each sales order line, the system finds and applies the applicable line-level discount with the largest discount amount. The system can apply only one \(the best\) line-level discount to a sales order line. On the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form \(**Discount Code** column\), you can view the line-level discounts that the system has automatically applied to sales order lines.
2.  Group-level discounts \(which are applied to multiple lines of the document\): The system finds and applies the applicable group-level discount or discounts. \(Multiple group discounts can be applied to a sales order.\) The discountable amount for each group discount is calculated as the sum of the extended prices of all lines in the group to which the group discount is applicable. Group discounts are applied in parallel. That is, if multiple group discounts are applicable to the same sales order lines, each discount is calculated based on the total of these lines, which is not affected by other group discounts. Group-level discounts that were applied to a document are shown on the **Discounts** tab of the [Sales Orders](SO_30_10_00.md) form.
3.  Document-level discounts \(which are applied to the total amount of the document\): The system finds and applies the applicable document-level discount with the largest discount amount for a particular sales order. The system can apply only one \(the best\) document-level discount to a document. You can see the document-level discounts that were applied to a document on the **Discounts** tab of the [Sales Orders](SO_30_10_00.md) form.

**Important:** Document and group discounts are not applicable to the following orders:

-   Transfer orders
-   Orders of an order type that has the *RMA Order* automation behavior and *No Update* selected in the **AR Document Type** box on the **Template** tab of the [Order Types](../Shared/../UserGuide/SO_20_10_00.md) \(SO201000\) form

## Discount Update in Sales Orders { .section}

By default, Acumatica ERP updates all discounts in a sales order as you change any information in the order \(such as adding new lines\).

Manual line discounts are fixed based on the discount percent. If you change the line details, the system keeps the current discount percentage and uses it to recalculate the discount amount.

Manual document discounts are fixed based on the discount amount. If any changes to the document have been introduced, the system keeps the discount amount and uses it to recalculate the discount percentage.

You can configure the system so that it does not update discounts automatically for orders of a particular type by selecting the **Disable Automatic Discount Update** check box on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form. For a particular order of the type, on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can change the state of this check box on the **Discounts** tab.

When the **Disable Automatic Discount Update** check box is selected for an order, the already-applied discounts are treated as manual for the order. When you run discount recalculation or add new lines to the order, the system preserves the set of applied discounts; it checks whether these discounts are still applicable for the order, but does not apply any other new discounts to the order. If you manually change any of the discountable amounts or quantities in the order, the system recalculates the fixed set of applied discounts based on these changes.

If automatic updating of discounts is disabled for an order on the [Sales Orders](SO_30_10_00.md) form, you can initiate discount recalculation manually by using the **Recalculate Prices** dialog box, which you open by clicking **Recalculate Prices** on the More menu \(under **Other**\).

## Transfer of Discounts to Sales Invoices { .section}

When a sales invoice is prepared on the [Invoices](SO_30_30_00.md) \(SO303000\) form for a sales order, the system transfers all applicable sales order discounts to this sales invoice by using the following rules:

-   If the sales order has been shipped and billed in full, the discounts are transferred to the invoice in full.
-   If the sales order has been partially shipped and billed, the applicable discounts are partially transferred to the invoice by using the ratio of the invoice amount to sales order amount.
-   If the invoice is a consolidated invoice for multiple sales orders, the document and group discounts from all orders are transferred to the invoice. If the same document or group discount applies to multiple orders, the system adds a separate discount line for each order. Each discount line is linked to the sales order from which it was transferred.
-   If the invoice is changed \(for example, if invoice lines are added or deleted, or the invoice date is changed\), on the **Discounts** tab of the [Invoices](SO_30_30_00.md) form, the system recalculates group and document discounts, adds the additional discount lines, and keeps the original discount lines transferred from the sales order. You should review the resulting set of discounts and delete unneeded discount lines.

## General Ledger Transactions for Sales Invoices { .section}

On release of the sales invoice, the system generates a batch of the following general ledger transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Amount|0.0|
|Sales account|0.0|Amount|
|Discount account|Discount Total|0.0|

When the sales invoice is released, all discounts applicable to the invoice at the moment of release are transferred to the created AR invoice. You can review applicable line discounts on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, and group and document discounts on the **Discounts** tab of this form.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

