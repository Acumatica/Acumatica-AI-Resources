# Recurring Transactions: Implementation Checklist {#_cabd1e39-bc78-45fd-b520-fcbe84e85c69 .concept}

To ensure that the system is configured properly for creating recurring batches, make sure that the features and settings listed in the table are configured as described in the following table.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Company Financial Calendar](../Shared/../UserGuide/GL_20_11_00.md) \(GL201100\) form|Be sure that the financial periods for which transactions will be created have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](../Shared/../UserGuide/GL_20_10_00.md) \(GL201000\) form.|

## Settings That Affect Workflow {#section_crh_mjv_vxb .section}

The following settings on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form can affect the processing workflow:

-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, you have to post the batches after release.
-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for the batch so you can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Validate Batch Control Totals on Entry** check box is selected, enter the batch control total before they save the batch on the [Journal Transactions](GL_30_10_00.md) form. If this check box is cleared, the system automatically validates the batch when the status of the batch is *Balanced*.

**Parent topic:**[Processing Recurring Transactions](../UserGuide/Finance_Recurring_Transactions_Mapref.md)

