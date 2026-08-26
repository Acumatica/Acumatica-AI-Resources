# Expense Claims: To Create an Expense Claim {#_92cb0452-d54b-4fdd-88cd-56638e5d949c .task}

The following activity will walk you through the process of creating an expense claim.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, had a business lunch with Chris Rea, manager at Blue Cafe, and discussed the Blue Cafe's purchase of new juicers. After the lunch, David took a taxi to return to work and paid $15 with a personal credit card.

Acting as David Chubb, you will enter an expense claim into the system and create the expense request for this claim on the fly.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form, the *TAXI* non-stock item with the *Expense* type has been created.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.

## Process Overview { .section}

You will create an expense claim for David Chubb's payment for a taxi on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form. Then you will specify an expense receipt's settings on the **Details** tab of the [Expense Claim](EP_30_10_00.md) form and save the claim. You will submit the expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form and then submit the created expense claim on the [Expense Claim](EP_30_10_00.md) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating an Expense Claim { .section}

To create an expense claim for the taxi payment, do the following:

1.  Open the [Expense Claims](EP_30_10_30.md) \(EP301030\) form.
2.  On the form toolbar, click **Add New Record**. The system opens the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.
3.  In the Summary area, specify the following:
    1.  **Date**: The current date \(inserted automatically\)
    2.  **Description**: `Taxi after the business lunch with Chris Rea, manager at Blue Cafe`
    3.  **Claimed by**: *EP00000014-David Chubb* \(inserted automatically because you are signed in as David Chubb\)
4.  On the **Details** tab, add a new record and specify the following settings of a new expense receipt:
    -   **Date**: The current date \(inserted automatically\)
    -   **Expense Item**: *TAXI*
    -   **Description**: `Taxi after the business lunch with Chris Rea, the manager of Blue Cafe`
    -   **Quantity**: `1`
    -   **Unit Cost**: `15.00`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
5.  On the form toolbar, click **Save**.

## Step 2: Submitting the Expense Receipt { .section}

You can submit the expense claim only if the related expense receipt has the *Open* status. To submit the expense receipt and change its status to *Open*, do the following:

1.  While you are still on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form, click the link in the **Receipt Number** column of the **Details** tab.

    The [Expense Receipt](EP_30_10_20.md) \(EP301020\) form opens.

2.  On the form toolbar, click **Submit**.

    The expense receipt’s status changes to *Open*. Now you can submit the expense claim.


## Step 3: Submitting the Expense Claim { .section}

To submit the expense claim that you created in Step 1, do the following:

1.  On the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, find the expense claim that you created in Step 1 and click its link in the **Reference Nbr.** column. This opens the claim on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.
2.  On the **Details** tab, make sure that the expense receipt has the *Open* status.
3.  On the form toolbar, click **Submit**.

    The status of the expense claim changes to *Approved*. Now you can release the expense claim.


**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

