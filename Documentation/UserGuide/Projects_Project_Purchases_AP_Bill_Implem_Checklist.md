# Purchasing Services for Projects: Implementation Checklist {#_a53a0bca-16a1-4385-a22e-d912ad34d4c0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing purchases for projects with accounts payable bills, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process purchases for projects with AP bills, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that all needed labor items, non-stock items, and services have been defined. Make sure that the **Require Receipt** check box is cleared in the **Item Defaults** section on the **General** tab. **Important:** Make sure that *Purchases* is selected in the **Post Cost to Expenses** box on the **Price/Cost** tab; otherwise, the expenses related to the non-stock item won’t be recorded to the cost budget of the applicable project.

For more information about labor items, non-stock items, and services, see [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md), [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md), and [Service Items: General Information](Services_GeneralInfo.md), respectively.

|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all needed account groups have been configured. Also, make sure that the expense accounts of the inventory items specified in the **Expense Account** box on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) form are mapped to the account groups. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\) form|Make sure that all needed vendors have been defined in the system, as described in [Vendors: General Information](Vendor_GeneralInfo.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing purchases for projects by specifying additional settings as follows:

-   To cause the system to automatically select a project task when a particular project is selected during the creation of a bill, select the **Default** check box on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for one of the tasks of the project.
-   To cause the system to create accounts payable bills with the *Balanced* status, clear the **Hold Documents on Entry** check box on the **General** tab \(**Data Entry Settings** section\) of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To cause the system to automatically post general ledger batches generated during processing account payable documents, select the **Automatically Post on Release** check box in the **Posting Settings** section on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

With these settings specified, users in your company can process purchases for projects with AP bills quickly and accurately with a minimum of manual actions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in [Purchasing Services for Projects: Process Activity](Projects_Project_Purchases_AP_Bill_Process_Activity.md).

**Parent topic:**[Purchasing Services for Projects](../UserGuide/Projects_Project_Purchases_AP_Bill.md)

