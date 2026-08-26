# Debit and Credit Adjustments: Implementation Checklist {#_dd6ec12f-cfa3-4c48-a028-a83d792a5bd3 .concept}

To ensure that the system is configured properly for processing debit and credit adjustments, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor accounts for the vendors for which you will create debit and credit adjustments. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).| |

## Settings That Affect the Workflow {#section_ak3_njv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created debit and credit adjustments the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating a debit or credit adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that debit and credit adjustments will be automatically posted to the general ledger once they are released.

With these settings specified and entities defined, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

