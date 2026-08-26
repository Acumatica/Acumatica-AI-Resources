# Billing Rules: Progress Billing {#_e096d00c-3675-4cb2-baf3-cbdf20e09398 .concept}

For a billing rule defined on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, you specify the sequence of steps in the left pane and the settings of each step in the right pane. The following sections list the settings that you can specify for a billing rule step of the *Progress Billing* type, and describes the process of billing a project for progress by using a simple one-step billing rule.

## Configuration of a Billing Rule Step { .section}

Each billing rule can include only one step of the *Progress Billing* type. For the billing rule step of this type, you can define the following settings:

-   A formula to define the description of the invoice and another formula to define the description of each invoice line, to make the system compose these descriptions dynamically during the billing process.
-   The source of the sales account and the source of the destination branch for each invoice line.

    The billing process uses the originating branch from the project settings on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form and the destination branches from the sources according to the billing rules. When an accounts receivable invoice is released, the accounts receivable account is updated under the originating branch of the invoice, while the revenue amounts are recorded to the destination branches of the invoice lines.

-   The invoice group of the steps of the billing rules to which the project tasks refer.

## The Progress Billing Process { .section}

Progress billing is a simple billing workflow for the projects that are gradually billed at a fixed contract amount. Progress billing does not involve project transactions. To bill a project task by its progress, you need to create a billing rule on the [Billing Rules](../Shared/../UserGuide/PM_20_70_00.md) \(PM207000\) form and configure a step of the *Progress Billing* type in this rule. Then you assign the configured billing rule to project tasks on the **Tasks** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form.

**Tip:** If a project is billed with a billing rule that includes only a *Progress Billing* billing step, during the billing process, the system ignores any unbilled project transactions.

The progress billing procedure could be initiated for a project if either of the following is true:

-   It has at least one revenue budget line with billable project revenue.
-   It has pending values of 0 if the progress billing step of the billing rule assigned to any project task has the **Create Lines with Zero Amount and Quantity** check box selected on the [Billing Rules](../Shared/../UserGuide/PM_20_70_00.md) form.

For more information, see [Project Billing Preparation: General Information](../Shared/../UserGuide/Projects_Project_Billing_Preparation_GeneralInfo.md).

Each revenue budget line is billed based on amount or quantity, depending on the option selected in the **Progress Billing Basis** column on the **Revenue Budget** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form as follows:

-   For a line billed by amount, you need to specify a nonzero amount, which may be a negative amount, in the **Pending Invoice Amount** column. For these lines, the **Pending Invoice Quantity**, **Draft Invoice Quantity**, and **Actual Quantity** values are always *0*.
-   For a line billed by quantity, you need to specify a nonzero quantity in the **Pending Invoice Quantity** column. In this case, the system will calculate the **Pending Invoice Amount** of the line as the pending invoice quantity multiplied by the unit rate specified in the line. The system will calculate the percentage of line completion \(**Completed \(%\)**\) based on the specified values.

You can also specify the **Completed \(%\)** value on the **Revenue Budget** tab for the needed revenue budget lines to indicate that the project tasks are being performed. The system will calculate the pending invoice values by using the following formulas:

`Pending Invoice Amount = Revised Budgeted Amount * ( Completed (%) / 100 ) - Draft Invoice Amount - Actual Amount`

`Pending Invoice Quantity = Revised Budgeted Quantity * ( Completed (%) / 100 ) - Draft Invoice Quantity - Actual Quantity`

**Important:** Project-related invoices, debit memos, and credit memos that have been created manually on the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form are not included in pending invoice quantities and amounts.

You run billing for one project by clicking the **Run Billing** button on the form toolbar of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form or process multiple projects on the [Run Project Billing](../Shared/../UserGuide/PM_50_30_00.md) \(PM503000\) form. When you run the project billing, the system prepares a project invoice whose type depends on the state of the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form as follows:

-   If the check box is selected, the system generates a pro forma invoice with a positive or negative amount.
-   If the check box is cleared, the system generates an accounts receivable invoice \(if the billed amount is positive\) or credit memo \(if the billed amount is negative\). For more information about credit memos, see [Project Invoice Correction: Credit Memos for Projects](../Shared/../UserGuide/Projects_Correcting_Project_Invoices_Credit_Memo_Billing.md).

The system creates a project invoice with the unit prices, amounts, and quantities copied from the **Unit Rate**, **Pending Invoice Amount** and **Pending Invoice Quantity** columns of the **Revenue Budget** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form for the corresponding revenue budget lines. If the project billing is performed by using the pro forma invoice workflow, the pro forma invoice lines that are produced by the progress billing steps are shown in the prepared pro forma invoice on the **Progress Billing** tab of the [Pro Forma Invoices](../Shared/../UserGuide/PM_30_70_00.md) \(PM307000\) form.

During the billing process, the system groups the billable amounts into invoices based on the following:

-   The invoice group of the steps of the billing rules to which the project tasks refer
-   The customer
-   The customer location
-   The **Bill Separately** setting of each project task defined on the [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\) form

For more information, see [Grouping of Invoices: General Information](../Shared/../UserGuide/Projects_Grouping_Invoices_GeneralInfo.md).

Once an invoice is prepared, the **Draft Invoice Amount** and **Draft Invoice Quantity** of the revenue budget lines are updated with the amount and quantity for which the invoice has been prepared. The **Pending Invoice Amount** and **Pending Invoice Quantity** values become *0*.

If you manually adjust the **Amount to Invoice** of a pro forma invoice line, the system automatically recalculates the **Total Completed \(%\)** in this line. This is the percentage of the revised budgeted amount of the revenue budget line of the project that has been invoiced by all the pro forma invoices of the project, including the current one. However, the system does not update the **Completed \(%\)** of the corresponding revenue budget line on the **Revenue Budget** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form accordingly. Also, the system does not update the **Completed \(%\)** of the revenue budget line if the related pro forma invoice with the corresponding progress billing line is deleted.

When you release a pro forma invoice and the system creates the corresponding accounts receivable invoice, the system copies the values in the **Amount to Invoice** column from the **Progress Billing** tab of the [Pro Forma Invoices](../Shared/../UserGuide/PM_30_70_00.md) form to the corresponding lines of the accounts receivable invoice on the **Details** tab of the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

