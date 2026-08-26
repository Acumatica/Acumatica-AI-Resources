# Post and Consolidation Account Settings {#_d91a2cb0-fd9c-44b7-a037-75505f130d9a .concept}

On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you can specify optional settings for accounts \(in addition to the basic settings of account identifier, class, type, and description\). These optional account settings include the posting option and settings for consolidation units.

In this topic, you will read about the optional settings of accounts.

## Specifying the Post Option {#section_nx2_mjv_vxb .section}

The post setting defines the level of the details that are posted to the account. By default, if you upload the chart of accounts to the system, the *Summary* posting option is set for each account in the **Post Option** column of the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form. With this option, amounts that are posted to the account \(and subaccount, if any\) are summarized. That is, if in a transaction, multiple rows specify the same account and branch \(if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\), then in the General Ledger batch, these rows will be combined into one row with the summarized amount.

To post multiple amounts in a transaction to a selected account separately, you select the *Detail* option in the **Post Option** column of the [Chart of Accounts](GL_20_25_00.md) form.

**Attention:** If the **Post Summary on Updating GL** check box is cleared on the Preferences form of a particular module, the journal entries will be posted separately to the account, regardless of which option is specified for the account on the [Chart of Accounts](GL_20_25_00.md) form.

## Specifying Consolidation Accounts {#section_rx2_mjv_vxb .section}

If a company is a consolidation unit in a parent company, you need to map the company's accounts to parent company's accounts. To do so, in the **Consolidation Account** column of the [Chart of Accounts](GL_20_25_00.md) form, you specify the external General Ledger account from the parent company’s chart of accounts to which the balance of the account will be exported in the process of consolidation. This value is not validated by the system, and no input mask can be set for this column. For details on consolidations, see [GL Consolidation: Account Mapping](Finance_GL_Consolidation_Config_AccountMapping.md) and [GL Consolidation: To Prepare the Consolidation Unit](Finance_GL_Consolidation_To_Prepare_Consol_Unit.md).

## Specifying Other Settings {#section_tx2_mjv_vxb .section}

If needed, you can also do the following to specify other settings for an account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form:

-   To allow only transactions with quantities and units of measure specified to be posted to the account, select the check box in the **Require Units** column for the account. For details on units of measure, see [Units of Measure: General Information](UOMs_GeneralInfo.md).
-   If your company uses subaccounts for recording transactions, to set the default subaccount to be specified automatically by the system when the account is selected, select the check box in the **Use Default Subaccount** column. For details on subaccounts, see [Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md).

    **Note:** The default subaccount used is the one defined in the **Default Subaccount** on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

-   If you use project management, to track the project budget and balances, you can assign an account group to the account in the **Account Group** column. For details, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).
-   To set up the automatic calculation of the taxable amount for the journal entry, you specify a tax category in the **Tax Category** column. For details on tax categories, see [Tax Zones and Tax Categories](../ImplementationGuide/Taxes_TaxZones_and_Categories_Mapref.md).

    **Note:** The type of the account must correspond to the type of the tax specified in the tax category. For example, a tax category representing a sales tax could not be associated with an expense account, and a tax category representing a value-added tax \(VAT\) accumulated on purchases could not be associated with an income account.

-   To set up a user-defined order of accounts on the list, you specify an integer that indicates the order in which the account appears on the list in the **COA Order** column.

    **Note:** You can set up the order of accounts only if the **Custom Chart of Accounts Order** option button is selected in the **Chart of Accounts Order** area on the [General Ledger Preferences](GL_10_20_00.md) form.


**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

