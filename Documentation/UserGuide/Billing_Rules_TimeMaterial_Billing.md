# Billing Rules: Time and Material Billing {#_d030490b-2d81-4f9a-9501-13e37de6edac .concept}

For a billing rule defined on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, you specify the sequence of steps in the left pane and the settings of each step in the right pane. The following sections list the settings that you can specify for a billing rule step of the *Time and Material* type, and describes the process of billing a project for time and material by using a simple one-step billing rule.

## Configuration of a Billing Rule Step { .section}

For a billing rule step of the *Time and Material* type, you can specify the following settings:

-   The account group that is used as a filter to select the transactions for billing by the *Time and Material* billing steps. When the billing procedure is run, the system selects all the transactions that are due for billing and that have this account group. Normally, you use for billing the same account group or groups that you use for accumulating the unrecognized revenue.
-   A formula to define the description of the invoice and a formula to define the description of each invoice line, to make the system compose these descriptions dynamically during the billing process.
-   A formula to calculate the amount of the invoice lines created by the *Time and Material* billing steps, and another formula to calculate the quantity of these invoice lines. In these formulas, you can use fields and attributes from such entities as the project, project budget, project task, project transaction, customer, vendor, employee, inventory item, and account group. You can also use different sources of the project rates: those from rate tables, which can be configured on the [Rate Tables](../Shared/../UserGuide/PM_20_60_00.md) \(PM206000\) form; and those from sales price lists, which are defined on the [Sales Prices](../Shared/../UserGuide/AR_20_20_00.md) \(AR202000\) form.

    **Attention:** If inclusive taxes are configured in the system, the amounts of project transactions are considered gross amounts—that is, already including the inclusive taxes. If the project transaction amounts that you enter in your system are net amounts \(that is, they do not include an inclusive tax\), you need to configure the line amount formula to include the `PMBudget.InclTaxAmount` value in the calculations.

-   The source of the sales account and the source of the destination branch for each invoice line.

    The billing process uses the originating branch from the project settings on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form and the destination branches from the sources according to the billing rules. When an accounts receivable invoice is released, the accounts receivable account is updated under the originating branch of the invoice, while the revenue amounts are recorded to the destination branches of the invoice lines.

-   The invoice group, which can be used during billing to make the system create separate invoices \(either pro forma invoices or accounts receivable invoices, depending on the billing workflow of the project\) for particular steps with the same invoice group during the project billing.
-   Non-billable transactions that do not contribute to the amount billed to the customer and that you may decide to include in the invoice.
-   Grouping criteria by date, employee, vendor, and inventory item for the invoice lines created by the *Time and Material* billing steps.

## The Time and Material Billing Process { .section}

The time and material billing workflow is provided for project tasks that need to be billed based on project transactions. Time and material billing can be performed only for project tasks of a project that is pending billing—that is, if the project has at least one unbilled transaction that is ready to be billed on the invoice date. The *Time and Material* billing steps can be run once the project transactions that match the selection criteria have been processed. Optionally, the allocation process can be executed for these transactions before billing. For more information, see [Project Billing Preparation: General Information](../Shared/../UserGuide/Projects_Project_Billing_Preparation_GeneralInfo.md).

**Tip:** If a project is billed with a billing rule that includes only *Time and Material* billing steps, during the billing process, the system ignores any pending invoice amount of the revenue budget lines.

To bill a project task for time and material, you need to create a billing rule on the [Billing Rules](../Shared/../UserGuide/PM_20_70_00.md) \(PM207000\) form and configure a step or multiple steps of the *Time and Material* type in this rule. Multiple *Time and Material* steps are used in a billing rule for different account groups of transactions that should be used to determine the invoiced amounts by using different formulas. Then you assign the configured billing rule to project tasks on the **Tasks** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form.

**Important:** If you configure multiple time and material steps for the same account group, only the last pro forma invoice line created based on these steps will be linked to the project transaction that has been used as a basis for billing.

You can run billing for one project by clicking the **Run Billing** button on the form toolbar of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form or process multiple projects on the [Run Project Billing](../Shared/../UserGuide/PM_50_30_00.md) \(PM503000\) form. When you run the project billing, the system prepares a project invoice whose type depends on the state of the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form as follows:

-   If the check box is selected, the system generates a pro forma invoice with a positive or negative amount.
-   If the check box is cleared, the system generates an accounts receivable invoice \(if the total billed amount is positive\) or credit memo \(if the total billed amount is negative\). For more information about credit memos, see [Project Invoice Correction: Credit Memos for Projects](../Shared/../UserGuide/Projects_Correcting_Project_Invoices_Credit_Memo_Billing.md).

The system creates a project invoice based on the unbilled project transactions with amounts calculated by using the billing rules of the project tasks. In the billing, the system includes the transactions with a date that is earlier than the billing date and does not include the transactions with a date that is later than the billing date. If the project billing is performed by using the pro forma invoice workflow, the invoice lines that are produced by the *Time and Material* billing steps are displayed on the **Time and Material** tab of the [Pro Forma Invoices](../Shared/../UserGuide/PM_30_70_00.md) \(PM307000\) form.

The transactions with the same date as the invoice date are billed if *Include Transactions with Billing Date* is selected as the **Billing Cutoff** on the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) \(PM101000\) form; if *Include Only Transactions Before Billing Date* is selected, the system skips the transactions with the same date as the invoice date.

During the billing process, the system groups the billable amounts into separate invoices based on the following:

-   The invoice group of the steps of the billing rules to which the project tasks refer
-   The customer
-   The customer location
-   The **Bill Separately** setting of each project task defined on the [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\) form

For more information, see [Grouping of Invoices: General Information](../Shared/../UserGuide/Projects_Grouping_Invoices_GeneralInfo.md).

If the status of a pro forma invoice is *On Hold*, you can change the **Amount to Invoice** values in the time and material lines of the pro forma invoice. When you release a pro forma invoice and the system creates the corresponding accounts receivable invoice or credit memo, the system copies the values in the **Amount to Invoice** column from the **Time and Material** tab of the [Pro Forma Invoices](../Shared/../UserGuide/PM_30_70_00.md) form to the lines of the accounts receivable invoice \(or credit memo\) on the **Details** tab of the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form. You cannot change the **Amount to Invoice** value in the lines of a pro forma invoice with the *Open* and *Closed* status.

**Important:** If the *Construction* feature is in use, you may need to prepare an American Institute of Architects \(AIA\) report that includes time and material amounts from the prepared pro forma invoice. To do this, you include the time and material amounts to be billed in the progress billing amounts. For more information, see [Construction Reports: Time and Material Amounts in AIA Reports](../Shared/../UserGuide/Construction_Reports_AIA_TMLines.md).

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

