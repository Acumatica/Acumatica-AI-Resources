# Expense Claims: To Release an Expense Claim {#_931f6fd0-1b1a-4561-98a4-5bb9b373f86a .task}

The following activity will walk you through the process of releasing an expense claim.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, had a business lunch with Chris Rea, the manager at Blue Cafe and discussed the Blue Cafe's purchase of new juicers. David paid $20 for Chris’s lunch and $12 for a taxi by using a personal credit card. Chris asked David to submit these expenses and bill Blue Cafe for reimbursement.

Acting as David Chubb, you will enter the expenses into the system and claim them. Then you will release the expense claim and bill the customer to request reimbursement from Blue Cafe.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *MEAL* and *TAXI* non-stock items with the *Expense* type have been created.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *BLUECAFE* customer has been created.

## Process Overview { .section}

You will create an expense claim on the [Expense Claims](EP_30_10_30.md) \(EP301030\) form and add to it two expense receipts claimed by Chubb: one for the business lunch and one for the taxi. After that, you will submit the claim and release the expense claim. You will bill the customer on the [Bill Expense Claims](EP_50_20_00.md) \(EP502000\) form and review the link to the AP bill on the [Expense Claim](EP_30_10_00.md) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating an Expense Claim { .section}

To create an expense claim for the business lunch and taxi payments, do the following:

1.  Open the [Expense Claims](EP_30_10_30.md) \(EP301030\) form.
2.  On the form toolbar, click **Add New Record**. The system opens the [Expense Claim](EP_30_10_00.md) \(EP301020\) form.
3.  In the Summary area, specify the following settings:
    1.  **Date**: The current date \(inserted automatically\)
    2.  **Description**: `Business lunch with Chris Rea, manager at Blue cafe`
    3.  **Claimed by**: *EP00000014-David Chubb* \(inserted automatically because you are signed in as David Chubb\)
4.  On the **Details** tab, add a new row and specify the following settings:
    -   **Date**: The current date \(inserted automatically\)
    -   **Ref. Nbr.**: `BX134556`
    -   **Expense Item**: *MEAL*
    -   **Description**: `Business lunch for Chris Rea, manager at Blue Cafe`
    -   **Quantity**: `1`
    -   **Unit Cost**: `20.00`
    -   **Customer**: *BLUECAFE*
    -   **Billable**: Selected
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
5.  On the form toolbar, click **Save**.
6.  Add a new row and specify the following settings:
    -   **Date**: The current date \(inserted automatically\)
    -   **Expense Item**: *TAXI*
    -   **Description**: `Taxi for Chris Rea, manager at Blue Cafe`
    -   **Quantity**: `1`
    -   **Unit Cost**: `12.00`
    -   **Customer**: *BLUECAFE*
    -   **Billable**: Selected
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
7.  On the form toolbar, click **Save**.
8.  Click the link in the **Receipt Number** column for the first row.

    The system opens the expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form.

9.  On the form toolbar, click **Submit**.

    The status of the expense receipt changes to *Open*.

10. In the **Receipt Number** box of the [Expense Receipt](EP_30_10_20.md) form, select the expense receipt that you created to reimburse the taxi expense.
11. On the form toolbar, click **Submit**.

    The status of the expense receipt changes to *Open*.


## Step 2: Releasing an Expense Claim { .section}

To release the expense claim, do the following:

1.  On the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, click the link in the **Reference Nbr.** column to open the $32 expense claim you created in Step 1.

    The system opens the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.

2.  On the **Details** tab, make sure that the expense receipts have the *Open* status.
3.  On the form toolbar, click **Submit**.

    The status of the expense claim has changed to *Approved* and the claim can be released.

4.  On the form toolbar, click **Release**.

    The status of the expense claim has changed to *Released*.


## Step 3: Billing a Customer { .section}

To bill the *BLUECAFE* customer for the incurred expenses, do the following:

1.  On the [Bill Expense Claims](EP_50_20_00.md) \(EP502000\) form, select the unlabeled check box for the row with the expense claim that you released in Step 2.
2.  On the form toolbar, click **Process**.
3.  After the system completes processing, close the **Processing** dialog box.
4.  On the [Expense Claim](EP_30_10_00.md) \(EP301000\) form, open the expense claim that you released in Step 2.
5.  On the **Financial** tab, notice that the link to the AP bill has been added to the **Link to AP** table.

You have created and released the expense claim. You have also billed the customer.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

