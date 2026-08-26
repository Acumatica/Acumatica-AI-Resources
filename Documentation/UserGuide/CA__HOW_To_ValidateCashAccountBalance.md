# To Run Recalculation of Cash Account Balances {#_6cad906b-a5a7-4771-99fb-9d6ab32dbf51 .task}

You use the [Recalculate Account Balances](CA_50_30_00.md) \(CA503000\) form to run recalculation of the balances of a cash account. You perform this process in case you have linked a newly created cash account to a GL account that already had transactions recorded to it.

## To Run Recalculation of a Cash Account Balance {#section_st1_kjv_vxb .section}

1.  Open the [Recalculate Account Balances](CA_50_30_00.md) \(CA503000\) form.
2.  In the **Fin. Period** box, select the financial period from which you want to start recalculating cash account balances.
3.  Do one of the following:

    -   To run the recalculation process for all listed cash accounts, click **Process All**.
    -   To run the recalculation process for only selected cash accounts, select the unlabeled check boxes for the needed cash accounts, and click **Process**.
    If the balances of the cash accounts were recalculated successfully, the system marks them with green check marks.


After the recalculation of cash account balances is completed successfully, all transactions posted to the GL account are tracked in the cash management subledger. You can still create GL batches that update the GL account directly in the general ledger. The system automatically synchronizes the history of the cash account with the transactions in the GL account.

**Parent topic:**[Configuring Cash Accounts](../UserGuide/CA__MNG_CashAccounts.md)

