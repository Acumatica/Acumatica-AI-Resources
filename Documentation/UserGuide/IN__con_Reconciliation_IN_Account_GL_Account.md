# Reconciliation of the Cost of Inventory with the Account Balance {#_6e75c202-2d22-4750-a543-26a03c493245 .concept}

You can reconcile the inventory account balance by comparing the account balance calculated by inventory transactions with the account balance calculated by general ledger transactions. If you discover a mismatch, each transaction has to be carefully reviewed, and corrective actions have to be made to eliminate the mismatch. Reconciliation is a recommended practice before period closing to verify the account balance and the transactions in the inventory account.

In this topic, you will find recommendations for performing reconciliation of the inventory account balance with the General Ledger account balance in Acumatica ERP and the list of forms and report you can use for reconciliation. For simplicity, the topic describes the reconciliation process for only one inventory account. If you have multiple accounts, you can repeat the procedure for each inventory account.

## Reconciliation Process in Inventory { .section}

Before starting reconciliation, you must you must decide which periods you want to close. In Acumatica ERP, you reconcile the inventory account balance for the *last activity period* \(that is, the period when the last transaction was performed\) and the *historical periods* \(that is, the periods that precede the last activity period\) separately. For the last activity period, the inventory account balance equals the cost of the inventory on hand.

In Acumatica ERP, you do the following to reconcile the balance of an inventory account in the inventory and general ledger subledgers:

