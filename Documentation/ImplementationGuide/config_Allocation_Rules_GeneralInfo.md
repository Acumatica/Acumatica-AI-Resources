# Allocation Rules: General Information {#_3a030bc1-dec7-4c97-bcd2-59b1dfe83bff .concept}

In Acumatica ERP, you can create and maintain allocation rules, which define how allocations are to be performed, and perform allocations automatically based on your rules.

## Learning Objectives { .section}

In this chapter, you will learn how to configure allocation rules that will distribute amounts based on the following:

-   User-defined coefficients \(weight\)
-   Percentages
-   A dynamic ratio of the period-to-date account balances
-   Budget data

## Applicable Scenarios { .section}

You create an allocation rule to automate the process of periodically distributing amounts posted to a particular account–subaccount pair among different account–subaccount pairs. For example, suppose that users post expenses in bills to one account–subaccount pair instead of splitting these expenses among multiple account–subaccount pairs. You can create a rule to distribute these expenses.

## Allocation Rule Settings { .section}

To distribute amounts, you have to configure allocation rules on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. You generally specify the following information in each allocation rule:

-   The branch for which the allocation is performed \(if the company has multiple branches\)
-   The periods when the allocation can be applied
-   The methods for distributing the allocation amount to destination accounts \(for details, see [Allocation Rules: Distribution Methods](config_Allocation_Rules_Distribution_Methods.md)\)
-   The ledgers to be used for the allocation
-   The source accounts and subaccounts
-   The destination accounts and subaccounts

You can also perform allocations between multiple branches if both of the following conditions are met:

-   The *Inter-Branch Transactions* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
-   All these branches are specified for the actual ledger on the **Branches** tab of the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form.

**Important:** If the *Projects* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, keep in mind that the GL allocation mechanism does not support projects; it also does not support allocations to GL accounts that are included in account groups.

## Allocation Periods {#_15800d24-47d0-4de9-9498-15e5479c2478 .section}

You define the post periods for an allocation rule by specifying the periods in the **Start Period** and **End Period** boxes on the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. The allocation rule is applied to each period of the range defined by the start and end periods. You can leave the **End Period** box blank if you are not planning to stop using the rule.

If the allocation needs to be performed every financial year for the same periods \(for example, in the last period of each year\), you can set the allocation to be recurring by selecting the **Recurring** check box. Recurring transactions can be run for the years after the year of the end period.

## Ledgers for Performing Allocations {#_05de8c83-2509-46e3-8f20-230fe9c84ef4 .section}

On the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you have to specify at least the following ledgers:

-   In the **Allocation Ledger** box, the ledger to which journal entries generated for the allocation are posted
-   In the **Source Ledger** box, the ledger that is used to calculate the amount to be allocated

If you are going to distribute amounts by using a dynamic ratio, in the **Base Ledger** box, you can specify the ledger that is used to calculate the proportions for distributing allocation amounts among the destination accounts. If you leave this box empty, the ledger that is specified in the **Allocation Ledger** box is used for calculating proportions.

## Allocation Methods {#_3ad07d01-8a0d-41aa-ac2a-3efb76accc55 .section}

In the **Allocation Method** box of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you can select the method that defines how the allocation amount should be collected from the source accounts as follows:

-   If you want the period-to-date amount to be distributed during the allocation process, select *By Account PTD*.
-   If you want the amount that has been accumulated on accounts since the last allocation to be distributed during the allocation process, select *From Prev. GL Allocation*.

## Source Accounts and Subaccounts { .section}

You specify the source accounts and subaccounts of an allocation rule on the **Source Accounts** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. You can select the source accounts by specifying each account and subaccount individually or by specifying a group of accounts or subaccounts.

To select the source accounts and subaccounts by groups, you can use grouping masks. For details, see [Allocation Rules: Examples of Using Account and Subaccount Masks for Allocations](config_Allocation_Rules_Accounts.md).

## Contra Accounts and Subaccounts { .section}

You can configure the system to deduct allocation amounts from accounts and subaccounts that differ from the source accounts and subaccounts. To do this, you specify contra accounts and subaccounts for each account and subaccount in the **Contra Account** and **Contra Subaccount** columns on the **Source Accounts** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. The source accounts and subaccounts will then be used to determine the total allocation amount, but the amount to be distributed will be copied from the contra accounts and subaccounts.

You have to select contra accounts and subaccounts explicitly by selecting them from the list. You cannot define grouping masks for contra accounts and subaccounts.

## Limits for Allocation Amounts {#_8f3f86af-9f3f-4a50-b0c1-2a4498e8409d .section}

The amount to be allocated is copied from all the specified source accounts \(the allocation pool\).

If the source accounts are specified explicitly on the **Source Accounts** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you can specify the individual maximum amount \(**Amount Limit**\) or a percentage of it \(**Percentage Limit**\) for each source account. If an amount limit is specified, the account balance will be allocated completely unless it exceeds the limit. If the account balance exceeds the limit, only the amount limit will be allocated.

If accounts are selected by a group mask, the limit amount or percent \(depending on which is specified\) will be the same for each of the selected accounts.

## Destination Accounts and Subaccounts { .section}

On the **Destination Accounts** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you specify the destination accounts and subaccounts to which the allocation amount will be distributed. In addition to specifying the destination accounts and subaccounts, for the distribution methods that use a dynamic ratio, you can specify the base accounts and subaccounts to be used to calculate a proportion for distributing the allocation amount among the destination accounts. For details, see [Allocation Rules: Distribution Methods](config_Allocation_Rules_Distribution_Methods.md).

If the **Allocate Source Accounts Separately** check box is selected on the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) form, you can leave the accounts and subaccounts empty on the **Destination Accounts** tab. In this case, in the generated transactions, the system will use the accounts and subaccounts specified on the **Source Accounts** tab. For details, see [Allocation Rules: Allocation Between the Same Accounts and Subaccounts](config_Allocation_Rules_Reallocation_Between_Same_Subaccounts.md).

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

