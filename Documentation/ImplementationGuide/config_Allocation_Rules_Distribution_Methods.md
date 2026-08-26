# Allocation Rules: Distribution Methods {#_0fe6e69f-2b96-49de-8e8d-8a40693311b4 .concept}

To define how an allocation amount should be distributed among the destination accounts, you should select a distribution method when you create an allocation rule on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. Depending on the distribution method, the allocation ratio can be fixed for destination accounts or can be calculated dynamically by period-to-date \(PTD\) or year-to-date \(YTD\) balances of the base or destination accounts.

In this topic, you will read about distribution methods based on fixed and dynamic ratios.

## Methods Based on a Fixed Distribution Ratio { .section}

To distribute amounts by a fixed ratio, you select the distribution method in the **Distribution Method** box on the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form as follows:

-   To distribute the source amount by percentages, you select *By Percent*. You then specify the percent that is distributed to each account–subaccount pair in the **Weight/Percent** column of the **Destination Accounts** tab. The percents that you specify must add up to 100 percent.
-   To distribute the source amount by user-defined coefficients, you select *By Weight*. You then have to specify the ratio that is distributed to each account–subaccount pair in the **Weight/Percent** column of the **Destination Accounts** tab. You can use any numbers to define a ratio.

## Methods Based on a Dynamic Distribution Ratio {#_cf12551a-7a35-4569-b988-7ec69d60acd4 .section}

To distribute amounts by a dynamic ratio, you select the distribution method in the **Distribution Method** box on the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form as follows:

-   To distribute the source amount proportionally to year-to-date balances, you select *By Dest. Account YTD*.
-   To distribute the source amount proportionally to period-to-date balances, you select *By Dest. Account PTD*.

For these methods, you specify ledgers, accounts \(and subaccounts, if they are used in your system\), and branches as follows:

-   To distribute the allocation amount proportionally to the balances of accounts \(and subaccounts\) in a ledger that differs from the selected allocation ledger, you specify the ledger in the **Base Ledger** box on the **Allocation** tab. On the **Destination Accounts** tab, you then have to specify the accounts \(and subaccounts\) whose balances \(which are posted to the base ledger under the base branches\) should be used to calculate the proportion for distributing the allocation amount among the destination accounts of the destination branches.
-   To distribute the allocation amount proportionally to the account balances in the ledger that is specified in the **Allocation Ledger** box, the **Base Ledger** box should be left empty.
-   To distribute the allocation amount proportionally to the balances of accounts \(and subaccounts\) of the destination accounts in the allocation ledger, you do not need to specify the base branch, ledger, or accounts.

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

