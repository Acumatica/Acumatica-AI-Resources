# Statistical Ledgers {#_e0c11116-ad1b-4400-a43f-ea07a150d1d2 .concept}

A ledger of the *Statistical* type can be used to store statistical information about a branch's operations. Each organization can have multiple statistical ledgers, each for a different type of information. If your organization has multiple branches, all branches can use the same statistical ledgers with the information in ledgers arranged by branch, or each branch can use separate statistical ledgers created for the branch.

In this topic, you will read about using and updating data in statistical ledgers.

## Statistical Ledger Usage {#section_im2_mjv_vxb .section}

You can use statistical data to better understand and analyze your company's financial data. Statistical ledgers can be a source of data for reporting, for calculation of allocations, or for consolidations. With Acumatica ERP, your organization can define an unlimited number of statistical ledgers to store statistical information.

## Entry Update in a Statistical Ledger {#section_km2_mjv_vxb .section}

The system uses the same chart of accounts to post transactions to a statistical ledger as to an actual ledger. Depending on the policies established in your organization, you can create special accounts to be used for statistical information and use only those accounts with statistical ledgers, or you can use the same accounts as you use for financial data. Balances for each account are calculated by a ledger. For details on accounts, see [Modification of the Chart of Accounts](GL__CON_Modification_of_Cart_of_Accounts.md).

You enter statistical data into ledgers through batches of journal entries. You can create batches of statistical entries on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. When you create journal entries for a statistical ledger, you can specify the quantities of goods or services and the units of measure \(in which the quantities are measured\), along with monetary amounts. To make statistical data on reports more useful, follow your organization's policies on selecting the units of measure for specific goods or services. For details, see [Processing Transactions](Finance_Processing_Batch_Mapref.md).

A batch of journal entries to be posted to a statistical ledger may be unbalanced—that is, it may not comply with the double-entry bookkeeping rule and may have a total credit amount that is not equal to the total debit amount even if the **Validate Batch Control Totals on Entry** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

For batches of journal entries containing statistical data for a statistical ledger, you can apply all the options available for batches intended for actual ledgers: You can create auto-reversing batches and schedule recurring batches by using the [Recurring Transactions](GL_20_35_00.md) \(GL203500\) form. For details, see [Processing Adjusting Transactions](Finance_Adjusting_Transactions_Mapref.md) and [Processing Recurring Transactions](Finance_Recurring_Transactions_Mapref.md).

**Parent topic:**[Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md)

