# Project Budget: Recalculation of the Project Balances {#_9d68c847-e364-414a-bc02-ebc0734cc8af .concept}

In rare cases, you may need to make the system refresh the project budget to be sure that the project balances match the corresponding transactions and that the documents and all project information is up to date. To do this, you recalculate the project budget.

You can run the recalculation of project balances on the following forms:

-   On the [Projects](PM_30_10_00.md) \(PM301000\) form: You can run recalculation for the selected project unless it has the *In Planning* status.
-   On the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form: You can mass-run recalculation for any number of selected projects with the *Active* or *Completed* status.

## Applicable Scenarios {#section_r3z_prt_m5b .section}

You run recalculation in the following cases:

-   Project balances do not seem to match the total amounts of the corresponding project transactions. This may happen, for example, if project data has been modified through external tools or import scenarios. You need to bring the project budgets in line with the underlying project transactions.
-   You have noticed that a project is not shown on the [Run Project Billing](PM_50_30_00.md) \(PM503000\) form, even though it has project transactions pending billing.
-   The draft invoice amounts and quantities in the project budget do not seem to match the values in corresponding pro forma invoices.
-   The project values affected by change orders do not seem to match the values in corresponding documents.
-   You have noticed that the inclusive taxes accumulated for revenue budget lines do not match the inclusive taxes in the corresponding accounts receivable documents.
-   You have selected the **Internal Cost Commitment Tracking** check box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form or changed the mapping of accounts to account groups on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. Now you need to recalculate the existing commitments for the projects to make committed values match the quantities and amounts of the purchase orders and subcontracts.
-   Project balances do not seem to match the total amounts and quantities of the corresponding purchase orders and subcontracts. This may happen, for example, if project data has been modified through external tools or import scenarios. You need to bring the committed values in line with the underlying commitments.
-   You have noticed that the cost budget of the selected project does not show the lines that have been added to a project during the processing of the progress worksheets. Progress worksheets are available in the system if the *Construction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   You have imported the cost budget or the revenue budget for a project manually or by using the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, and you need to restructure imported budgets according to the revenue budget level and cost budget level of the project.

## Recalculation of the Actual Values of Projects {#section_dml_fyk_v5b .section}

To recalculate the actual project budget values, you select the unlabeled check boxes in the rows of the projects to be processed on the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form and then click **Process** on the form toolbar. Alternatively, you can click **Process All** to process all the projects shown in the table.

The system validates project balances and recalculates the values in the **Actual Quantity** and **Actual Amount** columns on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) \(PM301000\) form.

## Recalculation of the Unbilled Transactions { .section}

To recalculate project transaction information for a project, on the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form, you need to select the **Recalculate Unbilled Summary** check box. You then select the unlabeled check box in a row with the project and click **Process** on the form toolbar. \(Alternatively, you can click **Process All** to process all the projects shown in the table.\)

The system validates project balance and recalculates the **Actual Quantity** and **Actual Amount** on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) \(PM301000\) form, and also updates the list of unbilled transactions for the project. As a result, the project appears on the [Run Project Billing](PM_50_30_00.md) form.

## Recalculation of the Cost Budget Lines {#section_fsn_5bl_v5b .section}

During project budget recalculation, the system updates the cost budget lines of a project depending on the following settings:

-   The **Cost Budget Update** system-wide setting on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, which can be *Detailed* or *Summary*.
-   The **Cost Budget Level** setting specified for the particular project on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. This setting determines the detail level of the cost budget for the project, which can be *Task*, *Task and Cost Code*, *Task and Item*, or *Task, Item, and Cost Code*.

Suppose that a project has the **Cost Budget Level** set to *Task and Item* on the [Projects](PM_30_10_00.md) form. Also suppose that the cost budget of this project is based on cost transactions with multiple inventory items. The system recalculates the project budget as follows, depending on the **Cost Budget Update** option selected on the [Projects Preferences](PM_10_10_00.md) form:

-   *Detailed*: The system increases the level of detail of the project budget.

    Suppose that before you recalculate this project, on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) form, the project has a single line with the empty item code that represents all the cost transactions. When you recalculate this project, the system clears the values in this cost budget line and updates the cost budget with a separate line for each inventory item of the cost transactions. If some unprocessed cost transactions or progress worksheet lines are found for the project during the recalculation process, the system updates the cost budget line that has the same inventory item as in the cost transaction. If the cost budget has no line that has this inventory item, a new line with the inventory item is added.

-   *Summary*: The system maintains the level of detail of the project budget and does not reduce it.

    Suppose that before you recalculate this project, on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) form, the project has a separate line for each inventory item of the cost transactions. If some unprocessed cost transactions are found for the project during the recalculation process, the system updates the cost budget line with the empty item code selected as the inventory item, regardless of the inventory item of the cost transaction. If the cost budget has no line with the empty item code, a new line with the empty item code is added.


For more information on the rules that the system uses to update the amounts and quantities in budget lines, see [Project Transactions: Update of the Project Budget Structure](Projects_Transactions_Project_Budget_Update.md).

## Recalculation of the Revenue Budget Lines {#section_apn_5bl_v5b .section}

During project budget recalculation, the system updates the revenue budget lines of a project depending on the following settings:

