# PM DACs: Transactional Data {#_ce2198fb-3639-489a-9ba4-340e4deed9c3 .concept}

In this topic, you can find an overview of the data access classes \(DACs\) that provide transactional data.

## Project Transactions { .section}

The [PMRegister](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMRegister) table contains the transaction data that is defined in the Summary area of the [Project Transactions](../UserGuide/PM_30_40_00.md) \(PM304000\) form.

The following example shows the retrieval of the released allocation batches.

```
SELECT 
    * 
FROM 
    PMRegister 
WHERE 
    IsAllocation = 1 
    AND Released = 1
```

The [PMTran](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMTran) DAC contains the transactional data that is displayed in the table on the [Project Transactions](../UserGuide/PM_30_40_00.md) \(PM304000\) form. A project transaction \(PMTran\) is referenced in a general ledger transaction \(GLTran\) by the GLTran.PMTranID field.

The selection of project transactions that meet specific conditions is illustrated in the following examples:

-   The selection of the unbilled transactions for the project with the specified account group

    ```
    SELECT 
        * 
    FROM 
        PMTran t 
    WHERE 
        t.AccountGroupID = 23 
        AND t.ProjectID=3295 
        AND t.Billed=0
    ```

-   The selection of the billed transactions from the specified AR invoice

    ```
    SELECT 
        PMTran.* 
    FROM 
        PMTran 
        INNER JOIN ARTran 
            ON PMTran.CompanyID = ARTran.CompanyID 
            AND PMTran.ARTranType = ARTran.TranType 
            AND PMTran.ARRefNbr = ARTran.RefNbr 
            AND PMTran.RefLineNbr = ARTran.LineNbr 
    WHERE 
        ARTran.TranType='INV' 
        AND ARTran.RefNbr='00013'
    ```


## Pro Forma Invoices { .section}

Pro forma invoices are defined on the [Pro Forma Invoices](../UserGuide/PM_30_70_00.md) \(PM307000\) form. The [PMProforma](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMProforma) DAC contains the pro forma invoice data, which is specified in the Summary area of the form. The [PMProformaLine](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMProformaLine) DAC stores the pro forma line data, which is displayed on the **Progress Billing** and **Time and Material** tabs of the form.

## Billing Records { .section}

The [PMBillingRecord](https://help.acumatica.com/dacBrowser/PX.Objects.PM/PMBillingRecord) DAC contains the billing record data, which is displayed in the table on the **Invoices** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.

In the following example, you can see how to select a billing record for the specified project.

```
SELECT 
    * 
FROM 
    PMBillingRecord b 
WHERE 
    b.ProjectID=3295
```

**Parent topic:**[Reviewing Project Accounting DACs](../DeveloperGuide/DACOverview_PM_Mapref.md)

