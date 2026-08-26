# Additions to Assets: Implementation Checklist {#_6c56a031-dc31-4964-9e6a-f8bd8c0f1a92 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for making additions to fixed assets, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_akd_ljv_vxb .section}

We recommend that before you initially make an addition to a fixed asset, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Standard Financials* and *Fixed Asset Management* features have been enabled.|
|Multiple forms|The minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|Multiple forms|The general ledger functionality has been implemented, as described in [General Ledger: General Information](../ImplementationGuide/config_GL_Generalinfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The vendors for which you will create AP bills have been defined in the system. For details, see [Vendors: Implementation Activity](Vendor_Implem_Activity.md).|

## Other Settings That Affect the Workflow {#section_ckd_ljv_vxb .section}

During the processing of fixed assets, the system produces batches on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. A user can also manually create batches on this form. The settings on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form can affect the processing workflow of each batch as follows:

-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, a user should click **Remove Hold** on the form toolbar of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for the batch so that they can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Validate Batch Control Totals on Entry** check box is selected, the user has to enter the control total of the batch before they save the batch on the [Journal Transactions](GL_30_10_00.md) form. If this check box is cleared and the status of the batch is *Balanced*, the system automatically validates the batch.
-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, the user has to post the batches after release.

AP bills are typically created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form to record the purchase of items that will be converted to fixed assets. The workflow of processing AP bills can be affected based on the settings on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form as follows:

-   You select the **Hold Documents on Entry** check box in the **Data Entry Settings** section if you want the created AP bills to be assigned the *On Hold* status. You clear the check box to cause these bills to be assigned the *Balanced* status.
-   You clear the **Require Vendor Reference** check box in the **Data Entry Settings** section if you do not need users to enter a vendor reference number in the **Vendor Ref.** box on the [Bills and Adjustments](AP_30_10_00.md) form. If your company requires this data to be entered, you select the check box.
-   If you want AP bills to be automatically posted to the general ledger once they are entered, make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. Otherwise, you should clear this check box.

The following settings on the [Fixed Assets Preferences](FA_10_10_00.md) \(FA101000\) form can affect the processing workflow as described below:

-   If the **Automatically Release Acquisition Transactions** check box is selected, the acquisition transactions are posted automatically. If this check box is cleared, acquisition transactions are created with the *On Hold* status. The user will have to release these transactions manually on the [Release FA Transactions](FA_50_30_00.md) \(FA503000\) form.
-   If the **Update GL** check box is selected, transactions associated with fixed assets are posted to the general ledger and affect the GL balances. If this check box is cleared, transactions associated with fixed assets are not posted to the general ledger.
-   If the **Automatically Post on Release** check box is selected, transactions associated with fixed assets are automatically posted to the general ledger when they are released. This check box is selected by default.

## Validation of Configuration {#section_gkd_ljv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you make additions to fixed assets by performing instructions similar to those described in [Additions to Assets: To Make an Addition by Converting a Purchase](FixedAssets_Making_Additions_To_Convert_a_Purchase.md) and [Additions to Assets: To Make a Manual Addition](FixedAssets_Making_Additions_To_Make_Manual_Addition.md).

**Parent topic:**[Making Additions to Fixed Assets](../UserGuide/FixedAssets_Making_Additions_Mapref.md)

