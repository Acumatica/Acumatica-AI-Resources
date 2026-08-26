# Chart of Accounts {#_4447f3b0-9ad5-45ea-953a-25305b9b1758 .concept}

In Acumatica ERP, you define the chart of accounts on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form. On this form, accounts are grouped by account types and, independently, by account classes.

In this topic, you will read about defining the chart of accounts, using such account properties as classes and types, and using mandatory accounts in the system.

## Entry of the Chart of Accounts {#section_d52_mjv_vxb .section}

Before you start defining the chart of accounts, you have to review the predefined structure of the *ACCOUNT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form and make any needed changes to it. For details about segmented keys for accounts, see [Account Identification](GL__con_Account_and_Subaccount_Identifiers.md).

You then use the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form to define your company's chart of accounts in the system. When you define the chart of accounts, you assign to each account a name, a unique number by which it can be identified, and a type. Acumatica ERP supports the following types of general ledger accounts:

-   *Asset*
-   *Liability*
-   *Income*
-   *Expense*

We recommend that when you design the account identifiers, you make the numbers correspond to the account types.

You can assign a class to accounts to group the accounts. \(For details on account classes, see the [Account Classes](#_45520be4-5f34-4f67-979c-7ecfaf120fcb) sections of this topic.\) You can also specify optional account-related settings.

You can prepare the chart of accounts in *.xlsx* or *.csv* file and upload the file to the system. Alternatively, you can add accounts one by one, as described in [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md).

## Account Classes {#_45520be4-5f34-4f67-979c-7ecfaf120fcb .section}

For convenient grouping, sorting, and filtering of information associated with general ledger accounts in reports and inquiries, you can associate accounts with account classes on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form. Acumatica ERP provides predefined account classes that can be modified if needed, and you can add new account classes on the [Account Classes](GL_20_20_00.md) \(GL202000\) form. For details on how to create an account class in the system, see [To Create an Account Class](GL__HOW_To_Create_an_Account_Class.md).

## Mandatory Accounts {#section_k52_mjv_vxb .section}

Acumatica ERP supports two special general ledger accounts of the *Liability* type: *Year-to-Date Net Income* and *Retained Earnings*. These accounts must be added to the chart of accounts and specified during general ledger configuration on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For details on these accounts, see [YTD Net Income and Retained Earnings Accounts](GL__con_YTD_Net_Income_and_Retained_Earnings_Accounts.md).

## Cash and Denominated Accounts {#section_m52_mjv_vxb .section}

To track cash transactions in the general ledger module, you link cash accounts to general ledger accounts. For details, see [Cash Account Configuration](CA__CON_CashAccount_Definition.md).

If your company has a bank account in a foreign currency, you have to denominate this account to maintain its balance in two currencies: in the currency of the account and in the base currency. For details, see [Denominated Accounts](GL__con_Denominated_Accounts.md).

## Restriction of User Access {#section_p52_mjv_vxb .section}

In Acumatica ERP, you can configure restriction groups that manages user access to accounts on the [GL Account Access](GL_10_40_00.md) \(GL104000\) form. For details, see [Account and Subaccount Security](RS__con_Account_and_Subaccount_Security.md).

You can use the [Restriction Groups by GL Account](GL_10_40_20.md) \(GL104020\) form to view and manage the restriction groups that have already been created. If any restriction groups have already been configured for accounts, you can quickly invoke this form by clicking **Manage Restriction Groups** on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

