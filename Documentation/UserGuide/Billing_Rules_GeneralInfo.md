# Billing Rules: General Information {#_c425632c-97ad-4a89-9444-2ec8716c2e47 .concept}

In Acumatica ERP, billing rules are used to automate the calculation of amounts being billed to customers for a particular project. You assign a particular billing rule to each project task, and the rule defines which transactions should be used for billing and which accounts should be used to record the transactions that are generated in the billing process.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure billing rules for progress billing
-   Configure billing rules for time and material billing
-   Configure combined billing rules with multiple steps of different types
-   Use billing rates and item prices in billing rules

## Applicable Scenarios { .section}

You configure a billing rule to specify how the customers should be billed based on the project conditions:

-   You configure a progress billing rule if you need to prepare an invoice for the customer that includes the services provided as a part of a fixed-price project.
-   You configure a time and material billing rule if you need to prepare an invoice for the customer based on the project transactions that record the time and material spent on the project.
-   You configure a combined billing rule that includes both progress billing and time and material billing steps if you need to calculate invoice amounts differently based on different project stages.

## Configuration of Billing Rules { .section}

The billing process is defined by the billing rule of each project task. A billing rule is assigned to each project on the **Summary** tab \(**Billing and Allocation Settings** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form. When a task is added to the project on the **Tasks** tab of this form, by default, it is assigned the billing rule of the corresponding project, but a different billing rule can be specified for the task.

You create billing rules on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form. In the **Billing Steps** table, you specify the sequence of steps for the selected billing rule. Then in the right pane, you define the calculation rules and invoice settings for each step. You can add either of the following to each billing rule:

-   A single *Progress Billing* step to bill pending invoice amounts or quantities based on the progress of the performed work
-   A single *Time and Material* step \(or multiple steps of this type\) to bill transactions by different account groups

A simple billing rule includes only one billing step. More complex billing rules consist of multiple steps with different conditions. Each step of a billing rule has a variety of settings, including the following, that depend on the step type:

-   The account group that is used as a filter to select the transactions for billing if this is a *Time and Material* billing step.

    When the billing procedure is run, the system selects all the transactions that are due for billing. Normally, you use the same account group \(or groups\) for billing that you use for accumulating the unrecognized revenue. By running billing for these account groups, you recognize the revenue.

    **Important:** If you configure multiple time and material steps for the same account group, only the last pro forma invoice line created based on these steps will be linked to the project transaction that has been used as a basis for billing.

-   The formulas to define the description of the invoice and the description of each invoice line, to make the system compose each type of description dynamically during the billing process.
-   The formulas to calculate the amount and the quantity of the invoice lines if this is a *Time and Material* billing step. In these formulas, you can use fields and attributes from such system entities as the project, project budget, project task, project transaction, customer, vendor, employee, inventory item, and account group. You can also use different sources of the project rates: those from the rate tables can be configured on the [Rate Tables](PM_20_60_00.md) \(PM206000\) form, and those from sales price lists, which are defined on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form.
-   The sources of the sales account and the destination branch for each invoice line.

    The billing process uses the originating branch from the project settings on the [Projects](PM_30_10_00.md) form and the destination branches from the sources according to the billing rules. When an accounts receivable invoice is released, the accounts receivable account is updated under the originating branch of the invoice, while the revenue amounts are recorded to the destination branches of the invoice lines.

-   The invoice group, if you want to make the system create separate invoices \(either pro forma invoices or accounts receivable invoices, depending on the billing workflow of the project\) for particular steps with the same invoice group during the project billing.
-   Non-billable transactions that do not contribute to the amount billed to the customer and that you may decide to include in the invoice for informational purposes if this is a *Time and Material* billing step; the respective invoice lines will have a billed quantity and billed amount of 0.
-   Grouping criteria by date, employee, vendor, and inventory item for the invoice lines if this is a *Time and Material* billing step.

## Formulas and Parameters in Billing Rules and Allocation Rules {#section_umq_b4x_h4b .section}

**Tip:** The parameters and objects listed in this section could be specified in allocation rules as well.

In formulas that are used in the settings of billing rules, you can use the *@Rate* parameter to refer to billing rates defined in the rate tables on the [Rate Tables](PM_20_60_00.md) \(PM206000\) form. For more information, see [Billing Rates: General Information](Billing_Rates_GeneralInfo.md).

For project transactions with associated stock or non-stock items, you can retrieve the effective sales price of an inventory item by using the *@Price* parameter. For instance, to implement a price model that estimates the project billable amount as the billable quantity of the provided services multiplied by the price, you can use the following formula: `=[PMTran.BillableQty]*@Price`. For more information about using billing rates, see [Billing Rates: General Information](Billing_Rates_GeneralInfo.md).

Also, in formulas that are used in the settings of a billing rule, you can use the following data access classes to retrieve the data:

-   `PMAccountGroup`
-   `PMBudget`

    When you bill a project using a billing rule with a formula that uses the `PMBudget` data access class, for each budget line of the project, the system retrieves the `PMBudget` records that are associated with the same project budget key. The project budget key includes the project, project task, account group, and inventory item, as well as the cost code if the *Cost Codes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   `PMProject`
-   `PMTask`
-   `PMTran`
-   `Customer` \(the customer of the project transaction that is being billed\)
-   `EPEmployee` \(the employee of the project transaction that is being billed\)
-   `InventoryItem` \(the inventory item of the project transaction that is being billed\)
-   `Vendor` \(the vendor of the project transaction that is being billed\)

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

