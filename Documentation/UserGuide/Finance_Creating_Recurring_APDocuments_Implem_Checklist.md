# Recurring AP Documents: Implementation Checklist {#_46f50c16-a7de-4514-98f1-9541bc02b57e .concept}

To ensure that the system is configured properly for configuring schedules for recurring documents, make sure that the features and settings listed in the table are configured as described in the following table.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Company Financial Calendar](../Shared/../UserGuide/GL_20_11_00.md) \(GL201100\) form|Be sure that the financial periods for which transactions will be created have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](../Shared/../UserGuide/GL_20_10_00.md) \(GL201000\) form.|

## Other Settings That Affect the Workflow { .section}

To accommodate the workflow of automatic generation of AP documents, you need to specify additional settings as follows:

-   Do the following on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   Do the following on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP documents the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that a vendor reference number doesn’t need to be entered in the **Vendor Ref.** box when an AP document is created on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting indicates that AP documents will be automatically posted to the general ledger once they are released.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you create AP bills based on a schedule by performing instructions similar to those described in [Recurring AP Documents: Process Activity](Finance_Creating_Recurring_APDocuments_Activity.md).

**Parent topic:**[Creating Recurring AP Documents](../UserGuide/Finance_Creating_Recurring_APDocuments_Mapref.md)

