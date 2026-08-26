# Pro Forma Invoice Correction: Implementation Checklist {#_a53a0b58-16a1-4385-a86e-cc34ad34d413 .concept}

The following sections provide details you can use to ensure that the system is configured properly for correcting pro forma invoices, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially correct pro forma invoices, you make sure the needed settings have been specified and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the pro forma invoice to be corrected has no corresponding retainage invoices on the **Invoices** tab or these retainage invoices are reversed. For more information on retainage invoices, see [AR Invoices with Retainage: General Information](Construction_ARInvoice_with_Retainage_GeneralInfo.md).

 Also, make sure that the invoice currency is the same as the project currency. For more information on multicurrency projects, see [Multicurrency Projects: General Information](Projects_Multicurrency_Projects_GeneralInfo.md).

|
|[Invoices and Memos](AR_30_10_00.md) \(AR301000\) form|Make sure that the accounts receivable document created on the release of the pro forma invoice has been released.

 **Tip:** If the status of the AR document is *On Hold* or *Balanced*, you can just delete the AR document and adjust the pro forma invoice in an ordinary way.

 Also, make sure that the AR document has no applied payments on the **Applications** tab, or all the applied payments are voided. For more information on payments, see [Invoice Payments: General Information](Finance_PayingARInvoices_GeneralInfo.md).

|
|[Customers](AR_30_30_00.md) \(AR303000\) form|Make sure that the default payment method and cash account are specified for the customer. For more information, see [Creating a Customer](Customer_Mapref.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of correcting pro forma invoices by specifying additional settings as follows:

-   To make sending by email accounts receivable invoices optional, including those created based on pro forma invoices that have been agreed upon with the customer, clear the **Send Invoices by Email** check box on the **Billing Settings** tab \(**Print and Email Settings** section\) of the [Customers](AR_30_30_00.md) \(AR303000\) form for applicable customers.
-   To make printing accounts receivable invoices optional, including those created based on pro forma invoices that have been agreed upon with the customer, clear the **Print Invoices** check box on the **Billing Settings** tab \(**Print and Email Settings** section\) of the [Customers](AR_30_30_00.md) form for applicable customers.
-   To cause the system to automatically post general ledger transactions generated on release of all accounts receivable invoices, select the **Automatically Post on Release** check box on the **General** tab \(**Posting Settings** section\) of the [Accounts Receivable Preferences](AR_10_10_00.md) form.
-   To cause the system to post every accounts receivable document as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box in the **Posting Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

With these settings specified, users in your company can correct pro forma invoices quickly and accurately with a minimum of manual actions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you correct a pro forma invoice by performing instructions similar to those described in [Project Invoice Correction: To Correct a Closed Pro Forma Invoice](Construction_PF_Correction_Process_Activity.md).

**Parent topic:**[Correcting Pro Forma Invoices](../UserGuide/Construction_PF_Correction_Mapref.md)

