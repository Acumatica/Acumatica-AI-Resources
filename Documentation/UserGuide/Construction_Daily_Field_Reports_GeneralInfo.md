# Daily Field Reports: General Information {#_c71a7aed-1410-4462-af00-b0c7b4b9a0c2 .concept}

In the construction industry, many independent activities may take place on a project site and in the office. To make sure that everyone is looking at the same data and that the data has been transferred from the field to the office accurately, project managers and site supervisors use daily field reports.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create and assign an approval map for daily field reports
-   Create a daily field report
-   Add to the daily field report the following entities:
    -   Progress worksheets
    -   Labor time and activities
    -   Change orders
    -   Change requests
    -   Subcontractor activities
    -   Project issues
    -   Weather conditions
    -   Site visitors
-   Email the daily field report

## Applicable Scenarios {#section_a3s_b1z_l5b .section}

You create a daily field report to record observations, activities, and conditions that occur on a project site during a working day.

## Creation of Daily Field Reports { .section}

In Acumatica ERP Construction Edition, the daily field reports \(DFRs\) provide the members of a project team with a single location for updates about daily project activities, such as employee activities or subcontractor activities, as well as about daily weather observations, visitors to the site, and potential changes to a project budget.

You create a daily field report on the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form. In the **Project** box, you specify the related project, and in the **Project Manager** box, you select the employee who is responsible for managing the project and authorized to approve the daily field report.

In the daily field report, you can enter information about linked change requests, subcontractor work, associated project issues, visitors to the project site, weather conditions observed on the site, and activities of specific employees.

A daily field report may be updated multiple times during the day, sometimes by different employees. You can update a daily field report only if it has the *On Hold* status. If the daily field report has a different status, you need to put the document on hold before you start updating it.

## Labor Time and Reporting Activities { .section}

On the **Labor Time and Activities** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can add a row for each employee time activity. In the row, you select the employee whose activity should be included in the daily field report and specify the earning type, the project task, and the cost code for the activity. Also, you can enter the time that the employee spent on the activity and specify whether this time is billable. You can enter multiple lines if the employee performed different activities or if activities were performed by different employees.

The user can update or delete only time activity rows that have the *Open* status and that are not included in employee time cards.

