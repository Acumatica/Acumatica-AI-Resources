# Overhead in the Project Budget: General Information {#_d08cd111-2aab-4e6e-a687-f13aa1bb1e16 .concept}

Your company can have such expenses as office rent or administrative expenses that are posted to the general ledger but not classified against projects and not presented in the project budget. For a more accurate estimation of the project profitability, you can capture such expenses as the project overhead.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure an allocation rule to capture project overhead as a percentage of incurred costs
-   Capture the overhead on the project

## Applicable Scenarios { .section}

If you need to more accurately estimate the profitability of a project—for example, for making management decisions or for project management—but the project has some indirect costs that are posted to the general ledger but not classified against the project, you capture these expenses as project overhead.

## Creation of an Allocation Rule { .section}

To calculate the overhead for projects, you create an allocation rule on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form. Using this allocation rule, the system creates allocation transactions based on the project transactions posted to a particular account group or specific groups. These allocation transactions post the calculated overhead amount to the specified account group.

For this allocation rule, you specify the following settings on the **Calculation Rules** tab:

-   **Allocation Method**: *Allocate Transactions*.

    With this setting, the system calculates the amount to allocate by using the underlying transactions and their amounts.

-   **Create Allocation Transaction**: Selected.

    With this check box selected, the system creates the allocation transactions resulting from the step.

-   **Selected Transactions** \(**Selection Criteria** section\): *Non-Allocated Transactions*.

    The step is applied to project transactions that have not been allocated yet.

-   **Account Group From** \(**Selection Criteria** section\): The account group that starts the range of account groups whose transactions are involved in the allocation step

    The account groups are ordered alphabetically.

-   **Account Group To** \(**Selection Criteria** section\): The account group that ends the range of account groups whose transactions are involved in this allocation step.

    If you want to allocate the transactions posted to a single account group, specify this account group in the **Account Group From** box, and leave the **Account Group To** box empty.

-   **Quantity Formula** \(**Calculation Settings** section\): `=0`.
-   **Billable Qty. Formula** \(**Calculation Settings** section\): `=0`.

    You usually do not need to calculate the overhead quantity.

-   **Amount Formula** \(**Calculation Settings** section\): The overhead amount that you can calculate as a percentage of the amount of the original transaction. In this case, you use the following formula: `=[PMTran.Amount]*multiplier`. You can use a percentage as a multiplier \(for example, *0.2* as 20%\), a project attribute to define the percentage at the project level, or a rate. For more information on rates, see [Billing Rates: General Information](Billing_Rates_GeneralInfo.md).
-   **Description Formula** \(**Calculation Settings** section\): The description of the created allocation transaction.

You specify the following settings for the allocation rule on the **Allocation Settings** tab:

-   **Post Transaction to GL** \(**Transaction Options** section\): Cleared

    With this check box cleared, allocation transactions and reversing allocation transactions will not be posted to the general ledger.

-   **Reverse Allocation** \(**Transaction Reversal** section\): *Never*

    With this setting, the system does not create a reversing transaction for the allocation transactions. The allocation transactions that you create with this allocation rule do not affect the general ledger and are not posted to any account, so you do not need to reverse them.

-   **Account Group** \(**Debit Transaction** section\): *Replace* with an account group for capturing the overhead

    With this setting, the system generates an allocation transaction that debits the specified account group.

-   **Account Group** \(**Credit Transaction** section\): *None*

    You create an additional cost with the allocation transaction and do not need to credit any account group.


## Configuration of Projects for Allocation { .section}

On the [Projects](PM_30_10_00.md) \(PM301000\) form, for a project to be allocated, you assign the created allocation rule to the project tasks on the **Tasks** tab.

## Allocation of Projects { .section}

You run the allocation process for a project by clicking **Run Allocation** on the More menu of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form while reviewing the project. As a result, the system creates allocation transactions based on the project transactions selected by using the allocation rules specified for project tasks on the **Tasks** tab. To make it possible to identify a batch of created allocation transactions, the system assigns the *Allocation for &lt;Project ID&gt;* description to such a batch. For the project transactions that have been used as a source of the allocation, the system selects the **Allocated** check box on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form.

**Parent topic:**[Capturing Project Overhead](../UserGuide/Projects_Allocation_Overhead_Mapref.md)

