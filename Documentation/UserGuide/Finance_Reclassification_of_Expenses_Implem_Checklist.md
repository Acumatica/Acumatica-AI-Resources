# Reclassification of Expenses: Implementation Checklist {#_b1140a81-1741-490b-b467-715afbc6c72f .concept}

The following sections provide details that you can use to ensure that the system is configured properly for performing the reclassification of expenses, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially reclassify expenses, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimum set of features has been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor accounts for the vendors for which you want to reclassify bills. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|Make sure that a reclassification account with the *Expense* type has been created. The system will use this account when you post a pre-released document.|

## Other Settings That Affect the Workflow {#section_hd3_njv_vxb .section}

You can affect the workflow of reclassifying expenses in AP bills and cash purchases by specifying additional settings as follows:

-   To cause GL batches to be immediately posted after they are released, on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, make sure that the **Automatically Post on Release** check box is selected.
-   To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) form. When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   On the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, do the following to specify accounts payable settings:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This causes created AP documents to be assigned the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that users do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form or a cash purchase on the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP documents will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you reclassify expenses by performing instructions similar to those described in [Reclassification of Expenses: Process Activity](Finance_Reclassification_of_Expenses_Process_Activity.md).

## Known Process Limitations { .section}

Pending expense reclassification is not supported for the following types of bills:

-   Bills based on purchase receipts
-   Bills based on lines of purchase orders
-   Bills generated automatically from purchase orders

**Parent topic:**[Configuring Reclassification of Expenses](../UserGuide/Finance_Reclassification_of_Expenses_Mapref.md)

