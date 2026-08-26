# Construction Reports: General Information {#_640f50a8-abf5-4101-a9af-41eb467ab8fd .concept}

Acumatica ERP Construction Edition includes various reports that you can use to get a complete view of project data, effectively track project costs, and estimate current project performance.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare substantiated billing reports and understand what information is included in them
-   Prepare American Institute of Architects \(AIA\) reports and understand what information is included in them
-   Prepare work-in-progress \(WIP\) and bonding reports and understand what information is included in them
-   Prepare subcontract audit reports and understand what information is included in them
-   Review the project lifecycle and performance with the help of Acumatica ERP Construction Edition reports

## Applicable Scenarios { .section}

You may find construction-specific reports useful in your role as a project manager in the following scenarios:

-   You have billed a customer for work completed for a particular period and want to provide the customer with a report of the cost transactions to support the pro forma invoice.
-   You need to formally request payment from the project owner.
-   You need to verify that the billed work has been completed according to the contract specifications.
-   You need to estimate the current progress of a project and the financial performance of particular project tasks.

## Substantiated Billing Reports { .section}

In the construction industry, when contractors bill their customers, the customers may want to see proof of the costs. In this case, the contractors need to provide supporting documentation along with the customer statement or invoice. Acumatica ERP Construction Edition includes the [Substantiated Billing](PM_65_00_00.md) \(PM650000\) and [Substantiated Billing: Consolidated](PM_65_00_50.md) \(PM650050\) reports, which are specifically designed to display a detailed breakdown of the costs incurred during a specific date range, along with the supporting documentation. For a detailed description of the information included in substantiated billing reports, see [Construction Reports: Substantiated Billing Reports](Construction_Reports_SubstantiatedBilling.md).

## AIA Reports {#section_skv_pn4_qmb .section}

The common construction billing format is known as AIA progress billing, named based on the American Institute of Architects, which produces the industry’s official forms. An AIA report serves as both the contractor’s application and the architect’s certification. Using an AIA report helps to expedite payment and reduces the possibility of errors. If the application is properly completed and acceptable to the architect, the architect’s signature certifies to the owner of the project that a payment in the amount indicated is due to the contractor. The form also gives the architect the ability to certify an amount that is different than the amount applied for and to provide a corresponding explanation.

For a detailed description of the information included in AIA reports, see [Construction Reports: AIA Reports](Construction_Reports_AIA.md), [Construction Reports: AIA Reports for Released Retainage](Construction_Reports_AIA_Released_Retainage.md), and [Construction Reports: Time and Material Amounts in AIA Reports](Construction_Reports_AIA_TMLines.md).

## Bonding Reports { .section}

By using the [Construction Bonding Report](PM_65_05_00.md) \(PM650500\), you can gain an understanding of the work in progress for both ongoing and completed projects within a selected date range. This report provides a wide-angle snapshot of all the projects in the system and can be used by your company's management or bonding companies to assess the financial health of the projects and make informed decisions.

You can create a bonding report based on your preferences and needs. The typical process involves performing the following general steps on the report form:

1.  Selecting the project you want to report on, or leaving the **Project** box empty to report on multiple projects.
2.  Selecting the status \(*Active*, *Completed*, or *Active and Completed*\) of the projects you want to view. If needed, you can also exclude from the report completed projects that have an end date earlier than or the same as the date that you specify in the **Exclude Projects Completed Through Date** box.
3.  Selecting the period for which you want to display data.
4.  Selecting the source of the costs that the system will use to calculate the report values \(*By Cost Budget* or *By Cost Projection*\).
5.  Checking the printing and email settings and making any needed changes.

On the report form, you can create and save the template of the report for future needs.

After you have specified the bonding report settings, you run the report by clicking **Run Report** on the report form toolbar. The system opens the report.

In the report, you can review the list of projects with information that reflects their financial state. All amounts are shown in your project currency. For each project, the table displays the following key financial indicators, which characterize the company's sustainability:

-   Percentage of project completion
-   Earned revenue
-   Costs and billings of the period
-   Overbilled and underbilled amounts
-   Turnover cost and billing amounts for the previous financial year

Depending on the option selected in the **Planned Cost Estimation** box of the report form, the report also includes the following financial indicators:

-   If *By Cost Budget* is selected, the costs to complete and costs at completion
-   If *By Cost Projection* is selected, the projected costs to complete and projected costs at completion

You can print the report or export it to a PDF or to Microsoft Excel.

## WIP Reports { .section}

In the construction industry, some companies use the percentage-of-completion method for revenue recognition. These companies provide a work-in-progress \(WIP\) schedule along with their financial statements. A WIP schedule is a detailed report used in project management to track the progress of ongoing projects and their financial status. It provides a snapshot of all projects that are currently in progress and offers insights into their financial performance, including the costs incurred, the revenue earned, and the percentage of completion. For more information on how you can use the WIP reports provided in Acumatica ERP Construction Edition, see [Construction Reports: WIP Reports](Construction_Reports_WIP.md).

## Subcontract Audit Reports { .section}

Managers in the construction industry rely on subcontract audit reports to ensure accuracy in billing, verify that the work performed aligns with the contract terms, and maintain accountability. These reports help managers track costs, identify potential risks, and ensure effective workflows.

By using the [Subcontract Audit](SC_64_40_00.md) \(SC644000\) report form, you can create a summary or detailed report about the subcontracts for a particular date range. This report includes subcontract balances and the documents that have affected these balances, such as change orders, bills, and applied payments. Additionally, it displays the budgeted and retainage amounts for each subcontract, as well as the current outstanding balance and the unbilled, billed-to-date, and paid-to-date amounts. The report shows summary or detailed information broken down by subcontract.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

