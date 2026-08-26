# Time and Material Billing: General Information {#_c27cd276-2ac9-4e6e-a687-fa3ccdaa1e16 .concept}

With time and material billing in Acumatica ERP, you run project billing to automatically generate customer invoices based on the cost project transactions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Run project billing for a project
-   Process the documents that have been generated during the project billing
-   Review how the project’s actual amounts are updated with the billed amounts

## Applicable Scenarios { .section}

You run project billing to prepare an invoice for the customer for the time and material spent on the project. The timing of project billing depends on the project billing period defined for the project.

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

**Parent topic:**[Billing Projects for Time and Material](../UserGuide/Projects_Billing_for_Time_and_Material_Mapref.md)