**Important:** The **Labor Time and Activities** tab is available only if the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Progress Worksheets {#section_p24_tcy_l5b .section}

On the **Progress Worksheets** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you add cost budget lines and capture the quantity of units used on-site during the working day. When you click **Complete** on the form toolbar of the [Daily Field Report](PJ_30_40_00.md) form, the system creates the progress worksheet linked to the daily field report and saves this progress worksheet with the *On Hold* status. For more information on progress worksheets, see [Unit Tracking in Projects: General Information](Construction_Progress_Worksheets_GeneralInfo.md).

## Change Orders { .section}

If the *Change Orders* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and a daily field report is associated with a project that has the **Change Order Workflow** check box selected on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, you can create and process change orders for the daily field report.

On the **Change Orders** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can create a new change order by clicking **Create Change Order** on the table toolbar. As a result, the [Change Orders](PM_30_80_00.md#) \(PM308000\) form opens, with the project and customer copied from the daily field report and unavailable for editing. When you save the change order, it is automatically associated with the daily field report and listed in the table on this tab. Also, you can associate a change order that was previously created for the project with the daily field report by adding a new row to the table and selecting the change order number in the **Reference Nbr.** column.

## Change Requests { .section}

If the *Change Requests* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and a daily field report is associated with a project that has the **Change Order Workflow** check box selected on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, you can create and process change requests for the daily field report.

On the **Change Requests** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can create a new change request by clicking **Create Change Request** on the table toolbar. As a result, the [Change Requests](PM_30_85_00.md#) \(PM308500\) form opens, with the project and customer copied from the daily field report and unavailable for editing. When you save the change request, it is automatically associated with the daily field report and listed in the table on this tab. Also, you can associate a change request that was previously created for the project with the daily field report by adding a new row to the table and selecting the change request number in the **Reference Nbr.** column.

## Subcontractor Activities { .section}

On the **Subcontractors** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can add information about subcontractors, which may include the number of workers who worked on site during the day, the number of hours they worked, and the cost codes associated with the performed work.

## Project Issues { .section}

On the **Project Issues** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can associate a project issue that was previously created for the selected project with the daily field report by using the **Add Row** button on the form toolbar. You can associate as many project issues as needed with a daily field report.

Also, while you are working on the **Project Issues** tab, you can click **Create Project Issue** on the form toolbar. As a result, the [Project Issue](PJ_30_20_00.md#) \(PJ302000\) form opens, with the project copied from the daily field report and unavailable for editing. When you save the project issue, it is automatically associated with the daily field report and listed in the table on this tab.

## Photo Logs { .section}

On the **Photo Logs** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can associate a photo log that was previously created for the project with the daily field report by using the **Add Row** button on the table toolbar. You can associate as many photo logs as needed with a daily field report.

Also, you can click **Create Photo Log** on the table toolbar of the **Photo Logs** tab. As a result, the [Photo Log](PJ_30_50_00.md#) \(PJ305000\) form opens, with the project copied from the daily field report and unavailable for editing. When you save the photo log, it is automatically associated with the daily field report and listed in the table on this tab.

For each photo log selected in the table, a preview of its main photo \(if any\) is shown in the **Main Photo Preview** area.

## Related Notes { .section}

On the **Notes** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can report additional information for a day by using the **Add Row** button on the table toolbar. You can type a description for the note and attach files to it.

## Equipment Used on the Project { .section}

On the **Equipment** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can add a row for each piece of equipment that was used on the project and specify the project task, the cost code, and the time for which the equipment was utilized \(as well as whether that time is billable\). Each new row on this tab updates the time card for the corresponding equipment; if no corresponding time card exists for this piece of equipment in the system, a new time card is created.

You can update or delete lines that are not included in equipment time cards and lines associated with equipment time cards with the *On Hold* status.

## Weather Observations { .section}

On the **Weather** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can report weather conditions observed at the project site during the day, such as sky condition, temperature, precipitation, wind, and site conditions. Each row on the tab represents a weather record at a particular time. You can select the **Delay** check box to indicate that the reported weather conditions may cause a delay in the project delivery.

If the *Weather Services* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can load weather conditions automatically from weather API services. For more information, see [Daily Field Reports: Mass Processing](Construction_Daily_Field_Reports_MassProcessing.md).

## Visitors to the Site { .section}

On the **Visitors** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can specify information about visitors to the project site. You can specify the type of the visitor, the name of the visiting person, the name of their company \(if applicable\), the time when the visitor arrived and departed, the purpose of the visit, the visited area or inspected entity, and an additional description.

## Employee Expenses { .section}

If the *Expense Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, on the **Employee Expenses** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, you can report information about day-to-day expenses an employee incurs while working on the project. To link an existing expense receipt to a daily field report, you should click **Add Row** on the table toolbar and then select an expense receipt. You can associate as many expense receipts as needed with a daily field report.

Also, while you are working on the **Employee Expenses** tab, you can click **Create Expense Receipt** on the table toolbar. As a result, the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form opens, with the project copied from the daily field report and unavailable for editing. When you save the expense receipt, it is automatically associated with the daily field report and listed in the table on this tab.

## Approval of Daily Field Reports { .section}

If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, and an approval workflow is configured in the system for daily field reports, a daily field report is assigned the *Pending Approval* status when you take the document off hold.

The authorized approver can approve the daily field report by using the **Approve** menu command on the form toolbar of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form, or the approver can use the [Approvals](EP_50_30_10.md#) \(EP503010\) form to approve daily field reports along with documents of other types. If the approver rejects the daily field report, the document is assigned the *Rejected* status. Then it may be put on hold, updated as needed, and submitted for approval again.

**Parent topic:**[Reporting On-Site Work Progress](../UserGuide/Construction_Daily_Field_Reports_Mapref.md)

