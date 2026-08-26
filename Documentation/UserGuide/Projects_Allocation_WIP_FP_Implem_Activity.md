# WIP Labor Costs in Fixed-Price Projects: Implementation Activity {#_fc52ceac-43ab-45fe-b774-dfe89ff18b2a .task}

The following implementation activity will walk you through the process of configuring an allocation rule for work-in-progress labor.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company needs to process projects in accordance with the GAAP matching principle—that is, the expenses related to the revenue have to be recorded to the same financial period as the revenue even if the expenses have been already posted to the system.

Acting as SweetLife’s administrative user, you will configure an allocation rule that can temporarily allocate the project labor costs to a work-in-progress account group. To reverse the costs back you will not use the allocation rule.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *WIP* account group has been created; the *12400 - Work in Progress* account has been mapped to the account group.

## Process Overview { .section}

You will configure an allocation rule for work-in-progress labor on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form.

## System Preparation { .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.

## Step: Configuring an Allocation Rule { .section}

To configure an allocation rule used for allocating work-in-progress labor costs, perform the following instructions:

1.  On the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Allocation Rule**: `WIPFP`
    -   **Description**: `WIP allocation`
3.  In the **Allocation Steps** table, add a row for the allocation rule step with the following settings:
    -   **Step ID**: `10`
    -   **Description**: `Labor`
4.  In the right pane, on the **Calculation Rules** tab, specify the following settings for the step selected in the left pane:
    -   **Allocation Method**: *Allocate Transactions*
    -   **Create Allocation Transaction**: Selected
    -   **Select Transactions**: *Non-Allocated Transactions*
    -   **Account Group From**: *LABOR*
    -   **Account Group To**: Empty

        Based on this setting and the previous setting, with this step, the allocation rule processes only transactions of the *LABOR* account group.

    -   **If @Rate Is Not Defined**: *Set @Rate to 0*
    -   **Quantity Formula**: `=[PMTran.Qty]`
    -   **Billable Qty. Formula**: `=[PMTran.BillableQty]`
    -   **Amount Formula**: `=[PMTran.Amount]`
    -   **Description Formula**: `='WIP allocation transaction'`
5.  In the right pane, on the **Allocation Settings** tab, specify the following settings of the step selected in the left pane:
    -   **Post Transaction to GL** \(**Transaction Options** section\): Selected
    -   **Reverse Allocation** \(**Transaction Reversal** section\): *Never*

        A fixed-price project with a progress billing rule does not use allocation transactions for billing so you will not use the allocation rule for creating of reversing allocation transactions.

    -   **Account Origin** \(**Debit Transaction** section\): *Replace* with *12400 - Work in Progress*

        With this setting, the system generates an allocation transaction that debits the specified account—that is, the *12400 - Work in Progress* account, which is mapped to the *WIP* account group.

    -   **Account Origin** \(**Credit Transaction** section\): *Debit Source*
6.  Save the created allocation rule.

You have configured the allocation rule that can be used for allocating work-in-progress labor expenses of a cost-plus project. To allocate the expenses of a project by using this rule, you need to assign the rule to the project tasks. To review how a project is being allocated by using the allocation rule, complete [WIP Labor Costs in Fixed-Price Projects: Process Activity](Projects_Allocation_WIP_FP_Process_Activity.md).

**Parent topic:**[Accounting for WIP Labor Costs in Fixed-Price Projects](../UserGuide/Projects_Allocation_WIP_FP_Mapref.md)

