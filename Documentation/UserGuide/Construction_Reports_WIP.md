# Construction Reports: WIP Reports {#_5b28abc6-5f9d-4cac-8fbc-156769dd0b92 .concept}

When companies use the percentage-of-completion method for revenue recognition, they include a WIP \(which can indicate *work in progress* or *work in process*\) schedule with their financial statements. WIP reports are designed to track the current progress of a project, as well as the financial performance of particular project tasks. The tracking of WIP gives you the ability to determine whether a project task is overbilled or underbilled relative to its progress.

In Acumatica ERP, you can use the [Project WIP](PM_65_15_00.md) \(PM651500\) and [Project WIP Detail](PM_65_25_00.md) \(PM652500\) reports to gather and analyze the necessary information to meet your business’s needs. The sections of this topic describe the key project metrics that you can analyze with WIP reports and give a brief overview of report columns that are useful for this analysis.

For the complete list of columns in the WIP reports and formulas that are used for calculations, see the [Project WIP](PM_65_15_00.md) \(PM651500\) and [Project WIP Detail](PM_65_25_00.md) \(PM652500\) report reference topics.

## Project Performance { .section}

In the WIP reports, you can review the project data of the selected period range \(from *Period 1* to *Period 2*\) with the project actual values calculated through the period that is not in this period range \(*Period 3*\). For example, you can analyze the performance of a project through the current period, 01-2026, while the overall project details will be calculated for the previous financial year \(01-2025 through 12-2025\).

In the [Project WIP Detail](PM_65_25_00.md) \(PM652500\) report, you can also analyze project performance with the report information broken down by cost codes and project tasks, or by project tasks only.

## Project Progress { .section}

In the WIP reports, you can analyze project progress for a particular range of periods based on the following report columns:

-   **Period Costs** and **Costs to Period**
-   **Period Billings** and **Billings to Period**
-   **Gross Profit**, **Gross Profit Backlog** and **Est. Gross Profit**
-   **Revenue Backlog**
-   **Remaining Contract**

## Potential Costs { .section}

You can include cost projections in WIP reports to analyze the potential costs of every project phase and their impact on the overall project performance before these costs appear in the company profit and loss statements. The released cost projections can be included in calculations for the following columns:

-   **Projected Cost at Completion**
-   **Estimated Gross Profit** and **Estimated Gross Profit %**
-   **Billings in Excess of Costs** and **Cost in Excess of Billings**
-   **Gross Profit** and **Gross Profit Backlog**
-   **Earned Revenue**
-   **% Complete**
-   **Revenue Backlog**

## Earned Revenue for the Period’s End { .section}

By using WIP reports, you can analyze the earned revenue of the project for the end of a financial period. You can also make adjustments to the profit and loss statements in order to comply with the matching principle of generally accepted accounting principles \(which states that the expenses related to the revenue have to be recorded to the same financial period in which the revenue has been recorded\).

In the prepared WIP report, you can analyze the values in the **Billings in Excess of Cost** and **Cost in Excess of Billings** columns as follows:

-   If **Billings in Excess of Costs** is positive, this means that the project is overbilled—that is, the project billings exceed the earned revenue. In this case, you create and release the following GL adjustment transaction:
    -   Deferred Revenue account, Cr, Billings in Excess of Costs total
    -   Income account, Dr, Billings in Excess of Costs total
-   If **Cost in Excess of Billings** is positive, this means that the project is underbilled—that is, earned revenue exceeds the project billings. In this case, you create and release the following GL adjustment transaction:
    -   Accrued Revenue account, Dr, Costs in Excess of Billings total
    -   Income account, Cr, Costs in Excess of Billings total

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

