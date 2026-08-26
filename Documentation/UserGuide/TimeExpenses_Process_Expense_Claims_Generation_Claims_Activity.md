# Expense Claims: To Mass-Generate Expense Claims {#_a82aede5-2532-458a-9156-ea778d1a2d82 .task}

The following activity will walk you through the process of mass-generating expense claims.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, had a business lunch with Catherine Hoff, the manager at Greenex Cafe, and discussed the potential purchase of new juicers. David paid $25 for their lunch by using a personal credit card. Catherine asked David to bill Greenex Cafe for Catherine's share of the lunch \($12\).

Acting as David Chubb, you will enter the expenses into the system to request reimbursement, bill Greenex Cafe, and then claim the expense receipts.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *MEAL* non-stock item with the *Expense* type has been created.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *GREENEX* customer has been created.

## Process Overview { .section}

You will create two expense receipts for the business lunch payment on the [Expense Receipts](EP_30_10_10.md#) \(EP301010\) form and combine them into one expense claim on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

-   Launch the Acumatica ERP website, and sign in as David Chubb by using the *chubb* username and the *123* password.
-   In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Creating Expense Receipts { .section}

To create expense receipts for the business lunch payments, do the following:

1.  Open the [Expense Receipts](EP_30_10_10.md#) \(EP301010\) form.
2.  On the form toolbar, click **Add New Record**. The system opens the [Expense Receipt](EP_30_10_20.md#) \(EP301020\) form.
3.  In the Summary area, specify the following settings:
    1.  **Date**: The current date \(inserted automatically\)
    2.  **Expense Item**: *MEAL*
    3.  **Claimed by**: *EP00000014-David Chubb* \(inserted automatically because you are signed in as David Chubb\)
4.  On the **Details** tab, specify the following settings:
    -   **Description**: `David's part of the lunch`
    -   **Quantity**: `1`
    -   **Unit Cost**: `13.00`
    -   **Ref. Nbr.**: `OS542345`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Submit**.

    The status of the expense receipt changes to *Open*.

7.  On the form toolbar, click **Add New Record** to create the second expense receipt.
8.  In the Summary area, specify the following:
    1.  **Date**: The current date \(inserted automatically\)
    2.  **Expense Item**: *MEAL*
    3.  **Claimed by**: *EP00000014-David Chubb* \(inserted automatically because you are signed in as David Chubb\)
9.  On the **Details** tab, specify the following settings:
    -   **Description**: `Catherine's part of the lunch`
    -   **Quantity**: `1`
    -   **Unit Cost**: `12.00`
    -   **Ref. Nbr.**: `OS542345`
    -   **Project/Contract**: *X-Non-Project Code*
    -   **Paid With**: *Personal Account*
    -   **Billable**: Selected
    -   **Customer**: *GREENEX*
10. On the form toolbar, click **Save**.
11. On the form toolbar, click **Submit**.

    The status of the expense receipt changes to *Open*.


## Step 2: Generating Expense Claims { .section}

To mass-create expense claims for the expense receipts created in Step 1, do the following:

1.  Open the [Expense Receipts](EP_30_10_10.md) \(EP301010\) form.
2.  On the **To Be Claimed** filter tab, select the unlabeled check box for the expense receipts you created in Step 1.

    On this filter tab, you can see only unclaimed expense receipts with the *Open* status.

3.  On the form toolbar, click **Claim**.

    The system processes the expense receipts and creates two expense claims on the [Expense Claim](EP_30_10_00.md) \(EP301000\) form.

4.  On the **All Records** filter tab of the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, review the created expense claims.
5.  Select the expense claim with the $12 claim total and click **Submit** on the form toolbar.

    The status of the expense claim changes to *Approved*. The expense claim can be released.

6.  Click the expense claim with the $13 claim total and click **Submit** on the form toolbar.

    The status of the expense claim changes to *Approved*. The expense claim can be released.


You have created two expense receipts, and have generated two separate expense claims for them.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

