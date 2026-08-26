# Bill with Combined Subaccounts: Implementation Checklist {#_e46a9ca8-e514-4373-9389-7fb50332e164 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AP bills with combined subaccounts, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_dd3_njv_vxb .section}

We recommend that before you initially process bills with combined subaccounts, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the minimal features have been enabled as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md)

 Make sure that *Subaccounts* feature has been enabled.

|
|[Segmented Keys](CS_20_20_00.md#) \(CS202000\)|The *SUBACCOUNT* segmented key has been properly configured. For details, see [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).|
|[Segment Values](CS_20_30_00.md) \(CS203000\)|The segment values for the *SUBACCOUNT* segmented key have been defined as described in [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).|
|[Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\)|The subaccount mask to be used in AP documents has been defined, and subaccounts for non-stock items and an employee have been specified. For details, see [Combined Subaccounts: To Define a Subaccount Mask for AP Documents](../ImplementationGuide/config_Combined_Subaccounts_Implem_Activity_2.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|Verify the existence of the vendor accounts for the vendors for which you will create AP bills. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Verify the existence of non-stock items that can be used when creating AP bills. For details, see [Non-Stock Item: Implementation Activity](Non_Stock_Item_Fin_Implem_Activity.md).|

## Other Settings That Affect the Workflow {#section_hd3_njv_vxb .section}

You can affect the workflow of processing AP bills with combined subaccounts by specifying additional settings as follows:

-   To cause GL batches to be immediately posted after they are released, on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, make sure that the **Automatically Post on Release** check box is selected.
-   To cause every AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) form. When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a vendor reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP bills will be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_jd3_njv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP bills with combined subaccounts by performing instructions similar to those described in [Bill with Combined Subaccounts: Process Activity](Finance_APBills_w_Combined_Subacc_Activity.md).

**Parent topic:**[Processing AP Bills with Combined Subaccounts](../UserGuide/Finance_APBills_w_Combined_Subacc_Mapref.md)

