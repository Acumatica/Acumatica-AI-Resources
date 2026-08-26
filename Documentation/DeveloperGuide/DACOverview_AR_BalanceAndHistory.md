# AR DACs: Balance and Historical Data {#_e93799fe-7aad-4b67-8c76-24b07ca9d581 .concept}

The system stores information about the customer balance in balance data access classes \(DACs\). Historical DACs keep historical data on customers' balance and turnover by financial period.

## ARBalances { .section}

The [ARBalances](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARBalances) DAC stores the information on current customer balances, including unreleased documents and open customer orders. The DAC is used for credit limit verification and quick customer balance lookup. All data is stored in the base currency of the customer location.

## ARHistory { .section}

The [ARHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARHistory) DAC keeps the history of customer operations and the beginning and ending balances in the base currency.

The DAC accumulates a number of important year-to-date and period-to-date amounts \(such as sales, debit and credit adjustments, and gains and losses\). The history is accumulated across the following dimensions: branch, GL account, GL subaccount, financial period, and customer. History records are created and updated during the document release process. Various projections over ARHistory are used in AR inquiry forms and reports, such as [Customer Summary](../UserGuide/AR_40_10_00.md) \(AR401000\).

If a financial period does not have any transactions, the historical record is not created for that period. To get the historical balance for such a period, you need to join the last historical record to the desired period. In reports, this is done with [BaseARHistoryByPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.AR/BaseARHistoryByPeriod), which is a projection over ARHistory.

ARHistory records must be reconciled with the GL transactions posted from AR, as shown in the following query.

```
SELECT 
    ARHistorySum.CompanyID, 
    ARHistorySum.FinPeriodID, 
    ARHistorySum.AccountID, 
    ARHistorySum.CustomerID, 
    ARHistorySum.SubID, 
    ARHistorySum.Turnover, 
    GLTransactionSum.TotalAmount, 
    (IIF(ARHistorySum.Turnover <> GLTransactionSum.TotalAmount, 'N', 'Y')) 
        AS DoesReconcile 
FROM 
    ( 
        SELECT 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            CustomerID, 
            SubID, 
            Turnover = SUM(FinYtdBalance - FinBegBalance) 
        FROM 
            ARHistory 
        GROUP BY 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            SubID, 
            CustomerID
    ) AS ARHistorySum 
    LEFT JOIN 
    ( 
        SELECT 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            ReferenceID, 
            SubID, 
            TotalAmount = SUM(DebitAmt - CreditAmt) 
        FROM 
            GLTran 
        WHERE 
            Module = 'AR' 
        GROUP BY 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            SubID, 
            ReferenceID
    ) AS GLTransactionSum 
        ON ARHistorySum.CompanyID = GLTransactionSum.CompanyID 
        AND ARHistorySum.FinPeriodID = GLTransactionSum.FinPeriodID 
        AND ARHistorySum.AccountID = GLTransactionSum.AccountID 
        AND ARHistorySum.CustomerID = GLTransactionSum.ReferenceID 
        AND ARHistorySum.SubID = GLTransactionSum.SubID 
```

## CuryARHistory { .section}

The [CuryARHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AR/CuryARHistory) DACs keep the history of customer operations and the beginning and ending balances in each currency. Data is accumulated across the currency ID dimension and the same dimensions as are used in the [ARHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARHistory) DAC.

If a financial period does not have any transactions, the historical record is not created for that period. To get the historical balance for such period, you need to join the last historical record before the reported period. In reports, this is done with [ARHistoryByPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARHistoryByPeriod), which is a projection over CuryARHistory.

## Customer Balance Validation { .section}

Rarely \(such as because of manually executed SQL scripts\), the database may contain discrepancies between customer historical balances \(which are stored in the [ARBalances](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARBalances) and [ARHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARHistory) DACs\) and real document balances. To fix these inconsistencies, a user can run the recalculation process on the [Recalculate Customer Balances](../UserGuide/AR_50_99_00.md) \(AR509900\) form, which recalculates customer historical balances, document balances \(in ARRegister.CuryDocBal and ARRegister.DocBal\), and multiple other service fields \(such as ARRegister.Status, ARRegister.OpenDoc, ARRegister.ClosedTranPeriodID, and ARRegister.ClosedFinPeriodID\). During this process, the system emulates the release process for all selected documents and its applications but without affecting the general ledger.

For document applications, the system can restore the release process history by using the ARRegister.AdjCntr and ARAdjust.AdnNbr fields as follows:

1.  Set ARRegister.AdjCntr to *0*.
2.  Select all applications with this value.
3.  Increment the counter value.
4.  Repeat the same steps while ARRegister.AdjCntr is less than the original counter value.

All selected documents and applications are processed in the same order as they have been released in the past.



**Parent topic:**[Reviewing Accounts Receivable DACs](../DeveloperGuide/DACOverview_AR_Mapref.md)

