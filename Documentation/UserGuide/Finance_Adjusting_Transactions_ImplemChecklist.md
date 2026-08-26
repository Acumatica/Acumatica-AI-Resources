# Adjusting Transactions: Implementation Checklist {#_244488e2-a6c2-4dbd-840f-73dc93aef9c8 .concept}

Before users begin processing auto-reversing GL batches, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table.

|Form|Settings to Validate|Notes|
|----|--------------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the system has been configured properly, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form|Be sure that the financial periods for which auto-reversing transactions will be created and the next periods have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.|

## Settings That Can Affect the Processing Workflow {#section_phh_mjv_vxb .section}

The following settings on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form can affect the processing workflow:

-   If the *On Post* option is selected in the **Generate Reversing Entry** box, the system generates a reversing batch when the original batch is posted. If the *On Period Closing* option is selected, the system generates a reversing batch when a user closes the posting period related to the original batch.
-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, you have to post the batches after release.
-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for the batch so you can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Validate Batch Control Totals on Entry** check box is selected, enter the batch control total before they save the batch on the [Journal Transactions](GL_30_10_00.md) form. If this check box is cleared, the system automatically validates the batch when the status of the batch is *Balanced*.

**Parent topic:**[Processing Adjusting Transactions](../UserGuide/Finance_Adjusting_Transactions_Mapref.md)

