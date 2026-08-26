# AR Invoices with Retainage: Configuration of the Default Retainage Settings {#_6c01ce0e-504e-4b16-9dc6-53f69ea8c77b .concept}

In this topic, you will read about how to specify the accounts receivable settings related to retainage, set up classes for customers that retain amounts on invoices, and configure particular customers \(and customer locations\) that retain amounts on invoices.

## General AR Retainage Settings { .section}

In the **Retainage Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you select the **Automatically Release Retainage Documents** check box to direct the system to automatically release the retainage documents created on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form.

To affect the generation of retainage documents on the [Release AR Retainage](AR_51_00_00.md) form, in the **Data Entry Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form, you can specify the state of the **Hold Documents on Entry** check box as follows:

-   Clear this check box to direct the system to automatically remove retainage documents from hold as soon as they are created. With this check box cleared, retainage documents will be assigned the *Pending Approval* status if approvals are set up in your system for the needed document type, or the *Balanced* status if approvals are not used.
-   Select this check box to direct the system to generate retainage documents with the *On Hold* status, whether or not approvals are set up.

## Retainage Settings of Customers { .section}

For each customer for which your company needs to retain a certain amount of each invoice’s total, you can specify default settings as follows on the **Financial** tab \(**Retainage Settings** section\) of the [Customers](AR_30_30_00.md) \(AR303000\) form:

-   To direct the system to apply retainage when you create an invoice for this customer, you select the **Apply Retainage** check box. If this check box is selected, the **Apply Retainage** check box is selected by default for each invoice of the customer in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. If this check box is cleared for the customer, by default, the **Apply Retainage** check box is cleared for each invoice of the customer on the [Invoices and Memos](AR_30_10_00.md) form; you can select it manually to retain a part of the amount of a particular invoice.
-   If the **Apply Retainage** check box is selected for the customer, to specify the default percent to be retained from the line amount of each invoice of the customer, you specify the percent in the **Retainage Percent** box. The system enters this percent for each invoice of the customer in the **Default Retainage Percent** box on the **Retainage** tab on the [Invoices and Memos](AR_30_10_00.md) form, and this percent is applied by default to all lines on the **Details** tab.

You can specify the default retainage receivable account and subaccount \(if applicable\) for a customer in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form. The account and subaccount you specify will be used to record the amount that the customer owes to your company for the invoices.

## Retainage of Taxes {#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162 .section}

To retain the taxes calculated on retained amounts, you select the **Retain Taxes** check box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. With this check box selected, the system calculates and reports the taxes of the invoices with retainage and the retainage invoices separately. Then you need to specify the account and subaccount to be used for posting retainage tax amounts in the **Retainage Tax Payable Account** and **Retainage Tax Payable Subaccount** boxes on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form for each applicable tax code.

If the **Retain Taxes** check box is cleared, the full tax amount is paid on the invoice with retainage.

**Parent topic:**[Processing AR Invoices with Retainage](../UserGuide/Construction_ARInvoice_with_Retainage_Mapref.md)

