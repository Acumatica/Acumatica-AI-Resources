# Auto-Applying Payments: Implementation Checklist {#_59ac28fa-bbce-4987-8a04-000f546eb404 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing auto-application of payments, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_h2q_4jv_vxb .section}

We recommend that before you initially auto-apply payments or prepayments to customer documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|[Statement Cycles](AR_20_28_00.md) \(AR202800\)|Make sure that the *End of Month* statement cycle has been configured.|
|[Customers](AR_30_30_00.md) \(AR303000\)|Verify the existence of the customer accounts for the customers whose payments or prepayments you will auto-apply to documents. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).

 Make sure that the *EOM* statement cycle has been selected for the customer accounts in the **Statement Cycle ID** box in the **Financial Settings** section on the **Financial** tab of the current form.

|

## Other Settings That Affect the Workflow {#section_l2q_4jv_vxb .section}

You can affect the workflow of the auto-application process by specifying additional settings on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form as follows:

-   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR invoices and credit memos the *On Hold* status.
-   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AR invoices and credit memos will be automatically posted to the general ledger once they are released.

## Testing of Settings {#section_n2q_4jv_vxb .section}

To make sure that all settings are configured correctly, we recommend that you perform the auto-application process as described in [Auto-Applying Payments: Process Activity](Finance_AutoApplication_to_Documents_Activity.md).

**Parent topic:**[Auto-Applying Payments to Documents](../UserGuide/Finance_AutoApplication_to_Documents_Mapref.md)

