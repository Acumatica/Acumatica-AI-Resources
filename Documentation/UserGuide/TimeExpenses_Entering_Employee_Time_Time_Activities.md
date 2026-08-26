# Employee Time Entry: Time Activities {#_a1b70da0-9f4e-4497-9504-d887b0b0dec6 .concept}

A time activity is a record that is created in Acumatica ERP to report time that you or another employee spent on a work activity. This functionality is available if the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Creating Time Activities { .section}

You can create a time activity in multiple ways:

-   From the **Activities** tab on a data entry form, such as [Cases](CR_30_60_00.md) \(CR306000\) or [Projects](PM_30_10_00.md) \(PM301000\). To do this:
    1.  On the table toolbar, click **Create Email**; alternatively, click **Create Activity** and select the menu command that corresponds to the type of activity you want to create. The system opens the [Email Activity](CR_30_60_15.md) \(CR306015\) or [Activity](CR_30_60_10.md) \(CR306010\) form, depending on the button you clicked.
    2.  On the form that’s opened, select the **Track Time and Costs** check box. Now you can create a time activity and fill in the additional UI elements on the form.
-   From the **Details** tab of the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. Click the **Create Activity** button to create an activity of the selected type and report work time for this activity, as described above.
-   From the **Labor Time and Activities** tab of the [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form. Use this form to enter time spent on a project for a specific day.
-   From the **Log** tab of the [Appointments](FS_30_02_00.md) \(FS300200\) form to record the time spent on appointments.
-   From the [Create Labor Time Activities](AM_51_30_00.md) \(AM513000\) form for the time spent on production and entered on the [Labor](AM_30_10_00.md) \(AM301000\) form.
-   From the **Summary** tab of the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. Click the **Load from Time Log** button on the table toolbar. The system creates time activities based on the time logs it has generated for time employees have tracked for a project task by using the timer. For details, see [Employee Time Entry: Creation of Time Activities from Project Time Logs](TimeExpemses_Entering_Employee_Time_Creation_TA_from_Project_Time_Logs.md).

    **Tip:** The **Load from Time Log** button is available if:

    -   The form is in the Modern UI.
    -   The *Clock In and Clock Out* feature in the *Experimental* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
    -   The **Time Log** tab has at least one time log entry.
    -   The time card has the *Open* status.
-   On the **Details** tab of the [Employee Time Activities](EP_30_70_00.md) form, by clicking **Add Row** on the table toolbar.
-   Via the time entry API.

When you release a time activity related to a project, the system may create a transaction to update the project cost budget, depending on the option selected in the **Posting Option for Non-Payroll Employees** box of the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\). If the *Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select the time posting option on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form.

## Approving Time Activities { .section}

If an activity is associated with a project that requires approval—either at the project level or at the project task level—a billable time activity must be approved before it can be released for billing. You can approve the time activity if you are the project task approver or the time activity approver.

To approve time activities, you use the [Approve Time Activities](EP_50_70_10.md) \(EP507010\) form if the *Project* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If time cards are used, you can approve time activities in groups by approving the time card summaries on the [Approve Time Activity Summaries](EP_50_70_30.md) \(EP507030\) form.

Once activities have been released, the system tracks the costs related to specific customers, cases, contracts, or projects. It also generates the corresponding project transactions or customer invoices.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

