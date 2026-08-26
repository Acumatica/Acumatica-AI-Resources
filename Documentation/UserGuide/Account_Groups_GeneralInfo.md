# Account Groups: General Information {#_f8734904-a3f6-4cef-820b-330894038634 .concept}

An account group is an entity in Acumatica ERP that you map to a subset of general ledger accounts and then specify in project-related documents. Because they are mapped to general ledger accounts, account groups facilitate transfer of the project-related financial information between the general ledger transactions and project transactions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare the system for the creation of account groups
-   Create an account group and map accounts to this group
-   Review the chart of accounts and find the account group associated with a particular GL account

## Applicable Scenarios { .section}

You may need to create an account group in the following cases:

-   When you are initially configuring project accounting functionality
-   When you are going to track a particular type of expenses or another type of project balances separately

## Types of Account Groups { .section}

You create account groups on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. An account group can belong to one of the following types: *Asset*, *Liability*, *Expense*, *Income*, or *Off-Balance*. An account group may include any number of general ledger accounts of particular types:

-   An account group of the *Asset* or *Liability* type may include asset or liability accounts. Transactions posted to these account groups are displayed on the [Project Budget](PM_30_90_00.md) \(PM309000\) form and on the **Balances** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, but are not displayed on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) form.
-   An account group of the *Income* or *Expense* type may include accounts of any type \(income, expense, asset, or liability\). Transactions posted to these account groups are displayed on the [Project Budget](PM_30_90_00.md) form, on the **Balances** tab of the [Projects](PM_30_10_00.md) form, and on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) form.
-   Account groups of the *Off-Balance* type are not mapped to any general ledger accounts.

    You can use account groups of the *Off-Balance* type to collect and track project statistical and other information that is unrelated to finance. The transactions posted to account groups of this type will not update the general ledger.

    Example 1: You might define an off-balance group for unrecognized revenue to display the amount in your project reporting, without posting it to the general ledger until the actual billing is done and thus the revenue is recognized.

    Example 2: You can create an off-balance group for recording all work hours spent by employees on the project if you want to know the total amount associated with the number of work hours spent, but you do not want to post this amount to the general ledger. In addition, you can select the **Expense** check box on the [Account Groups](PM_20_10_00.md) form to track the amounts in the off-balance account group as expenses. The system displays the transactions posted to this account group on the [Project Budget](PM_30_90_00.md) form and on the **Balances** and **Cost Budget** tabs of the [Projects](PM_30_10_00.md) form.


## Recommendations for Creating Account Groups { .section}

Before you define account groups, you should identify the accounts that will be used in project-related transactions. We recommend that you consider the following rules and limitations as you plan the account groups you will create:

-   Each general ledger account can be mapped to only one account group.
-   The following accounts should not be included in account groups:
    -   An asset account that you might want to use as a control account for the AR subledger. For such an account, *AR* is selected in the **Control Account Module** box on the [Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\) form. This can be, for example, an accounts receivable account that is debited by customer invoices.
    -   A liability account, such as a purchase accrual account that you might want to include in an account group of the *Expense* type.
    -   A liability account that you might want to use as a control account for the AP subledger. For such an account, *AP* is selected in the **Control Account Module** box on the [Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) form. This can be an accounts payable account that is credited by vendor bills, or a retainage payable account.
    -   An account that is linked to a cash account. On the [Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) form, this account has the **Cash Account** check box selected.
-   Allocation and billing rules select transactions by account groups. If transactions of two accounts should follow different allocation or billing rules or use different rates, these two accounts should be included in different account groups. If the transactions usually use the same rate, consider including their accounts in one group.

**Parent topic:**[Creating Account Groups](../UserGuide/Account_Groups_Mapref.md)

