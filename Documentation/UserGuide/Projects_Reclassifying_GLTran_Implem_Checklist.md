# Transaction Reclassification: Implementation Checklist {#_f594eb3c-8a3a-4c00-a43e-fa3ee9125ff4 .concept}

Before users begin reclassifying GL batches related to projects, you must make sure that the system has been configured properly, as described in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* and *Projects* features have been enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about the configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[User Roles](SM_20_10_05.md) \(SM201005\)|Make sure that each user that will perform reclassification of general ledger transactions related to projects is assigned the *Project Accountant* role.|

## Settings That Can Affect the Processing Workflow {#section_mhy_t2k_2qb .section}

The settings on the [General Ledger Preferences](../Shared/../UserGuide/GL_10_20_00.md) \(GL102000\) form can affect the processing workflow as follows:

-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Validate Batch Control Totals on Entry** check box is selected, you have to enter the batch control total before you save the batch on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) form. If this check box is cleared and the status of the batch is *Balanced*, the system automatically validates the batch.
-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, you have to post the batches after release.

**Parent topic:**[Reclassifying Project-Related GL Transactions](../UserGuide/Projects_Reclassifying_GLTran_Mapref.md)

