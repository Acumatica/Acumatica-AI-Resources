# Single-Tier Change Management: Implementation Checklist {#_9270d45a-8a6b-a1b1-8a73-5031ccc3b8a6 .concept}

The following sections provide details to help you:

-   Ensure that the system is configured properly for processing change orders
-   Understand \(and change, if needed\) the settings that affect the processing workflow

## Implementation Checklist { .section}

We recommend that before you create change orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|Notes|
|----|----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* and *Change Orders* features are enabled.| |
|[Projects Preferences](PM_10_10_00.md) \(PM101000\) form|Make sure that all necessary settings related to project accounting have been specified. For more information about configuration steps that you must perform before you can start accounting for projects, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).| |
|[Change Order Classes](PM_20_30_00.md) \(PM203000\) form|Make sure that all needed change order classes have been configured, as described in [Change Orders for Commitments: To Create a Change Order Class](Projects_Changes_to_Commitments_Implem_Activity.md).| |
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created, as described in [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

 Also, make sure that the **Change Order Workflow** check box is selected on the **Summary** tab \(**Project Properties** section\).

|If the **Internal Cost Commitment Tracking** check box is selected on the **General** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form and a project has related purchase orders, you can select the **Change Order Workflow** check box only if the project has no open purchase order lines. That is, all related purchase order lines must have the *Completed*, *Closed*, or *Canceled* status.|

## Checklist for Project Commitments { .section}

If you want to use the functionality of change orders to manage changes in commitments, make sure that all the needed features have been enabled and settings have been specified, as described in [Committed Costs: Implementation Checklist](Projects_Commitments_Implem_Checklist.md).

## Other Settings That Affect the Workflow { .section}

You can affect the change management workflow by specifying additional settings as follows:

-   To change the format of change order identifiers, adjust the *CHANGEORD* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form or create a new auto-numbered sequence and select it in the **Change Order Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To allow users to create change orders by using the **Create Change Order** command on the More menu of the [Projects](PM_30_10_00.md) \(PM301000\) form, clear the **Manual Numbering** check box in the Summary area of the [Numbering Sequences](CS_20_10_10.md) form for the numbering sequence used for change orders.
-   To cause the system to automatically select a change order class on creation of change orders, select the change order class in the **Default Change Order Class** box on the **General** tab \(**General Settings** section\) of the [Projects Preferences](PM_10_10_00.md) form.

With these settings in place, users in your company can process change orders quickly and accurately with minimal manual effort.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that you process a change order by performing instructions similar to those described in [Single-Tier Change Management: To Track Changes to the Project Budget](Projects_CO_to_Budget_Process_Activity.md) and [Change Orders for Commitments: Process Activity](Projects_Changes_to_Commitments_Process_Activity.md).

**Parent topic:**[Tracking Changes to the Project Budget](../UserGuide/Projects_CO_Mapref.md)

