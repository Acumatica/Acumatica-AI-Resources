# Applying Payments to Particular Lines: Implementation Checklist {#_8be675b4-152b-4fd7-a8bb-0bee17c8ce20 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AP documents that can be paid by line, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially apply payments to particular lines of AP documents, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), or [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).Also, make sure that the *Payment Application by Line* feature has been enabled.

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor accounts for the vendors whose bills you will pay. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure that a payment method with the *Cash/Check* means of payment has been created.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of paying AP documents by line by specifying additional settings as follows:

-   Do the following on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   Do the following on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP documents the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP documents will be automatically posted to the general ledger once they are released.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, select the **Print Checks** option button in the **Additional Processing** section on the **Settings for Use in AP** tab.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents paid by line by performing instructions similar to those described in [Applying Payments to Particular Lines: Process Activity](Finance_AP_Pay_by_Line_Activity.md).

## Known Process Limitations { .section}

The following limitations apply to the functionality of applying payments to particular lines:

-   In Acumatica ERP, users currently cannot apply VAT recalculated on cash discounts to AP documents for which the **Pay by Line** check box is selected on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   Group and document discounts are not supported for AP documents that have the **Pay by Line** check box selected on the [Bills and Adjustments](AP_30_10_00.md) form.
-   A bill with the **Pay by Line** check box selected cannot be applied to a debit adjustment on the **Applications** tab of the [Bills and Adjustments](AP_30_10_00.md) form. You should apply this debit adjustment to document lines on the **Documents to Apply** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form instead.
-   The ability to turn on payment by line is not compatible with migration mode. If the **Activate Migration Mode** check box is selected in the **Posting Settings** section on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Pay by Line** check box on the [Bills and Adjustments](AP_30_10_00.md) form is cleared and unavailable for editing.
-   If the *Invoice Rounding* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the functionality of this feature is not applicable to documents that can be paid by line. That is, amounts in these documents cannot be rounded.
-   The calculation of taxes in Avalara is not supported for documents that are paid by line.

**Parent topic:**[Applying Payments to Particular Lines of AP Documents](../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md)

