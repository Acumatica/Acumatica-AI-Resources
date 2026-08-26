# Consolidated Financial Statement: General Information {#_b8d0b1dd-6bd0-458a-9309-6638727e0b74 .concept}

Acumatica ERP provides the Analytical Report Manager \(ARM\) toolkit, which you can use to build analytical reports that retrieve amounts posted to particular general ledger accounts and subaccounts. You can configure these reports to display data for a company, a company group, or particular branches of a company.

## Learning Objectives {#section_oh1_jjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Perform a translation of account balances from the company base currency \(CAD\) to the base currency of the parent company \(USD\)
-   Create and configure a unit set and column set and apply them to an analytical report
-   Run the analytical report to display consolidated financial data for two companies in USD

## Applicable Scenarios {#section_qh1_jjv_vxb .section}

You create a consolidated financial statement if you need to review the consolidated data of multiple companies that are configured in the same tenant. If these companies have different base currencies, you have to translate them into the same currency first.

## Structure of an ARM Report {#section_sh1_jjv_vxb .section}

An ARM report typically consists of the following elements:

-   The row set, which defines the rows to be used in the report.
-   The column set, which defines the report title, the column headers, and the columns of the report.
-   Unit sets, which give you the ability to quickly filter or consolidate report data. Unit sets are optional for ARM reports in general.
-   The report definition, which identifies a particular report. The report definition links the row set, the column set, and the unit set of the report and defines the report parameters. By using the report definition, you can easily add the report to the site map.

You can use each row set, column set, or unit set in one report definition or in multiple definitions.

## Filtering of Data with Unit Sets {#section_vh1_jjv_vxb .section}

You can use a unit set to organize the report structure in the following cases:

-   When the groups of rows and columns included in the report use data from different data sources
-   When formulas must be applied to calculate the report values based on the data from the explicitly defined groups of columns and rows

A unit set can include one unit or multiple units that specify how the data is selected, calculated, and displayed in reports. In the report, you can view data for each individual unit, which could be a branch or a cost center, as well as data consolidated for all the units.

## Workflow of Preparing a Consolidated Financial Statement {#section_vv2_1y4_y4b .section}

When you are preparing a consolidated financial statement of multiple companies using different base currencies, the typical process involves the actions and generated documents shown in the following diagram.

1.  You perform the necessary configuration and prepare a *translation definition* that will be used to translate the account balances of the company with the *CAD* base currency in *USD*. The translation definition created on the [Translation Definition](CM_20_30_00.md) \(CM203000\) form includes the source ledger and destination ledger, the accounts to be translated, and the rules to be used for translation.
2.  You prepare a translation for a particular financial period on the [Prepare Translation](CM_50_10_00.md) \(CM501000\) form. When the system prepares the translation by using the specified translation definition, it generates a translation worksheet and shows it on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form. You then review and release the translation worksheet.
3.  To create a consolidated financial statement based on the [Profit &amp; Loss](GL_63_50_00.md) \(GL635000\) report, you create a row set and a column set for the new report by copying a row set on the [Row Sets](CS_20_60_10.md) \(CS206010\) form and a column set on the [Column Sets](CS_20_60_20.md) \(CS206020\) form.
4.  On the [Report Definitions](CS_20_60_00.md) \(CS206000\) form, you create a report definition by copying the report definition of the [Profit &amp; Loss](GL_63_50_00.md) report, and select the newly created row set and column set for the report definition.
5.  On the [Unit Sets](CS_20_60_30.md) \(CS206030\) form, you create a unit set for the new report, where you specify the nodes to be shown in the report and the formula for calculating the consolidated financial data for the entire SweetLife company.
6.  On the [Report Definitions](CS_20_60_00.md) form, you apply the new unit set to the report definition you created.

**Parent topic:**[Preparing a Consolidated Financial Statement](../UserGuide/Multicurrency_MBC_Consolidated_Financial_Statement_Mapref.md)

