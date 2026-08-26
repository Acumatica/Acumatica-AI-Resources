# Account Identification {#_a7c2aa12-4303-4e92-a7c6-7626f0cd8efd .concept}

The well-planned design of account identifiers helps users to enter data more quickly and prevent making errors. Acumatica ERP provides segmented keys, which give you flexibility in configuring account identifiers.

In this topic, you will read about planning the identifiers for accounts and configuring the account identifiers in the system.

## Planning Account Identifiers {#section_gt2_mjv_vxb .section}

Account identifiers must comply with the following:

-   Accounting best practices
-   Restrictive rules of financial reporting \(in some countries\)

Identifiers should be designed to indicate the account type to users. For each type of account, plan gaps between numbers so that you can insert new accounts if necessary.

As an example of a way you can structure account identifiers for different types, by using a non-segmented five-character account identifier, you can set rules to associate the first character in the account identifier with the account type as follows: *1* for asset accounts, *2* through *3* for liabilities and equity, *4* for income accounts, and *5* through *9* for expense accounts. Then you might use account identifiers for different account types as follows:

-   10000–19999: Asset accounts
-   20000–39999: Liability and equity accounts
-   40000–49999: Income accounts
-   50000–99999: Expense accounts

With the previous example, you could instead create a two-segment account identifier, reserve the first one-character segment for account type, and reserve the second four-character segment for the account number within the particular type.

To better track the revenue and expenses of your company and keep your chart of accounts of a manageable size, you can use subaccounts along with accounts. For details, see [Subaccounts: General Information](../ImplementationGuide/config_Subaccounts_GeneralInfo.md).

## Configuring Account Identifiers {#section_mt2_mjv_vxb .section}

To define the structure of account identifiers used in the system, you use a *segmented key* that serves as a template when you create an identifier. For details, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

Acumatica ERP provides predefined segmented keys that you can access and edit on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, including *ACCOUNT* for General Ledger accounts. On this form, you can modify the *ACCOUNT* segmented key based on your planned structure. You use this structure when you add new account to the chart of accounts on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

The segmented key contains a string, which can be up to 10 characters. The key can be non-segmented or divided into multiple segments. To reduce errors that could occur when users enter account identifiers, you can set up validation for the identifier segment values, as described in [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

Although you may add a segment to a segmented key or remove it from the key after some accounts have been created, we don't recommend these actions because they may have unpredictable results. Thus, you should plan identifiers in a way that gives you the ability to expand the chart of accounts in the future.

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

