# Running of Allocations: Process Activity {#_0274dc48-5eb7-49ba-9699-a51be158a78a .task}

In this activity, you will learn how to run allocations. You will also learn how to review and release the generated batches.

## Story {#section_erl_mjv_vxb .section}

Suppose that as an accountant of the SweetLife company, you need to distribute advertising expenses, salaries for the Finance department, rent expenses, and Christmas bonuses according to the allocation rules created in the system.

Acting as the accountant, you need to run allocations, and then release the generated batches.

## Configuration Overview {#section_hrl_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *HEADCOUNT* ledger has been defined.
-   On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.
-   On the [Allocations](GL_20_45_00.md) \(GL204500\) form, the **Allocate Source Accounts Separately** check box has been cleared.

## Process Overview {#section_nrl_mjv_vxb .section}

To automatically distribute amounts according to the rule, you will first run the necessary allocations on the [Run Allocations](GL_50_45_00.md) \(GL504500\) form. The system will generate GL batches, which you will then release on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_prl_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that you have completed the following prerequisite activity to perform the needed configuration of subaccounts: [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).
5.  Make sure that you have performed the following prerequisite activity to post the transaction with salaries: [Transactions with Subaccounts: Process Activity](Finance_Transactions_with_Subaccounts_Process_Activity.md).
6.  Make sure that you have performed the following prerequisite activity to upload and release the budget for the *HEADOFFICE* branch: [Conversion of a Simple Budget to a Hierarchical Budget: Process Activity](Finance_Converting_Budget_Activity.md).
7.  On the [Allocations](GL_20_45_00.md) \(GL204500\) form, make sure that you have performed the following prerequisite activities to create allocation rules in the system:
    -   [Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio \(Weight\)](../ImplementationGuide/config_Allocation_Rules_Activity.md)
    -   [Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio \(Percentage\)](../ImplementationGuide/config_Allocation_Rules_Activity4.md)
    -   [Allocation Rules: To Create an Allocation Rule That Uses a Dynamic Ratio of the Period-to-Date Account Balances](../ImplementationGuide/config_Allocation_Rules_Activity2.md)
    -   [Allocation Rules: To Create an Allocation Rule Based on Budget Data](../ImplementationGuide/config_Allocation_Rules_Activity3.md)

## Step 1: Posting Transactions for Allocations {#section_rrl_mjv_vxb .section}

To post transactions for allocations, do the following:

1.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, create a new transaction.
2.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *HEADCOUNT*
    -   **Transaction Date**: *1/30/2026*
    -   **Post Period**: *01-2026* \(inserted by default\)
    -   **Description**: `Head Count for Jan 2026`
3.  On the table toolbar, click **Load Records from File**.
4.  In Step 1 of the **Import Data** wizard that opens, click **Upload File** and select the [GL\_Batch\_HEADCOUNT\_012026.xlsx](Files/GL_Batch_HEADCOUNT_012026.xlsx) file.
5.  In Step 2 of the wizard, leave the default settings and click **Next**.
6.  In Step 3 of the wizard, leave the default settings and click **Finish**.
7.  On the form toolbar, click **Remove Hold**.
8.  On the form toolbar, click **Release**.

You have uploaded the head count to the statistical ledger.

## Step 2: Running the Allocations {#section_vrl_mjv_vxb .section}

To run the allocations that you previously created, do the following:

1.  Open the [Run Allocations](GL_50_45_00.md) \(GL504500\) form.
2.  In the **Allocation Date** box of the Selection area, make sure that *1/30/2026* is selected.

    The period of the selected date is inserted in the **Post Period** box. These settings represent the date and period of the allocation batches to be generated.

3.  On the form toolbar, click **Process All**.

    The **Processing** dialog box opens.

4.  After the processing has completed, in the dialog box, click **Processed**.

    In the table that appears in the dialog box, in the **Last Batch** column, notice that the allocation batches have been generated for the rules.

5.  Close the dialog box.

The system has generated allocation transactions that have the *On Hold* status.

## Step 3: Reviewing and Releasing the First Allocation Batch {#section_bsl_mjv_vxb .section}

To review and release the first allocation batch that you have generated, do the following:

1.  While you are still on the [Run Allocations](GL_50_45_00.md) \(GL504500\) form, click the batch number in the **Last Batch** column for the *Advertising expenses* allocation rule.

    The [Journal Transactions](GL_30_10_00.md) \(GL301000\) form opens with the generated allocation batch.

2.  In the table, notice that the amount has been allocated according to the allocation rule.
3.  On the form toolbar, click **Remove Hold**.
4.  On the form toolbar, click **Release** to release the batch.

## Step 4: Reviewing and Releasing the Second Allocation Batch {#section_esl_mjv_vxb .section}

To review and release the second allocation batch that you have generated, do the following:

1.  While you are still on the [Run Allocations](GL_50_45_00.md) \(GL504500\) form, click the batch number in the **Last Batch** column for the *Salaries for the Finance department* allocation rule.

    The [Journal Transactions](GL_30_10_00.md) \(GL301000\) form opens with the generated allocation batch.

2.  In the table, notice that the amount has been allocated according to the allocation rule.
3.  On the form toolbar, click **Remove Hold**.
4.  On the form toolbar, click **Release** to release the batch.

## Step 5: Reviewing and Releasing the Third Allocation Batch {#section_hsl_mjv_vxb .section}

To review and release the third allocation batch that you have generated, do the following:

1.  Open the [Allocations](GL_20_45_00.md) \(GL204500\) form.
2.  In the **Allocation ID** box of the Summary area, select the identifier of the *Rent expenses* allocation rule.
3.  On the **Allocation History** tab, notice that one GL batch has been generated for the rule and that it has the *On Hold* status.
4.  In the **Batch Number** column, click the link.

    The [Journal Transactions](GL_30_10_00.md) \(GL301000\) form opens with the generated allocation batch.

5.  On the form toolbar, click **Remove Hold**.
6.  On the form toolbar, click **Release** to release the batch.

## Step 6: Reviewing and Releasing the Fourth Allocation Batch {#section_ksl_mjv_vxb .section}

To review and release the fourth allocation batch that you have generated, do the following:

1.  Open the [Allocations](GL_20_45_00.md) \(GL204500\) form.
2.  In the **Allocation ID** box of the Summary area, select the identifier of the *Christmas bonus* allocation rule.
3.  On the **Allocation History** tab, notice that one GL batch has been generated for the rule and that it has the *On Hold* status.
4.  In the **Batch Number** column, click the link.

    The [Journal Transactions](GL_30_10_00.md) \(GL301000\) form opens with the generated allocation batch.

5.  On the form toolbar, click **Remove Hold**.
6.  On the form toolbar, click **Release** to release the batch.

You have run the allocation rules and released the allocation batches.

**Parent topic:**[Running Allocations](../UserGuide/Finance_Running_Allocations_Mapref.md)

