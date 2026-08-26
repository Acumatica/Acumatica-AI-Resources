# AR Invoices with Retainage: Implementation Checklist {#_184abf09-a826-4bdc-9906-79cb2a1340dc .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AR invoices with retainage, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you begin processing AR invoices with retainage, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklists.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The following features have been enabled:-   *Retainage Support*
-   *Payment Application by Line*
-   *Projects*
-   *Construction*

|
|[Customers](AR_30_30_00.md#) \(AR303000\) form|The customer accounts for the customers for which you will create AR invoices have been defined. Also, make sure that the following retainage settings have been specified for each customer:-   On the **Financial** tab, the **Apply Retainage** check box is selected. Optionally, the default retainage percentage is specified in the **Retainage Percent** box.
-   On the **GL Accounts** tab, the **Retainage Receivable Account** is specified.

For details, see [AR Invoices with Retainage: Configuration of the Default Retainage Settings](Construction_ARInvoice_with_Retainage_GeneralInfo2.md).

|
|[Projects](PM_30_10_00.md#) \(PM301000\) form, **Summary** tab \(**Retainage** section\)|The necessary projects and their project tasks have been created. Also, make sure that the following retainage settings have been specified for the project: -   The retainage mode is selected in the **Retainage Mode** box.
-   The **Retainage \(%\)** box contains the percent of the amount of an invoice issued for the project that is retained by the customer.

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing AR invoices with retainage as follows:

-   The following general ledger settings should be specified on the **Posting Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   To give the created AR invoices the *On Hold* status, select the **Hold Documents on Entry** check box in the **Data Entry Settings** section.
    -   To direct the system to automatically remove retainage documents from hold as soon as they are created, clear the **Hold Documents on Entry** check box. With this check box cleared, retainage documents will get the *Pending Approval* status if approvals are set up in your system for the needed document type, or the *Balanced* status if approvals are not used.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section to prevent users from having to enter a payment reference number in the **Payment Ref.** box when creating an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   To cause AR invoices to be automatically posted to the general ledger once they are released, make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section.
    -   If you want to retain the taxes calculated on the retained amount, you select the **Retain Taxes** check box in the **Retainage Settings** section. If you want the full tax amount to be paid on the invoice with retainage, you leave this box cleared. For details on configuration of taxes with retainage, see [AR Invoices with Retainage: Configuration of the Default Retainage Settings](Construction_ARInvoice_with_Retainage_GeneralInfo2.md).
    -   If you want the system to automatically release retainage documents that you create on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, select the **Automatically Release Retainage Documents** check box. To release them manually, you leave this check box cleared.

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing AR Invoices with Retainage](../UserGuide/Construction_ARInvoice_with_Retainage_Mapref.md)

