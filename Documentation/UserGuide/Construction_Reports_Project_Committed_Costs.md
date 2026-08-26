# Construction Reports: Project Committed Costs {#_706f7418-4503-4abb-b42c-8af469ca6209 .concept}

Project commitments generally originate from purchasing documents—purchase orders, project drop-ship orders, and subcontracts. As a project progresses, amendments to original agreements accumulate, updating the total committed costs over time.

In Acumatica ERP Construction Edition, you can use these generic inquiry forms to monitor your projects’ current and historical committed costs:

-   [Project Committed Cost Summary](PM_65_82_00.md) \(PM658200\): View the project’s committed costs as of a specific date
-   [Project Committed Cost Detailed](PM_65_83_00.md) \(PM658300\): Review all the project's commitments

These forms help you track budget performance, identify potential cost overruns, and maintain full traceability of commitments for financial reporting and project audits.

**Important:** Before you start using these generic inquiry forms, you must do the following on the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form:

1.  Select the **Recalculate Project Budget History** check box.
2.  Recalculate project balances.

This ensures that the system’s calculations include data from previously processed project-related documents.

## Summary of the Project’s Committed Costs { .section}

On the [Project Committed Cost Summary](PM_65_82_00.md) \(PM658200\) generic inquiry form, you can track a project's committed costs as of any date. To get started, you select the date and the project.

Each row represents a cost budget line of the project—with all amounts in the project currency. In the table, you can view the cost budget line's budgeted costs, committed costs, remaining costs, retainage, and taxes related to commitments. The leftmost columns of the table display the budget lines’ basic information—including project settings, the project task, and the account group—and budgeted and actual costs. The rightmost columns of the table have each budget line’s committed and remaining costs.

**Tip:**

-   In the **Actual Non-Committed Amount** column, you can view actual expenses that aren’t related to commitments, such as a direct project transaction or direct AP bill. This column is hidden by default, but you can display it.
-   The **Item**, **UOM**, and **Quantity** columns are hidden by default.
-   Some columns, such as **Cost Code** or **Released Retainage**, show values only if the corresponding feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Breakdown of the Project’s Committed Costs { .section}

The [Project Committed Cost Detailed](PM_65_83_00.md) \(PM658300\) generic inquiry form provides detailed oversight of the costs for all commitments of the project. To get started, you select the date and the project.

Each row represents a line of a subcontract, purchase order, project drop-ship order, or direct AP bill related to the project—with all amounts in the project currency. In the table, you can view each project-related document’s basic information, budgeted amounts, and actual amounts. The rightmost columns of the table show the documents' committed and remaining costs.

You may need to review each document's committed amounts, billed amount, change order amounts, taxes, remaining amount, retainage, and realized gain or loss. To do this, you find the number of the document from which the commitment originates in the **Related Document** column and review these amounts for the needed vendor.

**Tip:**

-   The **Item** and **UOM** columns are hidden by default, but you can display them.
-   Some columns, such as **Cost Code** or **Released Retainage**, show values only if the corresponding feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

