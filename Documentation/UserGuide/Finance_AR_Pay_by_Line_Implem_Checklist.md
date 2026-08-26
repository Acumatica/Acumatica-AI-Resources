# Applying AR Payments to Particular Lines: Implementation Checklist {#_66c1d844-bbad-4812-b110-5f66521fbd3a .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AR documents that can be paid by line, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially apply payments to particular lines of AR documents, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), or [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).Also, make sure that the *Payment Application by Line* feature has been enabled.

|
|[Customers](AR_30_30_00.md) \(AR303000\)|Verify the existence of the customer accounts for the customers whose invoice you will pay. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure that a payment method with the *Cash/Check* means of payment has been created.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of paying AR documents by line by specifying additional settings as follows:

-   Do the following on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   Do the following on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR documents the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR documents will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents paid by line by performing instructions similar to those described in [Applying AR Payments to Particular Lines: Process Activity](Finance_AR_Pay_by_Line_Activity.md).

## Known Process Limitations { .section}

The following limitations apply to the functionality of applying payments to particular lines:

-   This functionality is not applicable in sales invoices generated from sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and service orders generated on the [Service Orders](FS_30_01_00.md) \(FS300100\) form. For these invoices, the **Pay by Line** check box is always cleared, regardless of the customer's settings, which means that payments can be applied to such documents on the document level, but not on the line level.
-   If the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for a customer that has the **Pay by Line** check box selected, payments of sales invoices generated for sales orders will have the **Project** and **Project Task** columns empty on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. This is also because payments are applied to such documents on the document level, but not on the line level.
-   This functionality is not applicable to taxable documents that have a tax zone of an external tax provider, such as Avalara, selected for them in the **Customer Tax Zone** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
-   In Acumatica ERP, users currently cannot apply VAT recalculated on cash discounts to AR documents for which the **Pay by Line** check box is selected on the [Invoices and Memos](AR_30_10_00.md) form.
-   Group and document discounts are not supported for AR documents that have the **Pay by Line** check box selected on the [Invoices and Memos](AR_30_10_00.md) form.
-   The **Reverse and Apply to Memo** command \(under **Corrections**\) on the More menu of the [Invoices and Memos](AR_30_10_00.md) form cannot be used for a document with the **Pay by Line** check box selected.

    For such a document, you should instead click **Reverse** \(under **Corrections**\) on the More menu and then create an application to a credit memo on the [Payments and Applications](AR_30_20_00.md) form.

-   An invoice with the **Pay by Line** check box selected cannot be applied to a credit memo on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) form. You should apply this credit memo to document lines on the [Payments and Applications](AR_30_20_00.md) form instead.
-   The feature is not compatible with migration mode. If the **Activate Migration Mode** check box is selected in the **Posting Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Pay by Line** check box on the [Invoices and Memos](AR_30_10_00.md) form is cleared and unavailable for editing.
-   If the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the functionality of this feature is not applicable to documents that can be paid by line. That is, amounts in these documents cannot be rounded.
-   Balance write-off cannot be performed at the line level. The remaining balance of a credit memo paid by line cannot be written off on the [Write Off Balances and Credits](AR_50_50_00.md) \(AR505000\) form. You should manually create a debit memo to write off the balance.

**Parent topic:**[Applying Payments to Particular Lines of AR Documents](../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md)

