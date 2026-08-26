# Overhead in the Project Budget: Implementation Activity {#_d082ceac-43ab-45fe-b774-dfe89ff18b2a .task}

The following implementation activity will walk you through the process of configuring an allocation rule for capturing the overhead for projects.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the project manager of the SweetLife Fruits &amp; Jams company wants to estimate the project costs considering the administrative overhead of the project management to be able to estimate the project profitability more accurately. The company estimates the project overhead as 20% of labor costs, such as a worker's time spent on performing the project.

Acting as SweetLife’s implementation manager, you need to configure an allocation rule to capture the project overhead as 20% of labor costs to reflect the overhead in the project budget. Because the administrative overhead is already presented in the general ledger in the form of transactions that aren’t classified against projects, you don’t need to post to the general ledger allocation transactions that are created.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature has been enabled to support the project management functionality.
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the *OVERHEAD* and *LABOR* account groups have been created.

## Process Overview { .section}

You will configure an allocation rule for capturing the labor overhead on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form.

## System Preparation { .section}

To prepare to perform the instructions of the activity, sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.

## Step: Configuring an Allocation Rule { .section}

To configure an allocation rule used for capturing the project overhead as a percentage of labor costs, perform the following instructions:

1.  On the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Allocation Rule**: `LABOVERHEAD`
    -   **Description**: `Labor overhead`
3.  In the **Allocation Steps** table, add a row for the allocation rule step with the following settings:
    -   **Step ID**: `10`
    -   **Description**: `Labor`
4.  In the right pane, on the **Calculation Rules** tab, specify the following settings of the allocation step:
    -   **Allocation Method**: *Allocate Transactions*
    -   **Create Allocation Transaction**: Selected
    -   **Select Transactions**: *Non-Allocated Transactions*
    -   **Account Group From**: *LABOR*
    -   **Account Group To**: Empty

        Based on this setting and the previous setting, with this step, the allocation rule processes only transactions of the *LABOR* account group.

    -   **If @Rate Is Not Defined**: *Set @Rate to 0*

        You won’t use rates to calculate the amount of the allocation transaction.

    -   **Quantity Formula**: `=0`
    -   **Billable Qty. Formula**: `=0`
    -   **Amount Formula**: `=[PMTran.Amount]*0.2`

        You calculate the overhead amount as 20% of the transaction amount.

    -   **Description Formula**: `='Project overhead for labor'`
5.  In the right pane, on the **Allocation Settings** tab, specify the following settings of the allocation step:
    -   **Post Transaction to GL** \(**Transaction Options** section\): Cleared
    -   **Reverse Allocation** \(**Transaction Reversal** section\): *Never*

        The project overhead isn’t considered in billing and you don’t need to create reversing allocation transactions.

    -   **Account Group** \(**Debit Transaction** section\): *Replace*
    -   **Replace Account Group With**: *OVERHEAD*

        With this setting, the system generates an allocation transaction that debits the specified account group—that is, the *OVERHEAD* account group.

    -   **Account Group** \(**Credit Transaction** section\): *None*
6.  Save the created allocation rule.

You have configured the allocation rule that can be used for capturing the project overhead as 20% of labor costs. To allocate the labor expenses of a project by using this rule, you need to assign the rule to the project tasks.

To review how a project is being allocated by using the allocation rule, complete [Overhead in the Project Budget: Process Activity](Projects_Allocation_Overhead_Process_Activity.md).

**Parent topic:**[Capturing Project Overhead](../UserGuide/Projects_Allocation_Overhead_Mapref.md)

