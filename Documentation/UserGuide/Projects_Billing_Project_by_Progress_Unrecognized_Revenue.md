# Progress Billing: Revenue Recognition {#_9887a16c-6cf6-453d-a0f0-cd395cca76b0 .concept}

In some industries, such as construction, companies use the percentage-of-completion method of accounting. With this method, the revenues of long-term projects are recognized as a percentage of the work completed during the period. According to the GAAP \(Generally Accepted Accounting Principles\) matching principle, a company reports revenue and expenses on a period-by-period basis and recognizes earned revenue as soon as a part of the work is completed.

To set up the accounting for unrecognized revenue for a project so that it corresponds to the GAAP matching principle, you can temporarily record the unrecognized project revenue to an accrual account. As soon as a part of the work is completed, you allocate the corresponding part of the revenue to the appropriate revenue line in the project budget.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a project to account for unrecognized revenue
-   Configure an allocation rule for recognizing revenue
-   Bill a project and record revenue to an accrual account
-   Allocate the recognized part of revenue to the project revenue budget

## Applicable Scenarios { .section}

If you have a long-term project, you can set up the project so that the unrecognized revenue will be temporarily recorded to an accrual account and then allocate the revenue to the budget based on the current percentage of completion of the project tasks.

## Allocation Rule for Revenue Recognition { .section}

To allocate revenue from the accrual account to the project budget, you create an allocation rule on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form and assign this allocation rule to a project task \(or multiple project tasks\) for which the allocation will be performed on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

In the allocation rule, you create an allocation rule step and specify the following settings on the **Calculation Rules** tab:

-   **Allocation Method**: *Allocate Budget*

    With this setting, the system calculates the amount to allocate based on the percentage of the project task completion and the revised budgeted amounts specified in a revenue budget line with this project task.

-   **Create Allocation Transaction**: Selected

    With this check box selected, the system creates the allocation transactions resulting from the allocation rule step.

-   **Select Transactions** \(**Selection Criteria** section\): *Non-Allocated Transactions*

    The allocation rule step is applied to project transactions that have not been allocated yet.

-   **Account Group From** \(**Selection Criteria** section\): The account group that stores the revised budgeted values to be allocated.
-   **Description Formula** \(**Calculation Settings** section\): The description of the created allocation transaction

You specify the following settings for the allocation rule on the **Allocation Settings** tab:

-   **Post Transaction to GL** \(**Transaction Options** section\): Selected

    With this check box selected, allocation transactions are posted to the general ledger.

-   **Reverse Allocation** \(**Transaction Options** section\): *Never*

    This setting indicates that the system does not reverse allocation transactions automatically.

-   **Account Origin** \(**Debit Transaction** section\): *Replace* in the left box, and an accrual account in the right box

    With these settings, the system generates an allocation transaction that debits the specified accrual account that is mapped to the unrecognized revenue account group \(that is, it clears the accrual account balance in the amount of recognized revenue\).

-   **Account Origin** \(**Credit Transaction** section\): *Replace* in the left box, and the sales account in the right box

    With these settings, the system generates an allocation transaction that credits the sales account that is mapped to the revenue account group \(that is, records the amount of recognized revenue to the project budget\).


## Revenue Budget Configuration { .section}

You configure the revenue budget lines for a project on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. To account for unrecognized revenue, the system uses the following revenue budget lines for each project task that requires revenue recognition:

-   The revenue budget line associated with the accrual account group. In this line, you specify the **Revised Budgeted Amount** and **Revised Budgeted Quantity**.

    When you run progress billing for the project, the system stores the unrecognized revenue in the **Actual Amount** and **Actual Quantity** columns in this line until this revenue is recognized.

-   The revenue budget line associated with the revenue account group. In this line, you initially specify the **Original Budgeted Amount** and **Original Budgeted Quantity**. The recognized revenue is recorded to this line.

    When you run the allocation rule with the *Allocate by Budget* allocation method, the system moves the recognized part of the revenue \(which is calculated based on the percentage of the project task completion\) to the **Actual Amount** and **Actual Quantity** in this line and clears this part of the actual values from the accrual budget line.


## Recording the Unrecognized Revenue { .section}

To keep unrecognized revenue out of budgeted values, you first create a separate accrual account of the liability type and assign it to an account group of the *Income* type. You then specify this account as a sales account in the lines of the pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form. You can specify the accrual account manually in an existing pro forma invoice. Alternatively, you can configure the system to automatically specify the accrual account in pro forma invoice lines during the project billing procedure by doing the following:

-   On the [Project Tasks](PM_30_20_00.md) \(PM302000\) form, you specify the accrual account in the **Default Sales Account** box of the **Summary** tab. On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, for the billing rule steps that will be used for billing this project task, you select *Task* in the **Use Sales Account From** box.
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, you specify the accrual account in the **Default Sales Account** box on the **Defaults** tab. On the [Billing Rules](PM_20_70_00.md) form, for the billing rule steps that will be used for billing this project task, you select *Project* in the **Use Sales Account From** box.

Once you release the pro forma invoice and the corresponding accounts receivable invoice, the system updates the actual amount and quantity in the accrual budget line with the corresponding project budget key with the amount and quantity copied from the AR invoice.

## Recognizing Revenue in the Project Budget { .section}

When a particular part of the work is complete, you specify the task completion percentage in the **Completed %** column on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. You then run the allocation procedure for the project.

The system creates the allocation transaction based on the specified percentage of the project task completion and based on the revised budgeted amount of the project budget line. The allocation transaction moves the recognized part of the revenue from the accrual account to the revenue account, updates the actual amounts in the project budget lines, and clears the actual amounts in the unrecognized revenue budget lines.

**Parent topic:**[Billing Projects by Progress](../UserGuide/Projects_Billing_Project_by_Progress_Mapref.md)

