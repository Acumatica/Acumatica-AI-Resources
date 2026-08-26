# Transactions with Approval: Process Activity {#_de52207d-fa25-4672-b22c-e5d3a9ad793d .task}

The following activity will walk you through the process of creating batches of GL transactions that need approval and approving them.

## Story {#section_zx3_mjv_vxb .section}

Suppose that Nenad Pasic, an accountant at SweetLife Fruits &amp; Jams, needs to create two GL transactions directly on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. The first GL transaction records a purchase of miscellaneous items for the amount of $152, paid from the company's checking account. The second transaction records a purchase of items in the amount of $475, also paid from the company's checking account.

According to the company's rules, both transactions have to be reviewed by Anna Johnson, a financial supervisor, who has to either approve or reject them. An appropriate approval map has already been created and is active in the system.

Acting as Nenad Pasic, you need to create two GL transactions directly in the general ledger on 1/30/2026. Then acting as Anna Johnson, you need to review both transactions, approve the first transaction, and reject the second transaction specifying a reason for it.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been created and on the **Ledgers** tab, the *ACTUAL* ledger has been added.
-   On the [Branches](CS_10_20_00.md) \(CS101000\) form, the *HEADOFFICE* branch of SweetLife Fruits &amp; Jams has been configured.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *81000 \(Other Expenses\)* and *10200 \(Company Checking Account\)* accounts have been created.

## Process Overview {#section_dy3_mjv_vxb .section}

In this activity, acting as Nenad Pasic, you will create two batches of GL transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. You will then sign in as Anna Johnson and approve the first batch on the [Approvals](EP_50_30_10.md) \(EP503010\) form. You will open the approved batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form and post it. On the same form, you will open the second batch, reject it, and specify the reason for the rejection.

## System Preparation {#section_fy3_mjv_vxb .section}

Before you begin creating and processing GL transactions for which approval is required, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
4.  As a prerequisite activity, in the company to which you are signed in, be sure you have set up approvals for GL transactions, as described in [Approval Configuration: Implementation Activity](../ImplementationGuide/Finance_GLTransactions_with_Approvals_Implem_Activity.md).

## Step 1: Creating Batches of GL Transactions {#section_hy3_mjv_vxb .section}

To create the two batches of GL transactions, do the following:

1.  Open the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Module**: *GL*
    -   **Transaction Date**: *1/30/2026* \(inserted automatically\)
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *ACTUAL*
    -   **Description**: `$152 miscellaneous expenses`
4.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *81000 \(Other Expenses\)*
    -   **Debit Amount**: `152`
5.  Click **Add Row** again, and specify the following settings in the second row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *10200 \(Company Checking Account\)*
    -   **Credit Amount**: `152`
6.  On the form toolbar, click **Remove Hold**. In the Summary area, notice that the status of the batch has changed to *Pending Approval*. This is because the batch falls within the conditions specified for the *GL Transactions* map on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form and needs to be approved by the financial supervisor.
7.  On the form toolbar, click **Save**.
8.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Module**: *GL*
    -   **Transaction Date**: *1/30/2026* \(inserted automatically\)
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *ACTUAL*
    -   **Description**: `$475 miscellaneous expenses`
9.  On the **Details** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *81000 \(Other Expenses\)*
    -   **Debit Amount**: `475`
10. Click **Add Row** again, and specify the following settings in the second row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *10200 \(Company Checking Account\)*
    -   **Credit Amount**: `475`
11. On the form toolbar, click **Remove Hold**. Notice that the status of the batch has also changed to *Pending Approval*. This transaction also needs to be approved by the financial supervisor.
12. On the form toolbar, click **Save**.
13. Sign out as Nenad Pasic.

## Step 2: Approving a GL Transaction {#section_jy3_mjv_vxb .section}

To approve the $152 GL transaction, do the following:

1.  Sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  Open the [Approvals](EP_50_30_10.md) \(EP503010\) form. Notice that on the **My Approvals** tab, the two GL transactions created in Step 1 are shown.
3.  In the table, select the unlabeled check box for the transaction with the *$152 miscellaneous expenses* description.
4.  On the form toolbar, click **Approve**.
5.  Open the batch with the $152 transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. In the Summary area, notice that the batch's status has changed to *Balanced*.
6.  On the form toolbar, click **Release** to release the batch. The batch's status has changed to *Posted*.

## Step 3: Rejecting a GL Transaction {#section_ly3_mjv_vxb .section}

According to the company policy of SweetLife Fruits &amp; Jams, the $475 transaction cannot be approved because a purchase of this size must be recorded in an AP bill. To reject the $475 transaction and specify a reason for the rejection, do the following:

1.  Open the batch with the $475 transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. Notice that the batch's status is *Pending Approval*.

    **Note:** You cannot reject this transaction on the [Approvals](EP_50_30_10.md) \(EP503010\) form, because a rejection reason has to be specified for it.

2.  On the form toolbar, click **Reject**.
3.  In the **Enter Reason** dialog box, which is displayed, type `The amount is too high to be entered directly. Record this purchase by creating an AP bill.` Click **OK**.

    Notice that the batch's status has changed to *Rejected*.

    **Tip:** In a production environment, you would do either of the following for this transaction:

    -   Click **Hold** on the form toolbar to give the transaction the *On Hold* status and edit the transaction. For example, you could reduce its amount to less than $150 so that it can be posted without approval.
    -   Click **Delete** on the form toolbar to delete the rejected transaction and create an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form to record the expense of $475. For details, see [AP Bills: Process Activity](Finance_ProcessingAPBills_Process_Activity.md).
    In the training environment, you do not need to process the rejected transaction further.


**Parent topic:**[Processing Transactions with Approvals](../UserGuide/Finance_GLTransactions_with_Approvals_Mapref.md)