-   The **Revenue Budget Update** setting on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, which can be *Detailed* or *Summary*.
-   The **Revenue Budget Level** setting specified for each project on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. This setting determines the detail level of the cost budget for the project, which can be *Task*, *Task and Cost Code*, *Task and Item*, or *Task, Item, and Cost Code*.

Suppose that a project has the **Revenue Budget Level** set to *Task and Item* on the [Projects](PM_30_10_00.md) form. Also suppose that the revenue budget of this project is based on revenue transactions with multiple inventory items. The system recalculates the project budget as follows, depending on the **Revenue Budget Update** option selected on the [Projects Preferences](PM_10_10_00.md) form:

-   *Detailed*: The system increases the level of detail of the project budget.

    Suppose that before you recalculate this project, on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form, the project has a single line with the empty item code that represents all the revenue transactions. When you recalculate this project, the system removes this revenue budget line and updates the revenue budget with a separate line for each inventory item of the revenue transactions. If some unprocessed revenue transactions are found for the project during the recalculation process, the system updates the revenue budget line that has the same inventory item as in the revenue transaction. If the revenue budget has no line that has this inventory item, a new line with the inventory item is added.

-   *Summary*: The system maintains the level of detail of the project budget and does not reduce it.

    Suppose that before you recalculate this project, on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form, the project has a separate line for each inventory item of the revenue transactions. When you recalculate this project, the system does not remove the revenue budget lines; it also does not update the revenue budget with a single line with the empty item code for all the revenue transactions. If some unprocessed revenue transactions are found for the project during the recalculation process, the system updates the revenue budget line with the empty item code selected as the inventory item, regardless of the inventory item of the revenue transaction. If the revenue budget has no line with the empty item code, a new line with the empty item code is added.


For more information on the rules that the system uses to update the amounts and quantities in budget lines, see [Project Transactions: Update of the Project Budget Structure](Projects_Transactions_Project_Budget_Update.md).

## Recalculation of Change Orders {#section_n4d_qbl_v5b .section}

To recalculate budget values affected by change orders, you select the **Recalculate Change Orders** check box in the Selection area of the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form. You then select the unlabeled check boxes in the rows of the projects to be processed and click **Process** on the form toolbar to process the selected projects. Alternatively, you can click **Process All** to process all the projects shown in the table.

The system validates the project balances and recalculates the following values on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   **Budgeted CO Quantity**
-   **Budgeted CO Amount**
-   **Revised Budgeted Quantity**
-   **Revised Budgeted Amount**

**Attention:** The recalculation of change orders does not involve the recalculation of the committed values that were changed with the change orders. To update the committed values, you need to rebuild commitments.

## Rebuilding of Project Commitments {#section_r2p_pbl_v5b .section}

To rebuild commitments \(purchase orders, project drop-ship orders, and subcontracts\), you select the **Rebuild Commitments** check box in the Selection area of the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form. You then select the unlabeled check boxes in the rows of the projects to be processed and click **Process** on the form toolbar to process the selected projects. Alternatively, you can click **Process All** to process all the projects shown in the table.

The system recreates commitments and recalculates the project balances. That is, it updates the following values on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   **Original Committed Quantity**
-   **Original Committed Amount**
-   **Committed CO Quantity**
-   **Committed CO Amount**
-   **Revised Committed Quantity**
-   **Revised Committed Amount**
-   **Committed Received Quantity**
-   **Committed Invoiced Quantity**
-   **Committed Invoiced Amount**
-   **Committed Open Quantity**
-   **Committed Open Amount**

## Recalculation of Pro Forma Invoices {#section_lqn_4bl_v5b .section}

To recalculate pro forma invoices, you select the **Recalculate Draft Invoice Amount and Quantity** check box in the Selection area of the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form. You then select the unlabeled check boxes in the rows of the projects to be processed and click **Process** on the form toolbar to process the selected projects. Alternatively, you can click **Process All** to process all the projects shown in the table.

The system validates the project balances and recalculates the **Draft Invoice Amount** and **Draft Invoice Quantity** on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

## Recalculating Inclusive Taxes { .section}

To recalculate inclusive taxes, you select the **Recalculate Inclusive Taxes** check box in the Selection area of the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form. You then select the unlabeled check boxes in the rows of the projects to be processed and click **Process** on the form toolbar to process the selected projects. Alternatively, you can click **Process All** to process all the projects shown in the table.

## Recalculating Projects’ Budget History { .section}

To recalculate projects’ budget history, you select the **Recalculate Project Budget History** check box in the Selection area of the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form. You then select the unlabeled check boxes in the rows of the projects to be processed and click **Process** on the form toolbar to process the selected projects. Alternatively, you can click **Process All** to process all the projects shown in the table.

The system calculates data from previously processed project-related documents and includes it in the date-sensitive calculations that it performs on the following forms:

-   [Project Cash Flow](PM_65_10_10.md) \(PM651010\)
-   [Project Committed Cost Detailed](PM_65_83_00.md) \(PM658300\)
-   [Project Committed Cost Summary](PM_65_82_00.md) \(PM658200\)
-   [Project Profitability](PM_65_81_00.md) \(PM658100\)
-   [Project Variance](PM_65_10_20.md) \(PM651020\)

For details, see [Working with Construction Reports](Construction_Reports_Mapref.md).

**Parent topic:**[Managing the Project Budget](../UserGuide/Projects_Budget_Mapref.md)

