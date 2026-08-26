# Check Reprinting: Implementation Checklist {#_f6803bd5-903e-408d-9587-0725430d844f .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing check reprinting, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_gqj_njv_vxb .section}

We recommend that before you initially print and reprint checks, you make sure the settings have been specified and entities created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure that the *CHECK* payment method has been specified when creating a payment.|

## Settings That Affect the Workflow {#section_iqj_njv_vxb .section}

You can affect the workflow of reprinting checks by specifying additional settings as follows:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created checks the *On Hold* status.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that checks will be automatically posted to the general ledger once they are released.
-   The following payment method settings should be specified for the payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form:
    -   Select the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab.

## Testing of Settings {#section_kqj_njv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you reprint checks as described in [Check Reprinting: Process Activity](Finance_CheckReprinting_Activity.md).

**Parent topic:**[Check Correction and Reprinting](../UserGuide/Finance_CheckReprinting_Mapref.md)

