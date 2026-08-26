# Employee Time Entry: To Create a Time Card {#_bedf39c3-68d9-473a-9535-68d05ad88f0a .task}

The following activity will walk you through the process of creating a time card.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that Bill Owen, an employee of the marketing department at the SweetLife Fruits &amp; Jams company, attended a marketing conference. The conference lasted 16 hours \(8 hours on Monday, January 27, 2026, and 8 hours on Tuesday, January 28\). After the conference, Bill participated in a three-day training on new marketing approaches in purchasing. The training lasted 4 hours per day from January 29 to January 31, for a total of 12 training hours.

Acting as Bill Owen, you will create a time card to log the work time for both the conference and the training.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Advanced Financials* check box is selected on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the account for Bill Owen has been created and associated with the *owen* user account.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULTSR* non-stock item with the *Labor* type has been created.

## Process Overview { .section}

You will create and release a time card on the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as Bill Owen by using the *owen* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step: Creating an Employee Time Card { .section}

To enter Bill Owen's working hours for the conference and the training by creating an employee time card, do the following:

1.  On the form toolbar of the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) form, click **Add New Timecard** to create a new time card. The system opens the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form with the new time card created for the employee who is currently signed in \(Bill Owen\).
2.  In the Summary area, specify the current week in the **Period** box. This is the work week when Bill attended the conference and the training.
3.  On the **Summary** tab, add a row and specify the following settings:
    -   **Earning Type**: *RG* \(inserted automatically\)
    -   **Project**: *X - Non-Project Code*
    -   **Labor Item**: *CONSULTSR*
    -   **Mon**: `08:00`
    -   **Tue**: `08:00`
    -   **Wen**: `04:00`
    -   **Thu**: `04:00`
    -   **Fri**: `04:00`
    -   **Time Spent**: *28:00* \(calculated and inserted automatically\)
    -   **Billable**: Cleared
    -   **Description**: `Attending the conference and the training`
    -   **Approval Status**: *Not Required* \(inserted automatically\)
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Submit** to submit the time card. The status of the time card is changed to *Approved*.
6.  On the form toolbar, click **Release** to release the time card; its status is changed to *Released*.

You have created and released the time card.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

