# Parent-Child Project Management: Billing from the Parent or Child Project

You select the billing project based on whether the child project is only a cost center for the parent contract or an independent part of the work that must keep its own billing. Parent-child project billing depends on the **Billing Project** setting of the child project on the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   *Parent Project*: Rolled-up child project cost transactions are used in parent-level billing
-   *Current Project*: The child project keeps its own billing, and its rolled-up transactions are used in the parent project for reporting

## Billing a Parent Project for Time and Material

After the child project transactions have been released and rolled up to the parent project, the costs can be billed from the parent project according to its billing rules. For time and material billing with pro forma invoices, when you run project billing for the parent project on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system creates a pro forma invoice for the parent project.

On the **Time and Material** tab of the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, you can review the lines generated from the rolled-up child project transactions.

To review the source of a pro forma invoice line, you can select this line and click **View Transaction Details** on the table toolbar. In the dialog box that opens, you can view:

-   The child project transaction used to create the line
-   The child project in the **Project** column
-   The project from which billing is performed in the **Parent Project** column

To view the project descriptions as well, you can add the **Project Description** and **Parent Project Description** columns \(which are hidden by default\) to the visible columns.

**Tip:** If you want to view rolled-up unbilled transactions from child projects, click **Upload Unbilled Transactions** on the table toolbar. In the dialog box that opens, you can view:

-   The child project in the **Project** column
-   The parent project used for billing in the **Parent Project** column
-   The account group assigned to the transaction in the parent project after rollup in the **Parent Account Group** column

After you review the pro forma invoice, you can remove it from hold and release it, which creates the corresponding AR invoice for the parent project. When you release the AR invoice, the rolled-up child project transactions are marked as billed and the parent project's revenue budget is updated.

For details about time and material billing, see [Time and Material Billing: General Information](Projects_Billing_for_Time_and_Material_GeneralInfo.md).

## Billing a Parent Project by Progress

If the parent project uses progress billing with automated calculation of completion percentage, the system can include the actual amounts and quantities rolled up from child projects when it calculates the completed percentage for the parent project revenue budget. This depends on the rule defined on the [Revenue Percentage Calculation Rules](PM_20_65_00.md) \(PM206500\) form.

When you run project billing for the parent project on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system uses the calculated completed percentage to create a pro forma invoice for the parent project.

On the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form, you can review the progress billing line generated for the parent project on the **Progress Billing** tab. If you need to generate a substantiated billing report for the pro forma invoice, use the *Linked Cost Transactions* side panel to link the progress billing line to the supporting cost transaction line, including rolled-up child project transaction lines.

For details, see [Progress Billing: General Information](Projects_Billing_Project_by_Progress_GeneralInfo.md) and [Progress Billing: Automated Revenue Percentage Calculation](Projects_Billing_Project_by_Progress_Auto_Revenue_Percentage_Calculation.md).

## Billing from a Child Project

If *Current Project* is selected in the **Billing Project** box for a child project on the [Projects](PM_30_10_00.md) \(PM301000\) form, the child project keeps its own billing. You use this option when the child project represents an independent part of the work with its own revenue budget, costs, and billing process, while the parent project is used for consolidated reporting.

In this case, when you run project billing for the child project, the system processes the child project transactions according to the billing rules and billing settings of the child project. The resulting pro forma invoice or AR invoice is created for the child project.

After the child project transactions are rolled up to the parent project, the rolled-up values update the parent project budget and can be reviewed in the parent project’s reports and inquiries. These rolled-up transactions are not billed from the parent project.

**Parent topic:**[Managing Parent-Child Projects](../UserGuide/Projects_Parent-Child_Projects_Mapref.md)

