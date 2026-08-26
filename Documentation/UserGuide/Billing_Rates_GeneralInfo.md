# Billing Rates: General Information {#_45d7ee10-04e3-41fa-befc-51cd732b8552 .concept}

You must establish an adequate pricing model in the project that you are managing to ensure that business outcomes are met, the project budget is used effectively, and project revenues and costs are properly balanced. In Acumatica ERP, you can implement virtually any pricing model by using billing rates for configuring complex billing rules.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a rate table code and rate type
-   Define a rate sequence
-   Define a rate table with particular rates
-   Use billing rates for billing projects with different billing rates

## Applicable Scenarios { .section}

You configure and use billing rates if you need to perform project billing so that the system applies the appropriate rate based on the dates when the work has been performed, as well as any of the following factors:

-   Particular projects and project tasks
-   Specific account groups
-   Certain inventory items
-   Specific employees

## Billing Rate Configuration { .section}

A billing rate is an exact value used for calculating the amount and quantity of the invoice lines that are created by the billing rule steps of the *Time and Material* type. The process of defining a billing rate includes the configuration of rate table codes, rate types, rate codes, and rate sequences.

A rate table is a set of billing rates that the system uses in the formulas of the billing rules during the billing of a project. A billing rate is defined for a particular date range; a rate table may include multiple rates with different effective dates. You can create a single rate table with multiple rate sequences and rate codes to be used for all projects, or define multiple rate tables to maintain different pricing models for the projects based on different factors. For example, you can create different rate tables and select the rate table to be used for the project depending on whether a customer of a project is a local one or international one.

In a rate table, for each rate type, you can define any number of rate sequences that include multiple factors that may affect the rates. These factors can include specific projects, project tasks, employees, account groups, and inventory items. You narrow the applicability of the rate based on the combination of factors you select. For example, you can configure a separate billing rate for particular tasks of specific projects if particular employees work on these project tasks.

Also, in each rate table, you can add rate codes, which represent an additional dimension in a rate table that you use to simplify the configuration of the rate table. By using multiple rate codes with one sequence, you can reduce the number of sequences that need to be configured for each pair of a rate table and a rate type. For example, instead of creating multiple sequences, each including the applicable rates for a particular employee, you can create only one rate sequence with the **Employee** check box selected on the [Rate Table Sequences](PM_20_50_00.md) \(PM205000\) form and create separate rate codes for each employee. As another example, suppose that you want to use different rates for three projects. Instead of creating multiple sequences with the **Project** check box selected in the table on the [Rate Table Sequences](PM_20_50_00.md) form and specifying a rate for each sequence under one rate code, you can use only one sequence and three rate codes to define different rates for these three projects.

## Workflow of Rate Table Configuration { .section}

You configure a rate table with rates by performing the following general steps:

1.  You create a rate table code on the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form.
2.  You create a new rate type on the [Rate Types](PM_20_41_00.md) \(PM204100\) form. Before creating the rate type, you need to plan how many and which rate types you will need in billing and allocation rules. \(Typically, different rates are used for the billing of labor costs, revenues, and expenses.\) When you configure billing or allocation rules, you will assign different rate types to different steps of these rules.
3.  On the [Rate Table Sequences](PM_20_50_00.md) \(PM205000\) form, you create rate sequences for each combination of rate table code and rate type. Each sequence defines a group of options based on which the system will select the billing rate. You can select any combination of the **Project**, **Project Task**, **Account Group**, **Inventory Item**, and **Employee** check boxes. The sequence number specified in the **Rate Table Sequence** column in the table defines the order in which the system will search for the rate in that row \(starting from the sequence with the lowest number in the table\).
4.  On the [Rate Tables](PM_20_60_00.md) \(PM206000\) form, for each combination of rate table code, rate type, and rate code, you select a rate sequence in the **Rate Table Sequence** box. You select an existing rate code, or you create a new rate code by entering a new identifier in the **Rate Code** box.

    For the selected rate sequence, in the table on the **Rate** tab, you enter the exact values of billing rates with the date range during which the rates are effective. Also, on the tabs that appear for the types of factors that were defined in the rate sequence, you specify the specific factors that will define the applicability of the rates that you enter for the current rate sequence. These factors may include particular projects, project tasks, account groups, inventory items, and employees. Also, you specify the exact values of the billing rates with their date ranges in the **Rate** column on the **Rate** tab; the system will use these rates as the value of the *@Rate* parameter.

5.  On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, you create a billing rule and assign particular rate types to billing steps.

    In the billing rule steps, you use the *@Rate* parameter to refer to a particular billing rate in the billing rule formulas. In each billing rule step, you can specify this parameter as a multiplier, addend, or constant in the **Invoice Description Formula**, **Line Quantity Formula**, **Line Amount Formula**, and **Line Description Formula** boxes on the [Billing Rules](PM_20_70_00.md) form.

    **Attention:** You can also assign rate types to allocation rules steps on the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form. Then you specify the *@Rate* parameter in the formulas of the allocation rule so that the system will use its value during transaction allocation. You can specify the parameter in the **Quantity Formula**, **Billable Qty. Formula**, **Amount Formula**, and **Description Formula** boxes on the [Allocation Rules](PM_20_75_00.md) form.

6.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, you assign a particular rate table code to each of the project tasks of the project.

**Parent topic:**[Managing Billing Rates](../UserGuide/Billing_Rates_Mapref.md)

