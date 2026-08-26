# Change Requests: Consolidation of Revenue Budget Lines {#_405cfeec-57aa-44b6-8723-f4f5687af134 .concept}

You may need to perform similar work multiple times under a single task agreed on with the customer. To align a change order with the customer's expectations, you can consolidate its revenue budget lines.

## Manual Consolidation of Revenue Budget Lines in a Change Order { .section}

You can consolidate multiple lines on the **Revenue Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form. To do this:

1.  Enter the number for the new task in the **Change Order Task Nbr.** box.
2.  Click **Consolidate Lines** on the table toolbar.
3.  In the dialog box that opens, click **Consolidate**.
4.  Save your changes.

The system consolidates the lines by the project budget key—that is, by project, project task, account group, and optionally, inventory item and cost code. It assigns task specified in the Summary area to the consolidated lines on the **Revenue Budget** tab.

## Automatic Consolidation of Revenue Budget Lines in a Change Order { .section}

You can also configure the system to automatically consolidate revenue budget lines from change requests in a project task when they’re added to a change order. To do this, you select the **Consolidate Change Request Lines by Project Task** check box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

When you add change requests to a change order on the [Change Orders](PM_30_80_00.md) \(PM308000\) form, do the following:

1.  Enter the number for the new task in the **Change Order Task Nbr.** box.
2.  Add the change requests to the change order.

The system then automatically consolidates the revenue budget lines by the project budget key.

## Removal of a Change Request After Line Consolidation { .section}

If you remove a change request from a change order after its revenue budget lines have been consolidated, the system decreases the affected revenue budget line’s quantity and amount.

Suppose that a change request's revenue budget lines have been consolidated into a revenue budget line of the change order on the [Change Orders](PM_30_80_00.md) \(PM308000\) form. If you remove the change request by clicking **Delete Row** on the **Change Requests** tab, the system reduces the consolidated line by the values from the removed change request’s estimation line.

**Parent topic:**[Processing Change Requests](../UserGuide/Projects_Two_Tier_Change_Management_Mapref.md)