1.  You reconcile the balance of the inventory account for the historical periods, as described in [Reconciliation of the Inventory Account Balance for Historical Periods](#_7385631f-858e-4029-95dd-796b543341aa).
2.  You reconcile the balance of the inventory account for the last activity period, as described in [Reconciliation of the Inventory Account Balance for the Last Activity Period](#_f0d77834-bff7-443d-9403-2bafe45fe193).
3.  If the balances of the inventory and General Ledger accounts disagree, you investigate the reasons. For details, see [Investigation of a Disagreement Between the Balances](#section_ky1_rmb_2t).

For the list of Acumatica ERP forms and reports you can use in the reconciliation process, see [Reports and Forms Used for Reconciliation in the Inventory Subledger](#_eb01d874-4c04-4665-88ba-0ae3880b102b).

## Reconciliation of the Inventory Account Balance for Historical Periods {#_7385631f-858e-4029-95dd-796b543341aa .section}

You reconcile the balance of an inventory account for a historical period as follows:

1.  You find the ending balance of the account in the [Historical Inventory Valuation](IN_61_70_00.md) \(IN617000\) report as follows:
    1.  You run the report with the following parameters:

        -   **Format**: *Summary*
        -   **Start Period**: The historical period
        -   **End Period**: The historical period
        **Note:** If you want to review the account balance for multiple historical periods, in the **Start Period** box, you select the earliest period, and in the **End Period** box, you select the latest period.

    2.  In the **Account/Subaccount Ending Balance** line of the report, you find the ending balance of the account, which you reconcile, and record the balance.
2.  Optional: You review the inventory transactions and the ending balance of the inventory account on the [Inventory Transactions by Account](IN_40_30_00.md) \(IN403000\) form as follows:
    1.  In the Summary area of the form, you do the following:
        -   In the **Inventory Account** box, you select the inventory account for which you want to review transactions.
        -   In the **Period** box, you select the historical period.
        -   You select the **By Financial Period** check box to filter the transactions by post period.
    2.  In the **Ending Balance** column of the last table row, you find the ending balance for the inventory account and compare it with the balance found in the [Historical Inventory Valuation](IN_61_70_00.md) report. The balances should be the same.
3.  You find the ending balance of the inventory account in the General Ledger by using the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) report as follows:
    1.  You run the report with the following parameters:
        -   **Ledger ID**: Select the ledger with the *Actual* type.
        -   **Financial Period**: Select the same historical period, for which you retrieved data from the inventory subledger.
    2.  In the **Ending Balance** column for the inventory account, you find the ending balance.
4.  You compare the ending balance in the [Historical Inventory Valuation](IN_61_70_00.md) report with the balance in the [Trial Balance Summary](GL_63_20_00.md) report. You can receive one of the following results:
    -   The balances agree: This means that the inventory account balance is reconciled for the selected period. You can start reconciling the same account for another historical period or for the last activity period, if the account balance is reconciled for all historical periods.
    -   The balances disagree: You investigate the reasons, as described in [Investigation of a Disagreement Between the Balances](#section_ky1_rmb_2t), and reconcile the account balance once again.

## Reconciliation of the Inventory Account Balance for the Last Activity Period {#_f0d77834-bff7-443d-9403-2bafe45fe193 .section}

After you have reconciled the balance of an inventory account for historical periods, you can start reconciling the balance of this account for the last activity period as follows:

1.  You find the ending balance for the account in the [Inventory Valuation](IN_61_55_00.md) \(IN615500\) report as follows:
    1.  You run the report with *Summary* selected in the **Format** box.
    2.  In the **Total** line of the report, you find the **Total Cost** value, which is the ending balance of the inventory account for the last activity period. You keep this value for further comparison.
2.  Optional: You review the inventory transactions and the ending balance of the inventory account on the [Inventory Transactions by Account](IN_40_30_00.md) \(IN403000\) form as follows:
    1.  In the Summary area of the form, you do the following:
        -   In the **Inventory Account** box, you select the inventory account for which you want to review transactions.
        -   In the **Period** box, you select the last activity period.
        -   You select the **By Financial Period** check box to filter the transactions by post period.
    2.  In the **Ending Balance** column of the last table row, you find the ending balance for the inventory account and compare it with the balance found in the [Inventory Valuation](IN_61_55_00.md) report. The balances should be the same.
3.  You find the ending balance of the inventory account in the General Ledger by using the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) report as follows:
    1.  You run the report with the following parameters:
        -   **Ledger ID**: Select the ledger with the *Actual* type.
        -   **Financial Period**: Select the last activity period.
    2.  In the **Ending Balance** column for the inventory account, you find the ending balance.
4.  You compare the ending balance you found in the [Inventory Valuation](IN_61_55_00.md) report with the balance found in the [Trial Balance Summary](GL_63_20_00.md) report. You can receive one of the following results:
    -   The balances agree: This means that the inventory account balance is reconciled for the last activity period. Now you can close these financial periods in the inventory subledger; for details, see [To Close Financial Periods in Inventory](IN__how_Close_Financial_Period.md).
    -   The balances disagree: You investigate the reasons, as described in [Investigation of a Disagreement Between the Balances](#section_ky1_rmb_2t), and reconcile the account balance once again.

## Investigation of a Disagreement Between the Balances {#section_ky1_rmb_2t .section}

If the balances don't agree, you have to review every transaction in the inventory and general ledger subledgers to find the entries that do not match. You do the following:

1.  Verify that all inventory transactions are posted to the general ledger by using the [Inventory Transactions by Account](IN_40_30_00.md) \(IN403000\) form. If there is an inventory transaction that is missing in the general ledger account on the [Account Details](GL_40_40_00.md) \(GL404000\) form, you can do any of the following:
    -   Review the inventory transaction and make sure the General Ledger transaction has been generated for it. The transactions could be not generated if the **Update GL** check box was cleared when the inventory transaction was released.
    -   Review the [Post Transactions](GL_50_20_00.md) \(GL502000\) form to see if there are any *Unposted* batches of journal transactions. Process the needed transactions to eliminate the discrepancy.
2.  Check whether there are any transactions posted to the inventory account by other subledgers by using the [Account Details](GL_40_40_00.md) form. If there is a general ledger transaction that is missing on the [Inventory Transactions by Account](IN_40_30_00.md) form, open the batch of journal transactions and find the source document for it. Depending on the reason the general ledger entry has been directly processed to the inventory account without the processing from the inventory subledger, you can either correct the general ledger transaction or process the missing inventory transaction in the inventory subledger and reverse the generated batch to equate the balance of the inventory account.

**Note:** If the **Post Option** is set to *Detail* for an inventory account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, detailed journal entries are posted to the inventory account regardless of the inventory settings, and the general ledger entries in the inventory account on the [Account Details](GL_40_40_00.md) form can be matched one to one to the transaction lines on the [Inventory Transactions by Account](IN_40_30_00.md) form. Otherwise, if the summary posting to the inventory account is configured for the general ledger, a number of inventory transaction lines will correspond to one summarized general ledger entry. If you use summary posting to an inventory account in the general ledger, we recommend that you specify unique sequence numbers for different inventory transaction types, so that you can group the inventory transaction lines by transaction type and reference number and match them one to one to the summarized general ledger entries in the inventory account, if needed.

After you have investigated the reasons for the disagreement, you can recalculate the balance of the inventory account, as described in the next section, to view changes in transactions on inventory forms and reports.

## Recalculation of the Inventory Account Balance {#section_kpd_yz1_2t .section}

You can run the inventory validation process on the [Recalculate Inventory](IN_50_50_00.md) \(IN505000\) form to recalculate the inventory account balance for periods after you have corrected inventory transactions. \(This process doesn't affect the on-hand quantity of items in inventory, because this quantity is updated with every released inventory transaction and tracked separately from the inventory account balance.\) The inventory validation process performs the following operations:

1.  Recalculates the available quantity and the subtotals by allocation type that are stored in the database and that you can view on the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form. This operation is always performed when you run the process on the form.
2.  Clears all transaction history details for the inventory account in the inventory subledger, which you can view in the [Historical Inventory Valuation](IN_61_70_00.md) \(IN617000\) report; the process then rebuilds the history again and recalculates the balance of the inventory account in the subledger by the released inventory transactions. To perform this operation, you have to select the **Rebuild Item History** check box on the form and specify the starting financial period. The system rebuilds the transaction history for each financial period starting from the specified one up to the last activity period in the subledger.

## Reports and Forms Used for Reconciliation in the Inventory Subledger {#_eb01d874-4c04-4665-88ba-0ae3880b102b .section}

To review the ending balance of an inventory account for a historical period, you can use any of the following forms and reports:

-   [Historical Inventory Valuation](IN_61_70_00.md) \(IN617000\) report in the summary format: The summary report shows transaction summaries by inventory item, grouped by the account and subaccount to which the summarized transactions have been processed in the inventory subledger. For each item, the summaries by period are presented for each period within the specified range. The first row of the summary shows the cost of the item for the account, subaccount, and period; the second row shows the quantity of the item. The **Account/Subaccount Beginning Balance** and **Account/Subaccount Ending Balance** lines show the beginning and ending balances on the subaccount for the selected period range. If you do not use subaccounts, the **Account/Subaccount Ending Balance** line shows the ending balance of the inventory account.
-   [Inventory Transactions by Account](IN_40_30_00.md) \(IN403000\) form: With the inventory account and period selected in the Summary area, the form shows inventory transactions processed to the selected inventory account and financial period. Each record is an inventory transaction that corresponds to a line in the released inventory entry. The **Beginning Balance** and **Ending Balance** columns show running totals calculated by the listed transactions. If you specify additional filtering parameters on the form, the running totals are recalculated. **Beginning Balance** in the first row starts from the beginning balance of the inventory account for the selected period.

    By default, the transaction lines are ordered by the transaction date \(the **Date** column\), then by the transaction type \(the **Tran. Type** column\), the reference number \(the **Reference Nbr.** column\), and the line number in the transaction.

    **Fin. Period** shows the financial period that is specified in the **Post Period** of the inventory transaction. **Tran. Period** shows the financial period to which the transaction date belongs, which is not necessarily equal to the post period. The corresponding General Ledger transaction is posted to the **Post Period** of the inventory transaction.

    The **Period** that you specify in the form settings filters transactions by the **Post Period** or **Tran. Period** of the transaction. If the **By Financial Period** check box is selected, the transactions are filtered by **Post Period**; otherwise, they are posted by **Tran. Period**. With the **Start Date** and **End Date** parameters on the form, you can also filter the transactions within the specified financial period.

    In the last row, the **Ending Balance** column shows the ending balance of the account for the selected period.


To review the ending balance of an inventory account for the last activity period, you can use one of the following forms and reports:

-   The [Historical Inventory Valuation](IN_61_70_00.md) report in the summary format
-   The [Inventory Transactions by Account](IN_40_30_00.md) form
-   The [Inventory Valuation](IN_61_55_00.md) \(IN615500\) report in the summary format: The report shows the ending balance of the inventory account for the last activity period in the inventory subledger.

To review the ending balance of an inventory account in the general ledger, you use the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) report.

**Parent topic:**[Closing Inventory Periods](../UserGuide/IN__mng_Closing_Inventory_Periods.md)

