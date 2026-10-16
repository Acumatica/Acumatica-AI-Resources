# Unit Tracking in Projects: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for tracking units used for projects by processing progress worksheets, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially start to create progress worksheets for projects, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Projects* and *Construction* features are enabled.

</td></tr><tr><td>

Multiple forms

</td><td>

Make sure that all necessary settings related to project accounting have been specified, as described in [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Projects](PM_30_10_00.md#) \(PM301000\) form

</td><td>

Make sure that the necessary project has been created. In each cost budget line on the **Cost Budget** tab, specify the appropriate option in the **Productivity Tracking** column:-   *Template*: Select this option to include the line in a progress worksheet template that can be preloaded to a progress worksheet.
-   *Not Allowed* \(default\): Leave this option if the line should not be added to progress worksheets created for the project.
-   *On Demand*: Select this option to be able to manually add this line to a progress worksheet.

</td></tr></tbody>
</table>

## Daily Field Report Checklist

If you plan to create progress worksheets linked to daily field reports, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as described in [Daily Field Reports: Implementation Checklist](Construction_Daily_Field_Reports_Implem_Checklist.md).

## Approval Workflow Configuration

To make sure that an approval workflow is configured correctly for daily field reports, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="table_i4n_kf3_s4b"><thead><tr><th>

Form

</th><th>

Tasks to Perform

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *Approval Workflow* feature is enabled.

</td></tr><tr><td>

[Assignment and Approval Maps](EP_20_55_00.md) \(EP205500\) form

</td><td>

Make sure that an approval map for progress worksheets has been created.

</td></tr><tr><td>

[Email Templates](SM_20_40_03.md) \(SM204003\) form

</td><td>

If an employee needs to receive notifications about a pending approval when progress worksheets require approval from that employee, make sure that the notification template is configured.

</td></tr><tr><td>

The **Approval** tab of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form

</td><td>

Make sure that the approval map for progress worksheets is specified in the **Progress Worksheet Approval Map** box.If an employee needs to receive notifications about a progress worksheet that is pending approval, make sure that the needed notification email is specified in the **Progress Worksheet Approval Notification** box.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of tracking progress by unit by specifying additional settings as follows:

-   To change the format of progress worksheet identifiers, adjust the *PROGRESSWS* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form or create a new numbering sequence and select this sequence in the **Progress Worksheet Numbering Sequence** box on the **General** tab \(**Numbering Sequence** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

    For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

-   To calculate the recommended completion percentage for revenue budget lines based on progress worksheet quantities, select the needed rule in the **Revenue Percentage Calculation Rule** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. Make sure that the same rule is specified for each applicable project task in the **Revenue Percentage Calculation Rule** column on the **Tasks** tab.

    For more information, see [Progress Billing: Automated Revenue Percentage Calculation](Projects_Billing_Project_by_Progress_Auto_Revenue_Percentage_Calculation.md).


**Parent topic:**[Tracking Project Progress by Unit](../UserGuide/Construction_Progress_Worksheets_Mapref.md)

