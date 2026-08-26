# Project Billing Preparation: General Information {#_b10042e7-5e77-4c46-8e71-b15bbdd9cadd .concept}

In Acumatica ERP, you run project billing to automatically generate customer invoices based on the accounting data related to the projects.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Select the type of the document to be prepared
-   Make sure that the project is ready to be billed

## Applicable Scenarios { .section}

For each project, you decide which type of the project invoice is prepared during project billing. Once a project is ready to be billed, you run the project billing procedure.

## Project Invoice Workflow { .section}

The type of the document that the system will generate during the project billing procedure depends on the state of the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   If the check box is selected, the system creates a pro forma invoice and opens it on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form. For more information, see [Pro Forma Invoices: General Information](Projects_Pro_Forma_Invoices_GeneralInfo.md).
-   If the check box is cleared, the system creates an accounts receivable invoice or credit memo and opens it on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. For more information about billing projects with credit memos, see [Project Invoice Correction: Credit Memos for Projects](Projects_Correcting_Project_Invoices_Credit_Memo_Billing.md).

The date of the created document is the **Next Billing Date** specified for the project on the **Summary** tab \(**Billing and Allocation Settings** section\). If *On Demand* is specified as the billing period of the project \(in the same section of this tab\), the date of the prepared invoice is the current business date.

## Billing Process Preparation { .section}

The billing procedure in Acumatica ERP is straightforward and depends on the type of the step of the billing rule that is specified for each project task on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form as follows:

-   For the *Time and Material* steps of the billing rules, the system selects all the project transactions and generates an invoice for the customer based on these transactions and the billing rule.
-   For the *Progress Billing* steps of the billing rules of project tasks, the system generates an invoice with the billable project revenue.

For the billing process for a project to be run successfully, the project must meet the following criteria:

-   The project is an external project \(that is, a project associated with a customer\).
-   The project status should be *Active*, *Completed*, or *Suspended*.
-   The status of the project tasks should be *Active* or *Completed*, and a billing rule should be specified for these tasks.
-   The project should have a basis for billing, such as a billable line of the revenue budget associated with the task for progress billing, or an unbilled project transaction associated with the task within this billing period for time and material billing.
-   The steps of the billing rule should be applicable to the billing basis. For example, the billing rule of a task that is supposed to be billed by a revenue budget line should have a *Progress Billing* step.
-   The rate table must be specified for a project task if the related billing rule contains the *@Rate* parameter.
-   Sales prices must be configured for non-stock items if the related billing rule contains the *@Price* parameter.

## Projects Pending Billing { .section}

You run the project billing procedure for a project that is pending billing by opening the project on the [Projects](PM_30_10_00.md) \(PM301000\) form and clicking **Run Billing** on the form toolbar. The billing procedure can be run only for a project that is pending billing—that is, only if at least one of the following exists for the project:

-   A revenue budget line billed by amount with a nonzero **Pending Invoice Amount** on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form; the amount may be positive or negative.
-   A revenue budget line billed by quantity with a nonzero **Pending Invoice Quantity** on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form.
-   A revenue budget line with a **Pending Invoice Quantity** of *0* on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) form if the corresponding billing rule has the **Create Lines with Zero Amount and Quantity** check box selected in the progress billing step on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form. \(With this check box selected, the system performs billing for all revenue budget lines, including those that have pending values of *0*\).
-   An amount postponed to the next billing from a pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form for which the corresponding accounts receivable invoice is released.
-   A project task for which a recurring billing item is defined on the **Recurring Billing** tab of the [Project Tasks](PM_30_20_00.md) \(PM302000\) form. For more information, see [Project Billing Preparation: Recurring Billing](Projects_Project_Billing_Preparation_Recurring_Billing.md).
-   An unbilled project transaction that is ready to be billed on the invoice date—that is, the date of the transaction is not later than the invoice date. Transactions with a date the same as the invoice date are billed if *Include Transactions with Billing Date* is selected in the **Billing Cutoff** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form; if *Include Only Transactions Before Billing Date* is selected, the system skips the transactions with a date on the billing date.

    The invoice date is for all the projects except those that are billed on demand is the **Next Billing Date** on the [Projects](PM_30_10_00.md) form \(in the **Billing and Allocation Settings**section of the **Summary** tab\); for the projects that are billed on demand \(that is, for which the **Billing Period**, which is specified in the same section of the form, is *On Demand*\), the invoice date is the business date.


You can also run billing for multiple projects on the [Run Project Billing](PM_50_30_00.md) \(PM503000\) form. For more information, see [Project Billing Preparation: Mass Processing](Projects_Project_Billing_Preparation_MassProcessing.md).

**Parent topic:**[Preparing Projects to Billing](../UserGuide/Projects_Project_Billing_Preparation_Mapref.md)

