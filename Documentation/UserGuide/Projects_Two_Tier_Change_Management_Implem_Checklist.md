# Change Requests: Implementation Checklist {#_9270d45a-8a6b-a1b1-8a73-3341abc3b8a6 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of change requests, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially create change requests, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects*, *Change Orders*, and *Change Requests* features are enabled.|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you have to perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).Also, make sure that the default markups are specified on the **General** tab \(**Markups** section\). For more information about configuring markups, see [Change Requests: Configuration of Markups](Projects_Two_Tier_Change_Management_Markups.md).

|
|[Change Order Classes](PM_20_30_00.md) \(PM203000\) form|Make sure that all needed change order classes have been configured and the **Two-Tier Change Management** check box has been selected for these classes in the Summary area.|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that the default line markup is specified for all the needed account groups of the *Expense* type in the **Default Line Markup \(%\)** box on the **Change Request Settings** tab.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|Make sure that the default price markup is specified for all the needed inventory items in the **Markup %** box on the **Price/Cost** tab \(**Price Management** section\).|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the default price markup is specified for all the needed inventory items in the **Markup %** box on the **Price/Cost** tab \(**Price Management** section\).|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

 Also, make sure that the **Change Order Workflow** check box is selected on the **Summary** tab \(**Project Properties** section\) and the document markups are configured properly on the **Defaults** tab \(**Document Markups** table\).

|

## Project Commitment Checklist { .section}

If you want to use the functionality of change requests to manage changes in commitments, make sure that all the needed features have been enabled and settings have been specified, as described in [Committed Costs: Implementation Checklist](Projects_Commitments_Implem_Checklist.md).

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of managing changes in projects by specifying additional settings as follows:

-   By default, the *CHANGERST* numbering sequence specifies that the change request identifier is an automatically generated numeric string of six digits, such as *000001*. To change the format of change request identifiers, adjust the *CHANGERST* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form or create a new auto-numbered numbering sequence and select this sequence in the **Change Request Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To allow users to create change requests by using the **Create Change Request** command on the More menu of the [Projects](PM_30_10_00.md) \(PM301000\) form, for the numbering sequence used for change requests, clear the **Manual Numbering** check box in the Summary area of the [Numbering Sequences](CS_20_10_10.md) form.
-   To make it possible to create a change order for a change request selected on the [Change Requests](PM_30_85_00.md) \(PM308500\) form, select the change order class that supports the two-tier change management in the **Default Change Order Class** box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) form. That is, the selected change order class must have the **Two-Tier Change Management** check box selected on the [Change Order Classes](PM_20_30_00.md) \(PM203000\) form.

    **Attention:** Even if the default change order class selected in the project accounting preferences does not support the two-tier change management, you still can add a change request to a change order by creating a change order directly on the [Change Orders](PM_30_80_00.md) \(PM308000\) form, selecting for this change order a change order class that supports the two-tier change management, and adding the change request to the change order.

-   To cause the system to automatically select a revenue account group for new estimation lines of a change request if there are multiple account groups of the *Income* type defined on the [Account Groups](PM_20_10_00.md) \(PM201000\) form, specify the **Default Revenue Account Group** for account groups of the *Expense* type in the Summary area of the [Account Groups](PM_20_10_00.md) form. For more information on account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).
-   To cause the system to automatically select the **Creates Commitment** check box for a new estimation line with a particular account group selected on the [Change Requests](PM_30_85_00.md) form, which results in creation of a commitment based on such an estimation line, select the **Creates Commitment** check box on the **Settings** tab of the [Account Groups](PM_20_10_00.md) form for this account group. For example, it can be an account group to which you map the expense accounts of the services that a subcontractor usually provides.
-   To cause the system to automatically consolidate revenue budget lines from change requests in a project task when they’re added to a change order, select the **Consolidate Change Request Lines by Project Task** check box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) form.

With these settings specified, users in your company can process change requests quickly and accurately with a minimum of manual actions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that you process a change request by performing instructions similar to those described in [Change Requests: Process Activity](Projects_Two_Tier_Change_Management_Process_Activity.md).

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

