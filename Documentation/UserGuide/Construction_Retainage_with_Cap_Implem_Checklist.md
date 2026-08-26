# Retainage with a Cap: Implementation Checklist {#_c330d418-d646-4839-a4cc-6934258bfc57 .concept}

The following sections provide details you can use to ensure that the system is configured properly for billing projects with contract cap retainage, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially perform billing for projects with contract cap retainage, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the following features are enabled:-   *Projects*
-   *Construction*
-   *Retainage Support*
-   *Payment Application by Line*

|
|[Customers](AR_30_30_00.md#) \(AR303000\) form|Make sure that the following retainage settings have been specified for the customer:-   On the **General** tab, the **Apply Retainage** check box is selected, and the default retainage percentage is specified in the **Retainage Percent** box.
-   On the **GL Accounts** tab, the **Retainage Receivable Account** is specified.

|
|[Projects](PM_30_10_00.md#) \(PM301000\) form, **Summary** tab|In a project, make sure that the **Create Pro Forma Invoice on Billing** check box is selected and the retainage settings are specified as follows:-   *Contract Cap* is selected in the **Retainage Mode** box.
-   The percent of the amount of an invoice issued for the project that is retained by the customer is specified in the **Retainage \(%\)** box.
-   The contract cap \(maximum retainage percentage and amount held for the project\) is specified in the **Cap \(%\)** and **Cap Amount** boxes.

|

## Other Settings That Affect the Workflow { .section}

You can affect the processing workflow by specifying additional system settings as follows:

-   If the **Change Order Workflow** check box is selected for a project on the **Summary** tab \(**Project Properties** section\) of the [Projects](PM_30_10_00.md#) \(PM301000\) form, you can select the **Include CO** check box to make the system calculate the **Contract Total** and **Completed \(%\)** of the contract based on the revised revenue budget values \(with change orders included in the calculation\). Otherwise, only original budget values will be used for calculation.
-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings can be specified on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR invoices to be automatically posted to the general ledger once they are released.
    -   If you want to retain the taxes calculated on the retained amount, you select the **Retain Taxes** check box in the **Retainage Settings** section. If you want to pay full tax amount on the invoice with retainage, you leave this box cleared. For details on the configuration of taxes with retainage, see [AR Invoices with Retainage: Configuration of the Default Retainage Settings](Construction_ARInvoice_with_Retainage_GeneralInfo2.md).
    -   If you want the system to automatically release retainage documents that you create on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you select the **Automatically Release Retainage Documents** check box. To release them manually, you leave this check box cleared.
    With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.


**Parent topic:**[Billing a Project with a Retainage Cap](../UserGuide/Construction_Retainage_with_Cap_Mapref.md)

