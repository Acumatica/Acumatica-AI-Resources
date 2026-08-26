# Expense Receipts: To Approve Expense Receipts {#_0845f8a2-2c73-434c-9e12-bada2bc918db .task}

The following activity will walk you through the process of approving expense receipts.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, had a business trip to the Italian Company customer, whose head office is in San Francisco. David bought the round-trip flight tickets from New York to San Francisco and paid $550 with a personal credit card. In San Francisco, David took a taxi and paid $55. also with a personal credit card.

In accordance with the SweetLife Fruits &amp; Jams company's expense management policy, all expenses made by employees of the sales department that are greater than $50 but less than $100 must be approved by Ian Pick, the head of the sales department. All expenses receipts that are equal to or greater than $100 must be approved by Anna Johnson, the accountant.

First, acting as David Chubb, you will enter these expenses into the system to request reimbursement. Then, acting as Ian Pick, you will approve David's taxi expense. Finally, acting as Anna Johnson, you will approve David's flight ticket expense.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Expense Management* and *Approval Workflow* features have been enabled.
-   On the [Approval Maps](EP_20_50_15.md) \(EP205015\) form, the *Expense Receipts* approval map has been created. In accordance with the approval map, expense receipts of sales department employees ranging from $50 to $100 must be approved by Ian Pick, the head of the sales department. All expense receipts that are equal to or greater than $100 must be approved by Anna Johnson, the accountant.
-   On the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, the *Expense Receipts* approval map has been selected in the **Expense Receipt Approval Map** box.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *TRAVEL* and *TAXI* non-stock items with the *Expense* type have been created.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, accounts for David Chubb, Ian Pick, and Anna Johnson have been created and associated with the respective user accounts.

## Process Overview { .section}

First, you will create the expense receipts for the flight tickets and taxi payments on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. Then you will approve David's expense receipt for the taxi on the [Expense Receipt](EP_30_10_20.md) form. Finally, you will approve the expense receipt for David Chubb's flight tickets on the [Approvals](EP_50_30_10.md) \(EP503010\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating the First Expense Receipt { .section}

To create an expense receipt to enter the amount spent on the taxi, do the following:

1.  Open the [Expense Receipts](EP_30_10_10.md) \(EP301010\) form.
2.  On the form toolbar, click **Add New Record**. The system opens the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form.
3.  In the Summary area, select *TAXI* in the **Expense Item** box.
4.  On the **Details** tab, specify the following settings:
    -   **Description**: `Taxi in San Francisco`
    -   **Unit Cost**: `55.00`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
5.  Save the receipt and notice that it has the *On Hold* status.
6.  On the form toolbar, click **Submit**.

    The status has changed to *Pending Approval*.


## Step 2: Creating the Second Expense Receipt { .section}

To create the expense receipt for the purchased flight tickets, do the following while remaining on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, select *TRAVEL* in the **Expense Item** box.
3.  On the **Details** tab, specify the following settings:
    -   **Description**: `Flight tickets to San Francisco and back`
    -   **Unit Cost**: `550.00`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
4.  Save the receipt and notice that it has the *On Hold* status.
5.  On the form toolbar, click **Submit** and notice that the receipt has been assigned the *Pending Approval* status.
6.  Sign out from the system.

## Step 3: Approving the First Expense Receipt { .section}

To approve David Chubb's expense receipt for the taxi payment, do the following:

1.  Sign in to the system as Ian Pick, the head of the sales department, by using the *pick* username and the *123* password.
2.  Open the [Expense Receipts](EP_30_10_10.md) \(EP301010\) form.
3.  In the Selection area, clear the **Employee** box to see the full list of the expense receipts that you are allowed to access.
4.  Go to the **Pending Approval** tab. In the **Receipt Number** column, click the link to the expense receipt that you have created in Step 1 \(with the *Taxi in San Francisco* description\).

    The system opens the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. Review the expense receipt and notice its *Pending Approval* status.

5.  On the form toolbar, click **Approve**.

    The expense receipt's status has changed to *Open*. The expense receipt is approved and ready to be claimed.

6.  Sign out from the system.

## Step 4: Approving the Second Expense Receipt { .section}

To approve David Chubb's expense receipt for the flight ticket payment, do the following:

1.  Sign in to the system as accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  Open the [Approvals](EP_50_30_10.md) \(EP503010\) form.
3.  Go to the **My Approvals** tab. Review David Chubb's expense receipt that you have created in Step 2 \(with the *Flight tickets to San Francisco and back* description\) and select the check box for the row.
4.  On the form toolbar, click **Approve**.
5.  After the processing has been completed, double-click the row with David Chubb's expense receipt.

    The system opens the expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. Note that the expense receipt's status has changed to *Open*. The expense receipt is approved and ready to be claimed.


Both expense receipts for David Chubb's expenses have been approved and are now ready to be claimed.

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

