# Voiding Payments: Implementation Checklist {#_a3fbed9c-ea82-4fd7-a6e7-0547d8f2956d .concept}

The following sections provide details you can use to ensure that the system is configured properly for voiding payments, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_exj_njv_vxb .section}

We recommend that before you void payments, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AR303000\)|Verify the existence of the vendor accounts for the vendors whose payments you want to void. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Payment Methods](CA_20_40_00.md) \(CA204000\)|Make sure that the *CHECK* payment method has been specified when creating a payment.|

## Other Settings That Affect the Workflow {#section_gxj_njv_vxb .section}

You can affect the workflow of payment voiding by specifying additional settings as follows:

-   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.
-   To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box on the [General Ledger Preferences](GL_10_20_00.md) form. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   To give the created payments the *On Hold* status, select the **Hold Documents on Entry** check box in the **Data Entry Settings** section on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section on the [Accounts Payable Preferences](AP_10_10_00.md) form. This setting indicates that payments will be automatically posted to the general ledger once they are released.

## Testing of Settings {#section_ixj_njv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you void a payment as described in [Voiding Payments: Process Activity](Finance_VoidingChecks_Activity.md).

**Parent topic:**[Voiding Payments](../UserGuide/Finance_VoidingChecks_Mapref.md)

