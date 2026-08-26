# Tax Entry from GL: General Information {#_994cb004-6439-428a-b4c4-31646ceb5a82 .concept}

In Acumatica ERP, you can configure automatic tax calculation in documents that you create in the system. You can also create tax-related transactions manually in the general ledger. These transactions update the balances of the GL accounts specified for each journal entry of the transaction.

**Attention:** The manual creation of tax-related transactions is available only if the *Tax Entry from GL Module* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives {#section_rph_fjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Configure a withholding tax
-   Process a taxable transaction with the new tax in the general ledger

## Applicable Scenarios {#section_tph_fjv_vxb .section}

You create taxable transactions directly in the general ledger if you are required to withhold taxes from GL transactions and create tax-related transactions manually.

## Manual Creation of a Tax-Related Journal Transaction {#section_vph_fjv_vxb .section}

To create a tax-related journal transaction, you use the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. On this form, when you enter transaction data, you select the **Create Tax Transactions** check box, which causes the additional **Tax ID** and **Tax Category** columns to appear in the table.

Each tax-related transaction should contain at least three journal entries:

-   A journal entry that represents the taxable amount. \(This amount can be recorded, for example, to any expense or income account, depending on the tax type.\)
-   A journal entry that represents the tax amount.
-   A journal entry that represents the document amount. \(This amount can be recorded, for example, to the Accounts Payable account.\)

With a transaction entered in the general ledger, the system does not calculate taxes; it uses the tax amount entered by the user. For details, see [Tax Entry from GL: Generated Transactions](Taxes_Tax_Entry_from_GL_Transactions.md).

## Calculation of Tax Amounts {#section_zph_fjv_vxb .section}

When you specify the account \(and subaccount, if applicable\) to which the tax amount is recorded in the **Account** \(and **Subaccount**, if any\) column on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, the system automatically enters the tax associated with this account \(and subaccount, if any\) in the **Tax ID** column.

**Attention:** The account \(and subaccount, if any\) associated with the tax has to be specified in the **Tax Payable Account** \(and **Subaccount**\) or **Tax Claimable Account** \(and **Subaccount**\) box, depending on the tax type, on the **GL Accounts** tab on the [Taxes](TX_20_50_00.md) \(TX205000\) form during configuration of the tax in the system.

While you are adding a journal entry, you can overwrite the default **Tax ID** value.

## Calculation of Taxable Amounts {#section_dqh_fjv_vxb .section}

When you select the account to which the taxable amount will be recorded in the **Account** column on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, the system automatically enters the tax category associated with the general ledger account. The associated tax category is the one that is assigned to the selected general ledger account in the **Tax Category** column on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

**Attention:** Before you create a tax-related transaction, a tax category has to be specified for the general ledger account that you select in the **Account** column.

## Entry of Amounts to the Tax Report {#section_gqh_fjv_vxb .section}

The tax-related amounts will be reflected in the appropriate tax report only if the number of the document related to the journal transaction is specified for each journal entry in the **Ref. Number** column of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

If the **Ref. Number** column is empty, the tax and taxable amounts will not be reflected in the tax report. For details on tax reports, see [Tax Report for VAT: General Information](Taxes_Preparing_a_Tax_Report_VAT_GeneralInfo.md).

**Tip:** You can define this column to be mandatory by selecting the **Require Ref. Numbers for GL Documents with Taxes** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Creation of a Tax Transaction Involving Multiple Branches { .section}

If the lines of tax-related journal transaction that you create on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form involve multiple branches of the company, you enter the lines as follows:

1.  You enter the lines related to one branch and make sure that the transaction is balanced. You specify the same reference number in the **Ref. Number** column for the lines with this branch. This column contains the reference number of the external or internal document associated with these lines.
2.  You enter the lines related to another branch and make sure that the transaction is balanced. You specify a separate reference number \(that is, different than one you have specified for lines in other branches\) in the **Ref. Number** column for the lines with this branch. You then repeat this step if additional branches are involved.

The following table shows an example of a GL transaction with lines belonging to the *HEADOFFICE* and *RETAIL* branches.

|Branch|Account|Ref. Number|Debit|Credit|Tax ID|Tax Category|
|------|-------|-----------|-----|------|------|------------|
|*HEADOFFICE*|*69500*|`0001`|*10,000*| | |*PAYROLL*|
|*HEADOFFICE*|*24050*|`0001`| |*620*|*PAYROLL*| |
|*HEADOFFICE*|*23015*|`0001`| |*9,380*| | |
|*RETAIL*|*69500*|`0002`|*5,000*| | |*PAYROLL*|
|*RETAIL*|*24050*|`0002`| |*310*|*PAYROLL*| |
|*RETAIL*|*23015*|`0002`| |*4,690*| | |

As an alternative to entering tax-related transactions on the [Journal Transactions](GL_30_10_00.md) form, you can record taxes by using the [Tax Adjustments](TX_30_10_00.md) \(TX301000\) form. For details, see [Sales Tax Adjustments: General Information](Taxes_Creating_Tax_Adjustment_GeneralInfo.md).

**Parent topic:**[Entering Taxes from the General Ledger](../UserGuide/Taxes_Entering_Taxes_from_GL_Mapref.md)

