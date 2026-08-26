# AP DACs: Historical Data {#_0fedf0fb-eb92-4809-a962-b95c0c08e4c2 .concept}

Historical data access classes \(DACs\) keep historical data on vendors' balance and turnover by financial period.

## APHistory { .section}

The [APHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APHistory) DAC keeps the history of vendor operations and the beginning and ending balances in the base currency. The data is aggregated by vendors, branches, AP accounts, AP subaccounts, and financial periods.

If a financial period does not have any transactions, the historical record is not created for that period. To get the historical balance for such a period, you need to join the last historical record to the desired period. In reports, you can use [BaseAPHistoryByPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.AP/BaseAPHistoryByPeriod), which is a projection over APHistory.

APHistory must be reconciled with the GL transactions posted from the AP functional area, as shown in the following query.

```
SELECT 
    APHistorySum.CompanyID, 
    APHistorySum.FinPeriodID, 
    APHistorySum.AccountID, 
    APHistorySum.VendorID, 
    APHistorySum.SubID, 
    APHistorySum.Turnover, 
    GLTransactionSum.TotalAmount,
    IIF(APHistorySum.Turnover + GLTransactionSum.TotalAmount <> 0, 'false', 'true') 
        AS DoesReconcile
FROM 
    (
        SELECT 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            VendorID, 
            SubID, 
            Turnover = SUM(FinYtdBalance - FinBegBalance) 
        FROM 
            APHistory 
        GROUP BY 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            SubID, 
            VendorID
    ) AS APHistorySum 
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
            Module = 'AP' 
        GROUP BY 
            CompanyID, 
            FinPeriodID, 
            AccountID, 
            SubID, 
            ReferenceID
    ) AS GLTransactionSum 
        ON APHistorySum.CompanyID = GLTransactionSum.CompanyID 
        AND APHistorySum.FinPeriodID = GLTransactionSum.FinPeriodID 
        AND APHistorySum.AccountID = GLTransactionSum.AccountID  
        AND APHistorySum.VendorID = GLTransactionSum.ReferenceID 
        AND APHistorySum.SubID = GLTransactionSum.SubID 
```

## CuryAPHistory { .section}

The [CuryAPHistory](https://help.acumatica.com/dacBrowser/PX.Objects.AP/CuryAPHistory) DAC keeps the history of vendor operations and the beginning and ending balances in each currency. The data is aggregated by vendors, branches, AP accounts, AP subaccounts, financial periods, and currency ID.

If a financial period does not have any transactions, the historical record is not created for that period. To get the historical balance for such a period, you need to join the last historical record before the reported period. In reports, you can use [APHistoryByPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APHistoryByPeriod), which is a projection over CuryAPHistory.

**Parent topic:**[Reviewing Accounts Payable DACs](../DeveloperGuide/DACOverview_AP_Mapref.md)

