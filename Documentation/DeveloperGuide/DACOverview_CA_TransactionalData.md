# CA DACs: Transactional Data {#_31e02076-cb63-4fcd-9dff-f0e593325a2e .concept}

In this topic, you can find an overview of data access classes \(DACs\) that store transactional data, such as the data of the cash management documents.

## CATran { .section}

The [CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran) DAC stores all cash accounting transactions. It can contain cash transactions originated from cash management and other functional areas, such as accounts payable and accounts receivable.

Almost all CA forms use the CATran DAC for creating, processing, or viewing records.

## Transactions { .section}

On the [Cash Transactions](../UserGuide/CA_30_40_00.md) \(CA304000\) form, you can directly enter cash transactions and view or edit the details of existing ones. This form works with the DACs listed in the following table.

|DAC|Description|
|---|-----------|
|[CAAdj](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CAAdj)|Contains manual transactions created in cash management. After the data is saved on a cash management form, the data is also saved in the [CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran) DAC.|
|[CASplit](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CASplit)|Is used for storing the details of cash accounting transactions, and includes the accounting data of a transaction, such as the account and subaccount.|
|[CATax](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATax)|Stores tax details of cash transactions.|

The following example shows the selection of a record for the [Cash Transactions](../UserGuide/CA_30_40_00.md) form. \(In this example, `@CompanyID`, `@TranType`, and `@RefNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CAAdj 
    INNER JOIN CATran 
        ON CAAdj.CompanyID=CATran.CompanyID 
        AND CAAdj.TranID=CATran.TranID 
    LEFT JOIN CASplit 
        ON CASplit.CompanyID=CAAdj.CompanyID 
        AND CASplit.AdjTranType=CAAdj.AdjTranType 
        AND CASplit.AdjRefNbr=CAAdj.AdjRefNbr 
WHERE 
    CAAdj.CompanyID=@CompanyID 
    AND CAAdj.AdjTranType=@TranType 
    AND CAAdj.AdjRefNbr=@RefNbr
```

## Bank Transactions { .section}

With Acumatica ERP, you can import transactions in various formats into the system and process these transactions further to ease the reconciliation process.

Bank transactions are processed in one of the following ways:

-   The transaction is marked as hidden \(that is, the Hidden field is set to true\). Such transactions will be excluded from the process of matching transactions.
-   The transaction is matched to an existing payment in the system.
-   The transaction is matched to an existing invoice in the system.
-   A new document for the bank transaction is added.

For details about bank transactions, see [Managing Bank Statements](../UserGuide/CA__MNG_BankStatements.md).

The following table lists the DACs related to bank transactions.

|DAC|Description|
|---|-----------|
|[CABankTranHeader](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTranHeader)|Stores the headers of bank statements by account. The records of this type are defined on the [Import Bank Transactions](../UserGuide/CA_30_65_00.md) \(CA306500\) form.|
|[CABankTran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTran)|Сontains transactions imported from the bank statement. The following forms are related to this DAC: [Process Bank Transactions](../UserGuide/CA_30_60_00.md) \(CA306000\), [Import Bank Transactions](../UserGuide/CA_30_65_00.md), and [Bank Transactions History](../UserGuide/CA_40_20_00.md) \(CA402000\).|
|[CABankTranAdjustment](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTranAdjustment)|Represents the adjustments to accounts payable or accounts receivable documents and provides links between adjusted documents and bank transactions. The CABankTranAdjustment DAC contains the records for the bank transactions for which new AR or AP documents are added on the **Create Payment** tab of the [Process Bank Transactions](../UserGuide/CA_30_60_00.md) form when the transactions are processed. However, these records exist only during the creation of documents. When processing is finished, all related CABankTranAdjustment records are removed.

The values of the fields of the CABankTranAdjustment record are copied to the corresponding fields of the created [ARAdjust](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARAdjust) or [APAdjust](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APAdjust) record.

|
|[CABankTranDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTranDetail)|Represents a CA transaction detail for the bank transaction for which a CA document will be created.

 The values from CABankTranDetail are copied to [CASplit](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CASplit), which is created during the bank transaction processing.

|
|[CABankTranMatch](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTranMatch)|Represents a match between [CABankTran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABankTran) and [CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran), [CABatch](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABatch), [ARInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoice), or [APInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoice).

 For a bank transaction, the CABankTranMatch DAC contains only one record.

 The following forms are related to this DAC: [Process Bank Transactions](../UserGuide/CA_30_60_00.md) and [Bank Transactions History](../UserGuide/CA_40_20_00.md).

|

The following SQL query selects all bank transactions related to a particular CABankTranHeader record. \(In this example, `@CompanyID`, `@RefNbr`, and `@CashAccountID` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CABankTRanHeader 
    INNER JOIN CABankTran 
        ON CABankTran.CompanyID=CABankTranHeader.CompanyID 
        AND CABankTran.TranType=CABankTranHeader.TranType 
        AND CABankTran.HeaderRefNbr=CABankTranHeader.RefNbr 
        AND CABankTran.CashAccountID=CABankTranHeader.CashAccountID 
WHERE 
    CABankTranHeader.CompanyID=@CompanyID
    AND CABankTranHeader.RefNbr=@RefNbr
    AND CABankTranHeader.CashAccountID=@CashAccountID
```

The following SQL query selects a document related to a particular bank transaction. \(In this example, `@CompanyID` and `@ExtRefNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    CATran.OrigModule, 
    CATran.OrigTranType, 
    CATran.OrigRefNbr 
FROM 
    CABankTran 
    INNER JOIN CABankTranMatch 
        ON CABankTranMatch.CompanyID=CABankTran.CompanyID 
        AND CABankTranMatch.TranID=CABankTRan.TranID 
    INNER JOIN CATran 
        ON CATran.CompanyID=CABankTranMatch.CompanyID 
        AND CABankTranMatch.CATranID=CATran.TranID 
WHERE 
    CABankTran.Processed=1 
    AND CABankTran.TranType='S' 
    AND CABankTran.CompanyID=@CompanyID 
    AND CABankTran.ExtRefNbr=@ExtRefNbr 
```

The following SQL query finds a document matched to a bank transaction. \(In this example, `@CompanyID` and `@BankTranID` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CABankTranMatch 
    LEFT JOIN ARInvoice 
        ON ARInvoice.CompanyID=CABankTranMatch.CompanyID 
        AND CABankTranMatch.DocModule='AR' 
        AND CABankTranMatch.DocType=ARInvoice.DocType 
        AND CABankTranMatch.DocRefNbr=ARInvoice.RefNbr 
    LEFT JOIN APInvoice 
        ON APInvoice.CompanyID=CABankTranMatch.CompanyID 
        AND CABankTranMatch.DocModule='AP' 
        AND CABankTranMatch.DocType=APInvoice.DocType 
        AND CABankTranMatch.DocRefNbr=APInvoice.RefNbr 
    LEFT JOIN CABatch 
        ON CABatch.CompanyID=CABankTranMatch.CompanyID 
        AND CABankTranMatch.DocModule='AP' 
        AND CABankTranMatch.DocType='CBT' 
        AND CABankTranMatch.DocRefNbr=CABatch.BatchNbr 
    LEFT JOIN CATran 
        ON CATran.CompanyID=CABankTranMatch.CompanyID 
        AND CATran.TranID=CABankTranMatch.CATranID 
WHERE 
    CABankTranMatch.CompanyID=@CompanyID
    AND CABankTranMatch.TranID=@BankTranID
```

## Batch Payments { .section}

The [CABatch](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABatch) DAC stores the header of the payment batches. These batches are used for the auto-payment procedure. The [CABatchDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CABatchDetail) entity links CABatch and APPayment records.

The CABatch and CABatchDetail records are defined on the [Batch Payments](../UserGuide/AP_30_50_00.md) \(AP305000\) form. For details about batches, see [Processing ACH Payments](../UserGuide/AP__con_ACH_Payment_Support.md).

The following SQL query selects a batch with details. \(In this example, `@CompanyID` and `@BatchNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CABatch 
    LEFT JOIN CABatchDetail 
        ON CABatchDetail.CompanyID=CABatch.CompanyID 
        AND CABatchDetail.BatchNbr=CABatch.BatchNbr 
WHERE 
    CABatch.CompanyID=@CompanyID
    AND CABatch.BatchNbr=@BatchNbr
```

The following SQL query searches for a batch number for an AP payment. \(In this example, `@CompanyID`, `@CashAccountID`, and `@ExtRefNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    CABatch.BatchNbr 
FROM 
    APPayment 
    INNER JOIN CABatchDetail 
        ON CABatchDetail.OrigModule='AP' 
        AND CABatchDetail.CompanyID=APPayment.CompanyID 
        AND CABatchDetail.OrigDocType=APPayment.DocType 
        AND CABatchDetail.OrigRefNbr=APPayment.RefNbr 
    INNER JOIN CABatch 
        ON CABatch.CompanyID=CABatchDetail.CompanyID 
        AND CABatch.BatchNbr=CABatchDetail.BatchNbr 
WHERE 
    APPayment.CompanyID=@CompanyID
    AND APPayment.CashAccountID=@CashAccountID
    AND APPayment.ExtRefNbr=@ExtRefNbr
```

## Deposits { .section}

A user can edit bank deposits on the [Bank Deposits](../UserGuide/CA_30_50_00.md) \(CA305000\) form. This form works with the DACs listed in the following table. For details about deposit transactions, see [Preparation of Deposits](../UserGuide/CA__CON_Preparation_of_Deposits.md).

|DAC|Description|
|---|-----------|
|[CADeposit](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CADeposit)|Stores the headers of deposit transactions.|
|[CADepositCharge](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CADepositCharge)|Stores the additional charges of a deposit and the references to the [CADeposit](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CADeposit) DAC.|
|[CADepositDetail](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CADepositDetail)|Stores the details of deposit transactions, such as the account and a subaccount used in the transaction.|

The following SQL query selects a deposit. \(In this example, `@CompanyID`, `@Type`, and `@RefNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CADeposit 
    INNER JOIN CATran as PrimaryCATran 
        ON PrimaryCATran.CompanyID=CADeposit.CompanyID 
        AND PrimaryCATran.TranID=CADeposit.TranID 
    LEFT JOIN CATran as CashTran 
        ON CashTran.CompanyID=CADeposit.CompanyID 
        AND CashTran.TranID=CADeposit.TranID 
    LEFT JOIN CATran as ChargeTran 
        ON ChargeTran.CompanyID=CADeposit.CompanyID 
        AND ChargeTran.TranID=CADeposit.TranID 
    LEFT JOIN CADepositDetail 
        ON CADepositDetail.CompanyID=CADeposit.CompanyID 
        AND CADepositDetail.TranType=CADeposit.TranType 
        AND CADepositDetail.RefNbr=CADeposit.RefNbr 
    LEFT JOIN CADepositCharge 
        ON CADepositCharge.CompanyID=CADeposit.CompanyID 
        AND CADepositCharge.TranType=CADeposit.TranType 
        AND CADepositCharge.RefNbr=CADeposit.RefNbr 
WHERE 
    CADeposit.CompanyID=@CompanyID 
    AND CADeposit.TranType=@Type
    AND CADeposit.RefNbr=@RefNbr
```

The following SQL query selects deposit details. \(In this example, `@CompanyID`, `@Type`, and `@RefNbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CADepositDetail 
    INNER JOIN CATran 
        ON CATran.CompanyID=CADepositDetail.CompanyID 
        AND CATran.TranID=CADepositDetail.TranID 
    INNER JOIN ARPayment 
        ON ARPayment.CompanyID=CADepositDetail.CompanyID 
        AND 'AR'=CADepositDetail.OrigModule 
        AND ARPayment.DocType=CADepositDetail.OrigDocType 
        AND ARPayment.RefNbr=CADepositDetail.OrigRefNbr 
WHERE 
    CADepositDetail.CompanyID=@CompanyID
    AND CADepositDetail.TranType=@Type
    AND CADepositDetail.RefNbr=@RefNbr
```

## Reconciliation Statements { .section}

The [CARecon](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CARecon) DAC stores the headers of reconciliation statements. For details about reconciliation statements, see [Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md).

The CARecon records are defined on the [Reconciliation Statements](../UserGuide/CA_30_20_00.md) \(CA302000\) form.

The following SQL query detects unbalanced reconciliations.

```
SELECT 
    CompanyID, 
    ReconNbr, 
    CashAccountID, 
    CashAccountCD, 
    Voided, 
    Reconciled, 
    SkipVoided, 
    ShowBatchPayments, 
    diffDebits - diffCredits as diff, 
    diffDebits, 
    diffCredits,
    reconciledDebits, 
    DrAmt, 
    reconciledCredits, 
    CrAmt, 
    CreatedDateTime 
FROM 
    (
        SELECT 
            CARecon.CompanyID, 
            CARecon.ReconNbr, 
            CARecon.CashAccountID, 
            CARecon.Voided, 
            CARecon.Reconciled, 
            CARecon.SkipVoided, 
            CARecon.ShowBatchPayments, 
            MAX(CashAccount.CashAccountCD) AS CashAccountCD, 
            SUM(CASE WHEN DrCr='C' THEN -CATran.CuryTranAmt ELSE 0 END) AS CrAmt, 
            MAX(CARecon.CuryReconciledCredits ) AS reconciledCredits, 
            SUM(CASE WHEN DrCr='C' THEN -CATran.CuryTranAmt ELSE 0 END) 
                - MAX(CARecon.CuryReconciledCredits ) AS diffCredits, 
            SUM(CASE WHEN DrCr='D' THEN CATran.CuryTranAmt ELSE 0 END) AS DrAmt, 
            MAX(CARecon.CuryReconciledDebits) AS reconciledDebits, 
            SUM(CASE WHEN DrCr='D' THEN CATran.CuryTranAmt ELSE 0 END) 
                - MAX(CARecon.CuryReconciledDebits) AS diffDebits, 
            CARecon.CreatedDateTime 
        FROM 
            CARecon 
            LEFT JOIN CATran 
                ON CATran.CompanyID = CARecon.CompanyID 
                AND CATran.ReconNbr=CARecon.ReconNbr 
                AND CATran.CashAccountID = CARecon.CashAccountID 
            INNER JOIN CashAccount 
                ON CARecon.CompanyID = CashAccount.CompanyID 
                AND CARecon.CashAccountID = CashAccount.CashAccountID 
        WHERE 
            CARecon.CompanyID >0 
            AND CARecon.Voided=0 
        GROUP BY 
            CARecon.CompanyID, 
            CARecon.ReconNbr, 
            CARecon.CashAccountID, 
            CARecon.Voided, 
            CARecon.Reconciled, 
            CARecon.SkipVoided, 
            CARecon.ShowBatchPayments, 
            CARecon.CreatedDateTime
    ) AS recons 
WHERE 
    diffCredits<>diffDebits 
ORDER BY 
    CompanyID, 
    CashAccountCD, 
    ReconNbr
```

## Cash Flow Forecast { .section}

The [CashForecastTran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CashForecastTran) DAC stores the manually entered transactions for the cash flow forecasts. The CashForecastTran records are defined on the [Anticipated Cash Transactions](../UserGuide/CA_30_55_00.md) \(CA305500\) form. For details about cash flow forecasts, see [Cash Flow Forecasting](../UserGuide/CA__con_Cash_Flow_Forecasting.md).

## Transfers { .section}

The [CATransfer](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATransfer) DAC represents a funds transfer from one cash account to another. The CATransfer records are defined on the [Funds Transfers](../UserGuide/CA_30_10_00.md) \(CA301000\) form. For details about funds transfers, see [Performing Funds Transfers](../UserGuide/Finance_Processing_Funds_Transfers_Mapref.md).

The following SQL query selects a funds transfer. \(In this example, `@CompanyID` and `@Nbr` are the values that are passed as parameters to the request.\)

```
SELECT 
    * 
FROM 
    CATransfer 
    INNER JOIN CATran AS CATranIN 
        ON CATranIN.CompanyID=CATransfer.CompanyID 
        AND CATranIN.TranID=CATransfer.TranIDIn 
    INNER JOIN CATran AS CATranOUT 
        ON CATranOUT.CompanyID=CATransfer.CompanyID 
        AND CATranOUT.TranID=CATransfer.TranIDOut 
    LEFT JOIN CATran AS CATranExpense 
        ON CATranExpense.CompanyID=CATransfer.CompanyID 
        AND CATranExpense.OrigModule='CA' 
        AND CATranExpense.OrigTranType='CTE' 
        AND CATranExpense.OrigRefNbr=CATransfer.TransferNbr 
    LEFT JOIN CAAdj 
        ON CAAdj.CompanyID=CATransfer.CompanyID 
        AND CAAdj.AdjTranType='CTE' 
        AND CAAdj.TranID=CATranExpense.TranID 
WHERE 
    CATransfer.CompanyID=@CompanyID
    AND CATransfer.TransferNbr=@Nbr
```

The [CAExpense](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CAExpense) DAC represents CA transfer expenses.

**Parent topic:**[Reviewing Cash Management DACs](../DeveloperGuide/DACOverview_CA_Mapref.md)

