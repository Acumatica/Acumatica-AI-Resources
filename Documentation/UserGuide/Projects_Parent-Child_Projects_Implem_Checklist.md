# Parent-Child Project Management: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the management of parent-child projects, including settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially manage a set of parent-child projects, you make sure that the needed features have been enabled, settings have been specified, and entities have been created. The following checklist summarizes the criteria you need to check.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Parent-Child Projects*
-   *Inventory and Order Management* if you want to use purchase orders
-   *Subcontracts* if you want to use subcontracts

</td></tr><tr><td>

[Billing Rules](PM_20_70_00.md) \(PM207000\)

</td><td>

Billing rules are configured as described in the topics of the [Creating Billing Rules](Billing_Rules_Mapref.md) chapter. Also, make sure that the appropriate billing rules are assigned to needed project tasks.

</td></tr><tr><td>

[Projects](PM_30_10_00.md) \(PM301000\)

</td><td>

-   To cause pro forma invoices to be created during the project billing, select the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   To cause accounts receivable invoices to be created during the project billing, clear the **Create Pro Forma Invoice on Billing** check box on the **Summary** tab of the [Projects](PM_30_10_00.md) form.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of the parent-child project management by specifying additional settings as follows:

-   To use cost codes in parent-child projects and roll up child project transactions to parent budget lines with cost codes, enable the *Cost Codes* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If this feature is enabled, you can map cost codes in rollup rules and link child project transactions to parent budget lines by using parent cost codes.
-   To track commitments from purchase orders and subcontracts in the project cost budget, select the **Internal Cost Commitment Tracking** check box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. This setting affects whether commitments from project-related purchase orders and subcontracts are tracked in the cost budget before the related project transactions are created.
-   To include project transactions whose date is the same as the billing date in time and material billing, select *Include Transactions with Billing Date* in the **Billing Cutoff** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. If *Include Only Transactions Before Billing Date* is selected, the system skips transactions whose date is the same as the billing date.
-   To affect how rolled-up actual values from child projects are used in progress billing, create the revenue percentage calculation rule assigned to the parent project or parent project tasks. On the [Revenue Percentage Calculation Rules](PM_20_65_00.md) \(PM206500\) form, the rule defines how the system calculates the recommended completion percentage for revenue budget lines, including whether cost budget lines are grouped by revenue task, project task, inventory item, or cost code.

## Known Process Limitations

The current parent-child project functionality has the following limitations:

-   **Only a two-level hierarchy is supported**. A child project can't be a parent to its own child projects. If you need to break work down further, add more child projects to the parent project.
-   **A matching project currency and base currency are required**. A parent project and its child projects must all use the same project and base currencies. You can't link projects with different currencies.
-   **Commitments and change orders aren't listed in the parent project**. Only cost and revenue project transactions are rolled up from child projects and are reflected in the parent project. Purchase orders, subcontracts, and change order amounts and quantities remain at the child project level—that is, they’re listed on the **Commitments** and **Change Orders** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   **Each child project can have only one AR invoice**. You can't generate an AR invoice that combines billable amounts from multiple child projects billed independently. Each independently billed child project must have its own invoice.

**Parent topic:**[Managing Parent-Child Projects](../UserGuide/Projects_Parent-Child_Projects_Mapref.md)

