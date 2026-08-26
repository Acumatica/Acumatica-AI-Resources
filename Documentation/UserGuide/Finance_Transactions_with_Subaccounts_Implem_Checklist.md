# Transactions with Subaccounts: Implementation Checklist {#_ade7bb71-e163-4bbc-b04c-0ae8a2d193c5 .concept}

Before users begin processing GL transactions with subaccounts, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* and *Subaccounts*\(under *Advanced Financials*\) features have been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form|Be sure that the financial periods for which transactions will be created have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.|
|[Segmented Keys](CS_20_20_00.md) \(CS202000\) form|Be sure that the *SUBACCOUNTS* segmented key has been configured to meet the company’s business needs, as described in [Subaccounts: General Information](../ImplementationGuide/config_Subaccounts_GeneralInfo.md).| |

## Settings That Can Affect the Processing Workflow {#section_aq3_mjv_vxb .section}

The settings on the [General Ledger Preferences](../Shared/../UserGuide/GL_10_20_00.md) \(GL102000\) form can affect the processing workflow as follows:

-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control total before you save the batch on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) form. If this check box is cleared and the status of the batch is *Balanced*, the system automatically validates the batch.
-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, you have to post the batches after release.

**Parent topic:**[Processing Transactions with Subaccounts](../UserGuide/Finance_Transactions_with_Subaccounts_Mapref.md)

