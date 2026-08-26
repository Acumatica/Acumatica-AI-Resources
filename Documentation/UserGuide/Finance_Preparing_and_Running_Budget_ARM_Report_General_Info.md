# Budget vs. Actual ARM Report: General Information {#_d10b26b3-8858-402f-99c3-fddc62afe379 .concept}

Analytical reports are a specific type of reports that you can construct in Acumatica ERP by using the Analytical Report Manager toolkit. Reports that are constructed with this toolkit are called *ARM reports* to distinguish them from the reports created in the Acumatica Report Designer. The Analytical Report Manager toolkit is specially designed for the creation of financial reports that retrieve the amounts posted to particular general ledger accounts and subaccounts.

You can modify the predefined ARM reports available in Acumatica ERP and create new ones. To modify an existing report, we recommend that you create a copy of the predefined report and modify this copy.

## Learning Objectives {#section_hgl_mjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create a new report definition by copying the report definition of the Profit and Loss report
-   Update the column set and the data source of the new report definition
-   Upload the actual data to be compared with the budgeted data
-   Run the ARM report and analyze the budget versus the actual data

## Applicable Scenarios {#section_jgl_mjv_vxb .section}

You prepare and run an ARM report if you want to construct your own report based on a predefined report and use it for comparing the budget with the actual company performance.

## Structure of the Profit &amp; Loss ARM Report {#section_lgl_mjv_vxb .section}

The Profit &amp; Loss report, which you will modify to create a new ARM report, consists of the following elements:

-   The *row set*, an entity that defines the rows to be included in the report and the data to be displayed in each row.
-   The *column set*, an entity that defines the report title, the column headers, and the columns to be included in the report.
-   The *report definition*, an entity that defines the report structure, links together the row set and the column set of a report, and defines the report parameters. By using the report definition, you can easily add the report to the needed workspace.

**Parent topic:**[Preparing and Running a Budget vs Actual ARM Report](../UserGuide/Finance_Preparing_and_Running_Budget_ARM_Report_Mapref.md)

