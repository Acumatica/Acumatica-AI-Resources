# CA DACs: Historical Data {#_b5924a85-f13a-479c-90ff-cffc93e7c0c1 .concept}

The [CADailySummary](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CADailySummary) data access class \(DAC\) keeps historical data about daily cash account balances. The CADailySummary records are updated on every [CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran) update that affects the date or status of a transaction.

The system uses CADailySummary to calculate the cash account balances on the [Cash Flow Forecast](../UserGuide/CA_40_10_00.md) \(CA401000\) and [Cash Account Details](../UserGuide/CA_30_30_00.md) \(CA303000\) forms.

The following SQL query counts credit and debit amounts for a cash account. \(In this example, `@CashAccountCD` is the value that is passed as a parameter to the request.\)

```
SELECT 
    SUM(CADailySummary.AmtReleasedClearedDr)
        + SUM(CADailySummary.AmtReleasedUnclearedDr) AS DrAmount, 
    SUM(CADailySummary.AmtReleasedClearedCr)
        + SUM(CADailySummary.AmtReleasedUnclearedCr) AS CrAmount 
FROM 
    CADailySummary 
    INNER JOIN CashAccount 
        ON CADailySummary.CompanyID=CashAccount.CompanyID 
        AND CADailySummary.CashAccountID=CashAccount.CashAccountID 
WHERE 
    CashAccount.CashAccountCD = @CashAccountCD 
GROUP BY 
    CADailySummary.CompanyID, 
    CADailySummary.CashAccountID
```

**Parent topic:**[Reviewing Cash Management DACs](../DeveloperGuide/DACOverview_CA_Mapref.md)

