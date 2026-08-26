# Cash Entries: Implementation Checklist {#_efe2fcad-93ef-4a3a-a569-e9c4bcc4af6b .concept}

The following sections provide details you can use to ensure that the system is configured properly for creating cash entries, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_llb_kjv_vxb .section}

We recommend that before you initially create cash entries, you make sure the needed features have been enabled, settings have been specified, and entities have been created as summarized in the following checklist.

|Form|Tasks to Perform|Note|
|----|----------------|----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Cash Accounts](CA_20_20_00.md) \(CA202000\)|Make sure the cash accounts used to record cash entries and funds transfers have been created as described in [Cash Management: Cash Accounts](../ImplementationGuide/config_Basic_Company_Cash_Accounts.md).| |
|[Entry Types](CA_20_30_00.md) \(CA203000\)|Make sure that the necessary entry types have been defined as described in [Cash Management: Entry Types](../ImplementationGuide/config_Basic_Company_Entry_Types.md).| |

## Settings That Affect the Workflow {#section_nlb_kjv_vxb .section}

If the following settings are specified on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, they can affect the workflow of creating and processing a cash entry as follows:

-   You can select the **Hold Transactions on Entry** check box in the **Data Entry Settings** section to create cash transactions with the *On Hold* status by default. If this check box is selected, you can remove a cash entry from hold by clicking **Remove Hold** for the cash entry on the relevant form.
-   You can select the **Automatically Post to GL on Release** check box in the **Posting and Release Settings** section. If this check box is selected, when you release a cash entry, the system generates a batch and automatically posts it to the general ledger. If the check box is cleared, on release of a cash entry, the system generates a batch, but instead of immediately posting it to the general ledger, it saves the batch with *Unposted* status. You can post the batch with the *Unposted* status manually on the [Post Transactions](GL_50_20_00.md) \(GL502000\) form.

## Testing of Settings {#section_plb_kjv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you create a cash entry by performing similar steps to those described in [Cash Entries: To Create a Disbursement Cash Entry](Finance_Creating_Cash_Entry_Activity2.md) and [Cash Entries: To Create a Receipt Cash Entry](Finance_Creating_Cash_Entry_Activity.md).

**Parent topic:**[Processing Cash Entries](../UserGuide/Finance_Creating_Cash_Entry_Mapref.md)

