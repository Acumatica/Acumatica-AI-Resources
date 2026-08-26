# Prepayment Invoices: Creation of Prepayment Invoices from Sales Orders {#_62395ae0-313c-4448-9fe1-a1c8d05ce0c4 .concept}

In Acumatica ERP, you can create prepayment invoices directly from sales orders to request full or partial prepayments from customers. When a prepayment invoice is created from a sales order, the system determines the prepayment percentage and amount based on the customer’s credit terms, generates the prepayment invoice with information copied from the sales order, and links the document to the originating order for further processing.

## Prepayment Invoice from a Sales Order {#section_o2p_zzd_13c .section}

When a sales order is created and saved on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can create a prepayment invoice to request a full or partial prepayment for the sales order. On the **Payments** tab of the form, you click the **Create Prepayment Invoice** button.

In the **Create Prepayment Invoice** dialog box, which opens, the **Prepayment Percent** and the **Prepayment Amount** boxes are populated depending on the state of the **Prepayment Required** check box in the customer's credit terms specified on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form:

-   If the check box is cleared, the following values are specified:
    -   **Prepayment Percent**: `100` for the first prepayment invoice created for the sales order; the percentage calculated proportionally to the specified prepayment amount for subsequent prepayment invoices
    -   **Prepayment Amount**: The unpaid balance of the sales order for the first prepayment invoice created for the sales order; the unpaid balance of the sales order for subsequent prepayment invoices \(if the prepayment percentage or prepayment amount was changed for the first prepayment invoice\)

        You can either keep these values unchanged \(thus creating a prepayment invoice covering the order total\) or specify a required prepayment percent or amount, which causes the other to be calculated automatically.

-   If the check box is selected and the prepayment percent is defined in the customer's credit terms, the following values are specified:
    -   **Prepayment Percent**: The percent defined by the credit terms for the first prepayment invoice; the percentage calculated proportionally to the specified prepayment amount for subsequent prepayment invoices
    -   **Prepayment Amount**: The amount calculated according to the prepayment percent for the first prepayment invoice; the unpaid balance of the sales order for subsequent prepayment invoices

        You can either keep these values unchanged \(thus creating a prepayment invoice covering the required prepayment amount\) or change the prepayment percent or amount. If you reduce the prepayment percent, an additional prepayment invoice or multiple invoices will be required.


After reviewing the prepayment percentage and amount, and making any necessary changes, you click **Create**. The system closes the dialog box and opens the prepayment invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with most of the settings populated from the sales order. The reference number of the prepayment invoice is assigned according to the numbering sequence specified in the **Prepayment Invoice Numbering Sequence** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

On the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) form, the system has added only the unbilled lines of the sales order to the prepayment invoice that is created. The following settings are specified in the corresponding columns:

-   **Prepayment Percent**: The prepayment percent specified in the dialog box during the creation of the invoice
-   **Prepayment Amount**: The prepayment amount calculated for the line, which it determines by applying the prepayment percentage to the line's **Ext. Price** minus the line’s **Discount Amount** \(if any\)
-   **Order Type**: The sales order type
-   **Order Nbr.**: The reference number of the sales order from which the prepayment invoice has been created.

On the **Discounts** tab of the [Invoices and Memos](AR_30_10_00.md) form, the system has added group or documents \(or both\) discounts, if they have been applied to the sales order.

You can edit the settings of the prepayment invoice \(excluding the **Customer** and **Currency** settings\) before you release the document.

Once the prepayment invoice has been created, the system does the following on the [Sales Orders](SO_30_10_00.md) form:

-   On the **Payments** tab, adds a row with the following settings of the created prepayment invoice:
    -   **Doc. Type**: *Prepmt. Invoice*
    -   **Reference Nbr.**: The reference number of the prepayment invoice
    -   **Applied to Order**: The **Unpaid Balance** of the prepayment invoice
-   On the **Totals** tab, updates the **Total Paid** and the **Unpaid Balance** boxes

For details of how to process prepayment invoices, see [AR Prepayment Invoices: General Information](Finance_Prepayment_Invoices_GeneralInfo.md).

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

