# Employee Time Entry: To Approve a Time Card {#_beedee96-854e-4600-a9e9-74e3e065cb34 .task}

The following activity will walk you through the process of approving a time card.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, has completed a standard work week. David needs to record the working hours during the week. According to the SweetLife Fruits &amp; Jams time management policy, time cards for sales department employees must be approved by Ian Pick, the head of the sales department.

Acting as David Chubb, you will first create a time card. Then acting as Ian Pick, you will approve the time card.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Advanced Financials* check box is selected on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *CONSULTSR* non-stock item with the *Labor* type has been created.
-   On the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, the *Employee Time Cards* approval map has been created. In accordance with the approval map, time cards of sales department employees must be approved by Ian Pick, the head of the sales department.
-   On the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, the *Employee Time Cards* approval map has been selected in the **Time Card Approval Map** box.

## Process Overview { .section}

You will create a time card for David Chubb on the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) form. Then you will approve the time card on the [Approvals](EP_50_30_10.md) \(EP503010\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating a Time Card { .section}

To enter David Chubb's working hours, do the following:

1.  On the form toolbar of the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) form, click **Add New Timecard** to create a new time card. The system opens the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form with the new time card created for the employee who is currently signed in \(David Chubb\).
2.  In the Summary area, notice that current week is specified in the **Period** box. Acting as David, you will report the work time.
3.  On the **Summary** tab, add a row and specify the following settings:
    -   **Earning Type**: *RG* \(inserted automatically\)
    -   **Project**: *X - Non-Project Code*
    -   **Labor Item**: *CONSULTSR*
    -   **Mon**: `08:00`
    -   **Tue**: `08:00`
    -   **Wen**: `08:00`
    -   **Thu**: `08:00`
    -   **Fri**: `08:00`
    -   **Time Spent**: *40:00* \(calculated and inserted automatically\)
    -   **Billable**: Cleared
    -   **Description**: `Work with customers`
    -   **Approval Status**: *Not Required* \(inserted automatically\)
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Submit** to submit the time card. The status of the time card is changed to *Pending Approval*.
6.  Sign out from the system.

## Step 2: Approving the Time Card { .section}

To approve David Chubb's time card, do the following:

1.  Sign in to the system as the head of the sales department, Ian Pick, by using the *pick* username and the *123* password.
2.  Open the [Approvals](EP_50_30_10.md) \(EP503010\) form.
3.  On the **My Approvals** tab, review David Chubb's time card, which you have created in Step 1, and select the unlabeled check box for the row.
4.  On the form toolbar, click **Approve**.
5.  After the processing has been completed, double-click on the row with David Chubb's time card.
6.  The system opens the time card on the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) form.

    Review the time card's status, which has changed to *Approved*. The time card is ready to be released.


You have created and approved the time card.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

