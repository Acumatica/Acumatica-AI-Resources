# Grouping of Invoices: General Information {#_c17cd234-2ac9-4e6e-a687-fa3ccdaa1e16 .concept}

In Acumatica ERP, the billing procedure provides opportunities for grouping invoices and creating separate invoices depending on the project settings and the settings of billing rules.

## Learning Objectives { .section}

You will learn how to do the following:

-   Configure project billing to create a single invoice for the project or to create multiple separate invoices
-   Bill the project with different billing rules assigned to the project tasks
-   Bill a project task separately from the other tasks of the project
-   Bill project transactions that are associated with particular account groups separately from the other

## Applicable Scenarios { .section}

You bill a project with separate invoices if, for example, the customer has asked you to provide a separate invoice for a particular project task, or if you need to create a separate invoice for a particular type of expenses.

## Grouping of Invoices { .section}

When you run project billing for a particular project, the system creates a single invoice for all project tasks that have the same customer location selected in the **Location** box on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form.

The system also groups the billable amounts into multiple invoices based the originating branch of the invoice prepared during project billing that the system specifies by using the following priority:

1.  If billing is performed with a pro forma invoice, the system first searches for a project branch, which is specified in the **Branch** box on the **Summary** tab \(**Billing and Allocation Settings** section\) of the [Projects](PM_30_10_00.md) \(PM301000\) form. If project is billed with direct accounts receivable invoice, the system ignores the project branch.
2.  The system searches for the shipping branch of the customer location selected in the project task, which is specified in the **Default Branch** box on the **General** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) form, if any. \(Therefore, multiple pro forma invoices with different originating branches can be created for the same project if the project branch is not defined.\)
3.  The system searches for the shipping branch of the default location of the customer specified for the project task.
4.  The system specifies the current branch selected on the Company and Branch Selection menu for the user that ran the project billing.

The system groups invoices to a single invoice for all the billing steps of billing rules for which the same **Invoice Group** is specified on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form. That is, if some project tasks are assigned a billing rule or multiple billing rules with billing steps that have the same invoice group, during the project billing, the system groups the lines created with these billing steps into a separate invoice.

To create a separate invoice for a particular project task, you need to select the **Bill Separately** check box in the **Billing and Allocation Settings** section on the **Summary** tab of the [Project Tasks](PM_30_20_00.md) form.

**Parent topic:**[Grouping Invoices](../UserGuide/Projects_Grouping_Invoices_Mapref.md)

