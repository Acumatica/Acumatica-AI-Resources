# Account Groups: Default Account Groups {#_bd784c5e-ce16-4151-9642-a88c0186552e .concept}

When your company uses multiple income or expense account groups, Acumatica ERP inserts the default account groups in:

-   The budget lines of projects, project templates, and change orders
-   The estimation lines of change requests

**Tip:** By using *multiple income or expense account groups*, we mean that you have more than one active account group of the *Income* or *Expense* type on the [Account Groups](PM_20_10_00.md) \(PM201000\) form.

## Account Groups in Revenue Budget Lines of Projects and Project Templates { .section}

**Use case:** Your company has multiple income account groups and tracks a project's revenue budget at the item level. You’re entering the revenue budget lines of a project or project template.

The system fills in the account group based on the item's sales account.

When you add a line and select an item on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) or [Project Templates](PM_20_80_00.md) \(PM208000\) form, the system automatically fills in the **Account Group** column. It inserts the account group of the sales account of the item that you've selected.

**Attention:** The system inserts the default account group—which you can change, if needed—only when the **Account Group** column is empty.

## Account Groups in Revenue Budget Lines of Change Orders { .section}

**Use case:** Your company has multiple income account groups, tracks the project's revenue budget at the item level, and uses change orders. You’re entering the revenue budget lines of a change order.

When you add a line on the **Revenue Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, the system uses the line’s task or the item as the source of the default account group. That is, it populates the **Account Group** column based on the first applicable source:

-   If you select a project task first and its default sales account has an account group, the system inserts this account group.
-   If you select an item first and its sales account has an account group, the system inserts this account group.

**Use case:** Your company has multiple income account groups, tracks the project's revenue budget at the task level, and uses change orders. You are entering the revenue budget lines of a change order.

When you add a revenue budget line and fill in the **Project Task** column, the system inserts the account group of the default sales account of the selected project task.

**Attention:** The system inserts the default account group—which you can override—only when the **Account Group** column is empty.

## Account Groups in Cost Budget Lines of Change Orders { .section}

**Use case:** Your company has multiple expense account groups, tracks the project's cost budget at the item level, and uses change orders. You’re entering the cost budget lines of a change order.

While entering a change order, you can use a task or an item as the source of the account group.

When you add a line and select an item on the **Cost Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form, the system populates the **Account Group** column based on the first applicable source:

-   If you select a project task first and its default expense account has an account group, this account group is inserted.
-   If you select an item first and its COGS account has an account group, this account group is inserted.

**Use case:** Your company has multiple expense account groups, tracks the project's cost budget at the task level, and uses change orders. You’re entering the cost budget lines of a change order.

When you add a cost budget line to a change order and select a task in the **Project Task** column, the system inserts the account group associated with the task’s default expense account.

**Attention:** The system inserts the default account group—which you can override—only when the **Account Group** column is empty.

## Account Groups in Budget Lines of Change Requests { .section}

When you're creating a change request, the system uses either the item or the project task to determine which account group to insert in a budget line.

**Use case:** Your company has multiple expense and income account groups, tracks the project's budget at the item level and uses change requests. You’re adding estimation lines to a change request.

When you add a line on the **Estimation** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form, the system uses the line's task or the item as the source of the default account group. That is, it inserts an account group in both of these columns based on the first applicable source:

-   **Account Group**:
    -   If you select a project task first and its default expense account has an account group, this account group is inserted.
    -   If you select an item first and its COGS account has an account group, this account group is inserted.
-   **Revenue Account Group**:
    -   If you select a revenue task first and its default sales account has an account group, this account group is inserted.
    -   If you select a revenue item first and its sales account has an account group, this account group is inserted.

**Attention:** The system inserts the default account groups—which you can change, if needed—only when the columns are empty.

**Use case:** Your company has multiple expense and income account groups, tracks the project's budget at the task level and uses change requests. You’re entering the estimation lines of a change request.

If you add a line on the **Estimation** tab of the [Change Requests](PM_30_85_00.md) form and select a project task, the system inserts account groups in the following columns:

-   **Account Group**: The account group of the default expense account of the project task
-   **Revenue Account Group**: The account group of the default sales account of the revenue project task

**Attention:** The system inserts the default account groups—which you can change, if needed—only when the columns are empty.

**Parent topic:**[Creating Account Groups](../UserGuide/Account_Groups_Mapref.md)

