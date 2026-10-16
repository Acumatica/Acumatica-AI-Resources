# Parent-Child Project Configuration: Rollup Rules

To configure rollup of project transactions from child projects to a parent project, you create rollup rules on the [Rollup Rules](../UserGuide/PM_20_71_00.md) \(PM207100\) form. A rollup rule defines how transactions from child projects are associated with the parent project. Along with other settings, you specify whether the rule applies to both cost and revenue transactions or to cost transactions only.

## Creating a Cost-Only Rollup Rule

You use a **cost-only rollup rule** when the parent project represents the main contract for consolidated cost control, billing, or reporting and child projects are used as cost centers. In this case, costs from the child projects are rolled up to the parent project, while revenue and billing are handled in the parent project.

When you create a cost-only rollup rule, you select *Cost* in the **Transactions for Rollup** box on the [Rollup Rules](../UserGuide/PM_20_71_00.md) \(PM207100\) form. With this setting, the system rolls up only cost-related project transactions from the child project to the parent project.

In the **Account Groups** table, you map source account groups from child projects to target account groups of the parent project. For example, you can map:

-   The account groups used for labor, materials, and subcontract costs to a parent account group for direct costs
-   The account groups used for miscellaneous costs—such as administrative or travel—to a parent account group for indirect costs

In the **Cost Codes** table, you map source cost codes from child projects to target cost codes of the parent project.

If the parent and child projects have the same account group or cost code, you don't need to specify it in the rule. If no mapping is specified, the system uses the source account group or cost code as the parent account group or cost code.

## Creating a Cost-and-Revenue Rollup Rule

You use a **cost-and-revenue rollup rule** when the parent project is used as a reporting container and child projects keep their own revenue, costs, and billing. In this case, both cost and revenue transactions can be rolled up to the parent project for consolidated reporting.

When you create a cost-and-revenue rollup rule, you select *Cost and Revenue* in the **Transactions for Rollup** box on the [Rollup Rules](../UserGuide/PM_20_71_00.md) \(PM207100\) form. With this setting, the system rolls up project transactions associated with expense and income account groups, as well as off-balance account groups for which the **Expense** check box is selected.

In the **Account Groups** table, map source account groups from child projects to target account groups of the parent project. For example, you can map:

-   The account groups used for project revenue to the corresponding revenue account group of the parent project
-   The account groups used for labor, materials, and subcontract costs to a parent account group for direct costs
-   The account groups used for miscellaneous costs—such as administrative or travel—to a parent account group for indirect costs

In the **Cost Codes** table, you map source cost codes from child projects to target cost codes of the parent project.

If the parent and child projects have the same account group or cost code, you don't need to specify it in the rule. If no mapping is specified, the system uses the source account group or cost code as the parent account group or cost code.

**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

