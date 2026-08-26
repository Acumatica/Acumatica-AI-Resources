# AP DACs: Transactional Data {#_31b26394-cca2-43e5-8e9b-d78be6cd9bd2 .concept}

In this topic, you can find an overview of the data access classes \(DACs\) that provide transactional data—that is, the DACs that store the accounts payable documents and related entities.

## APRegister, APInvoice, and APPayment { .section}

All AP documents are stored in the [APRegister](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APRegister) DAC. Depending on the type of the document \(which is specified in APRegister.DocType\), the APRegister DAC is extended by [APInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoice), by [APPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPayment), or by both DACs. The following table shows how the APRegister DAC is extended depending on the document type specified on the data entry form. In this table, *+* indicates that the corresponding record exists for this document type, and *-* indicates that the record does not exist.

|Document Type|APRegister.DocType|Purpose|APRegister|APInvoice|APPayment|
|-------------|------------------|-------|----------|---------|---------|
|*Bill*|*INV*|A bill from a vendor for goods and services shipped on credit.|+|+|-|
|*Debit Adj.*|*ADR*|A memo indicating that money is owed by the vendor, due to such factors as a mistake in the bill.|+|+|+|
|*Credit Adj.*|*ACR*|A memo that additional money is owed to the vendor, due to such factors as a mistake in the bill.

 Conceptually, this type is similar to a bill.

|+|+|-|
|*Prepayment*|*PPM*|A payment made in advance of goods and services shipped by the vendor.|+|Optional \(see details in [AP Prepayment Specifics](#_b675f4d3-c5cb-4537-88fe-93a3f19740b2)\)|+|
|*Cash Purchase*|*QCK*|A purchase of goods and services for which a payment was made immediately.

 Essentially, this type is a combination of a bill and a payment.

|+|+|+|
|*Voided Cash Purchase*|*VQC*|A reversing document for a cash purchase.|+|+|+|
|*Payment*|*CHK*|A payment made to the vendor for goods or services shipped on credit.|+|-|+|
|*Voided Payment*|*VCK*|A reversal document for a payment, which cancels the payment's impact on the system.|+|-|+|
|*Refund*|*REF*|A full or partial refund of money received from the vendor.|+|-|+|
|*Voided Refund*|*VRF*|A canceled refund.|+|-|+|

AP documents are defined on the following forms:

-   Most documents that store their data in APInvoice: The [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form
-   Most documents that store their data in APPayment: The [Checks and Payments](../UserGuide/AP_30_20_00.md) \(AP302000\) form
-   Cash purchases and voided cash purchases: The [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\) form
-   Debit adjustments: The [Bills and Adjustments](../UserGuide/AP_30_10_00.md) form, on which the debit adjustment is created and released; the [Checks and Payments](../UserGuide/AP_30_20_00.md) form, on which the debit adjustment is applied to bills and credit adjustments

The selection of the following types of documents is illustrated in the queries shown below:

-   The selection of invoices

    ```
    SELECT 
        * 
    FROM 
        APRegister 
        INNER JOIN APInvoice 
            ON APRegister.CompanyID = APInvoice.CompanyID 
            AND APRegister.DocType = APInvoice.DocType 
            AND APRegister.RefNbr = APInvoice.RefNbr
    ```

-   The selection of payments

    ```
    SELECT 
        * 
    FROM 
        APRegister 
        INNER JOIN APPayment 
            ON APRegister.CompanyID = APPayment.CompanyID 
            AND APRegister.DocType = APPayment.DocType 
            AND APRegister.RefNbr = APPayment.RefNbr 
    ```

-   The selection of cash purchases and voided cash purchases

    ```
    SELECT 
        * 
    FROM 
        APRegister 
        INNER JOIN APInvoice 
            ON APRegister.CompanyID = APInvoice.CompanyID 
            AND APRegister.DocType = APInvoice.DocType 
            AND APRegister.RefNbr = APInvoice.RefNbr 
        INNER JOIN APPayment 
            ON APRegister.CompanyID = APPayment.CompanyID 
            AND APRegister.DocType = APPayment.DocType 
            AND APRegister.RefNbr = APPayment.RefNbr 
    WHERE 
        -- This condition is required because credit memos
        -- have both the invoice part and the payment part. 
        APRegister.DocType IN ('QCK', 'VQC') 
    ```


## AP Prepayment Specifics {#_b675f4d3-c5cb-4537-88fe-93a3f19740b2 .section}

A user can create an AP prepayment on the [Checks and Payments](../UserGuide/AP_30_20_00.md) \(AP302000\) form. In this case, the full entity consists of the [APRegister](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APRegister) record and the corresponding [APPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPayment) record.

However, the user can also create a prepayment request on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form. In this case, the prepayment also includes an [APInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoice) record. The APPayment part is created by the system automatically when a user applies a separate payment to the prepayment request. In this scenario, the full prepayment entity consists of three records: APRegister, APInvoice, and APPayment.

The purpose of the prepayment request workflow is to specify the goods and services for which the prepayment is made. \(The goods and services are saved as the [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) lines of APInvoice.\) The APInvoice part of a prepayment request is a technical entity: It does not generate GL batches upon release.

## Applications Between AP Documents { .section}

An [APAdjust](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APAdjust) record indicates the application of one AP document to another, which results in an adjustment of the balances of both documents. This record contains the foreign key links between two documents, as well as the application amounts and other auxiliary information.

In most cases, an APAdjust record is an application of a payment-like document \(that is, a document that includes an [APPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPayment) record\) to an invoice-like document \(that is, a document that includes an [APInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoice) record\), such as an application of a payment to a bill. Sometimes an APAdjust record can also be an application between two payment-like documents, such as an application of a refund to a prepayment.

A user can create and edit the entities of the APAdjust type on the [Checks and Payments](../UserGuide/AP_30_20_00.md) \(AP302000\) form. On this form, applications are displayed as details of APPayment on the **Documents to Apply** tab. You can also see applications on the **Applications** tab of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form.

The following SQL query selects released documents with all incoming and outgoing released applications.

```
SELECT 
    APRegister.CompanyID, 
    APRegister.DocType, 
    APRegister.RefNbr, 
    -- The original document amount
    APRegister.OrigDocAmt,  
    -- The open document balance
    APRegister.DocBal,  
    -- The total amount applied to the document
    SUM(ISNULL(IncomingApplication.AdjAmt, 0)) AS AdjdAmt, 
    -- The total cash discount taken on the document 
    SUM(ISNULL(IncomingApplication.AdjDiscAmt, 0)) AS AdjdDiscAmt, 
    -- The total gain or loss realized on the document
    SUM(ISNULL(IncomingApplication.RGOLAmt, 0)) AS AdjdRGOLAmt, 
    -- The total withholding tax amount written off the document during the application to it 
    SUM(ISNULL(IncomingApplication.AdjWhTaxAmt, 0)) AS AdjdWhTaxAmt, 
    -- The total amount applied by the document to other documents
    SUM(ISNULL(OutgoingApplication.AdjAmt, 0)) AS AdjgAmt, 
    -- The total cash discount taken on other documents after the application of the document 
    SUM(ISNULL(OutgoingApplication.AdjDiscAmt, 0)) AS AdjgDiscAmt, 
    -- The total gain or loss realized on other documents after the application of this document
    SUM(ISNULL(OutgoingApplication.RGOLAmt, 0)) AS AdjgRGOLAmt, 
    -- The total withholding tax amount written off other documents 
    -- after the application of this document 
    SUM(ISNULL(OutgoingApplication.AdjWhTaxAmt, 0)) AS AdjgWOAmt
FROM 
    APRegister 
    LEFT JOIN APAdjust AS OutgoingApplication 
        ON APRegister.CompanyID = OutgoingApplication.CompanyID 
        AND APRegister.DocType = OutgoingApplication.AdjgDocType 
        AND APRegister.RefNbr = OutgoingApplication.AdjgRefNbr 
    LEFT JOIN APAdjust AS IncomingApplication 
        ON APRegister.CompanyID = IncomingApplication.CompanyID 
        AND APRegister.DocType = IncomingApplication.AdjdDocType 
        AND APRegister.RefNbr = IncomingApplication.AdjdRefNbr 
WHERE 
    APRegister.Released = 1 
    AND OutgoingApplication.Released = 1 
    AND IncomingApplication.Released = 1 
GROUP BY 
    APRegister.CompanyID, 
    APRegister.DocType, 
    APRegister.RefNbr, 
    APRegister.OrigDocAmt, 
    APRegister.DocBal 
```

## Self-Applications { .section}

In the following cases, the system can create applications of the documents to themselves during the document release process:

-   When the document has a nonzero initial migrated balance
-   When the document combines the information about both the invoice and the corresponding payment

## Currency Information { .section}

A [CurrencyInfo](https://help.acumatica.com/dacBrowser/PX.Objects.CM/CurrencyInfo) record stores details about the currency rate of a given currency relative to the base currency, including how the currency rate has been obtained. The CurrencyInfo DAC can be joined to the DACs of accounts payable entities based on the foreign key CuryInfoID field in the entity DAC.

The following query selects currency information references from applications.

```
SELECT 
    -- The balance adjustment in the base currency in adjusting documents.
    APAdjust.AdjAmt, 
    -- The balance adjustment of the adjusted document, such as a bill,
    -- in that document's currency.
    APAdjust.CuryAdjdAmt, 
    -- The balance adjustment of the adjusting document, such as a payment,
    -- in that document's currency.
    APAdjust.CuryAdjgAmt, 
    -- The references to the CurrencyInfo records that define the conversion rates
    -- that the system uses to calculate the amounts above.
    APAdjust.AdjdCuryInfoID, 
    APAdjust.AdjgCuryInfoID, 
    -- A reference field to the original CurrencyInfo of the adjusted document.
    -- The value is usually the same as AdjdCuryInfoID, but if the user overrides 
    -- the application cross-rate (in APAdjust.AdjdCuryRate), it will be different. 
    APAdjust.AdjdOrigCuryInfoID
FROM 
    APAdjust 
```

## AP Invoice Lines { .section}

The [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) DAC contains detail lines about goods and services associated with the revenue. The detail line number is identified by the APTran.LineNbr field.

A user can edit the detail lines on the **Details** tab of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) and [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\) forms.

The following query selects invoices with details.

```
SELECT 
    APRegister.CompanyID, 
    APRegister.DocType, 
    APRegister.RefNbr, 
    APRegister.CuryID, 
    APInvoice.LineTotal, 
    -- The total in the base currency can differ from the line total because of rounding. 
    SUM(APTran.TranAmt), 
    APInvoice.CurylineTotal, 
    -- The total in the foreign currency must be equal to the line total. 
    SUM(APTran.CuryTranAmt) 
FROM 
    APRegister 
    INNER JOIN APInvoice 
        ON APRegister.CompanyID = APInvoice.CompanyID 
        AND APRegister.DocType = APInvoice.DocType 
        AND APRegister.RefNbr = APInvoice.RefNbr 
    -- You should use a left join because the document may contain no details. 
    LEFT JOIN APTran 
        ON APRegister.CompanyID = APTran.CompanyID 
        AND APRegister.DocType = APTran.TranType 
        AND APRegister.RefNbr = APTran.RefNbr 
GROUP BY 
    APRegister.CompanyID, 
    APRegister.DocType, 
    APRegister.RefNbr, 
    APRegister.CuryID, 
    APInvoice.LineTotal, 
    APInvoice.CuryLineTotal 
```

## Tax Details { .section}

The [APTax](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTax) DAC stores auxiliary information about the tax codes and taxable amounts for every corresponding [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) document line.

This DAC is not exposed to the user interface and is only used for intermediate tax calculation and traceability. The entities of this type cannot be edited directly. Instead, TaxBaseAttribute descendants aggregate them to the [APTaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTaxTran) records. APTaxTran is a projection over [TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran).

The TaxTran DAC stores document-level information of all taxes applied to the document. This DAC is shared across Acumatica ERP and used as a centralized source for tax reporting. `APTaxTran` records can be edited on the **Taxes** tab of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) and [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\) forms.

The following query shows the calculation of the tax total for an invoice.

```
SELECT 
    SUM(APTax.TaxAmt) 
FROM 
    APTax 
WHERE 
    -- Corresponds to APInvoice.CompanyID 
    APTax.CompanyID = 2 
    -- Corresponds to APInvoice.DocType 
    AND APTax.TranType = 'INV'  
    -- Corresponds to APInvoice.RefNbr 
    AND APTax.RefNbr = '000537'
```

## Discount Details { .section}

An [APInvoiceDiscountDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoiceDiscountDetail) record represents a document-level or group-level discount that has been applied to the bill or adjustment. The records of this type are usually created automatically when a user edits document details. However, these discount details can be edited on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form.

Line-level discounts do not create discount details and are specified in the line itself in APTran.DiscPct.

## Address and Contact Details { .section}

[APPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPayment) references the [APAddress](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APAddress) and [APContact](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APContact) DACs. These DACs store payment-specific remittance address and contact information. The default values of these address and contact are copied from the remittance address and contact referenced by the vendor location selected in the document. However, this data can be overridden by a user and is independent of changes to the original address and contact. The payment-specific address and contact information can be edited on the **Remittance** tab of the [Checks and Payments](../UserGuide/AP_30_20_00.md) \(AP302000\) and [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\) forms.

The following query selects the remittance address and contact of payments.

```
SELECT 
    * 
FROM 
    APRegister 
    INNER JOIN APPayment 
        ON APRegister.CompanyID = APPayment.CompanyID 
        AND APRegister.DocType = APPayment.DocType 
        AND APRegister.RefNbr = APPayment.RefNbr 
    INNER JOIN APAddress 
        ON APPayment.CompanyID = APAddress.CompanyID 
        AND APPayment.RemitAddressID = APAddress.AddressID 
    INNER JOIN APContact 
        ON APPayment.CompanyID = APContact.CompanyID 
        AND APPayment.RemitContactID = APContact.ContactID 
```

## Cash Transactions { .section}

The creation or removal of an [APPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APPayment) record in the system always involves the creation or removal of a corresponding cash account transaction \([CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran)\).

The cash transaction is referenced by the APPayment.CATranID field. All nonzero AP payments must have a reference to a CATran record. The system passes the CATranID value to the general ledger transaction when the payment is released.

The following query selects payments with cash account transactions.

```
SELECT 
    * 
FROM 
    APPayment 
    LEFT JOIN CATran 
        ON APPayment.CompanyID = CATran.CompanyID 
        AND APPayment.CATranID = CATran.TranID 
```

The CATran records are updated by the Acumatica ERP functionality \(such as general ledger, accounts payable, and accounts receivable\) that works with cash accounts. For details about cash transaction DACs, see [CA DACs: Transactional Data](DACOverview_CA_TransactionalData.md).

## Recurring Transactions { .section}

The [Schedule](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Schedule) DAC represents a schedule according to which documents are generated on a regular basis from a template document. The Schedule DAC contains the schedule parameters, such as the schedule type \(monthly, weekly, daily, or by the financial period\) and frequency. The DAC is used by different Acumatica ERP functional areas.

Template AP documents \(such as invoices, debit adjustments, and credit adjustments\) have the APRegister.Scheduled flag set to *1*. Both the template invoice and the generated invoices keep the reference to the schedule in the APRegister.ScheduleID field.

A user can edit accounts payable schedules on the [Recurring Transactions](../UserGuide/AP_20_35_00.md) \(AP203500\) form.

## GL Transactions Generated by the Documents { .section}

Accounts payable documents generate general ledger transactions upon release, such as the following scenarios:

-   The release of a bill will debit the purchase expense account and credit the accounts payable liability account.
-   The release of a payment will debit the accounts payable account and credit the cash account specified in the payment.

The following SQL query returns the GL transactions that corresponds to the document.

```
SELECT 
    * 
FROM 
    APRegister 
    LEFT JOIN GLTran 
        ON APRegister.CompanyID = GLTran.CompanyID 
        AND APRegister.DocType = GLTran.TranType 
        AND APRegister.RefNbr = GLTran.RefNbr 
        AND GLTran.Module = 'AP' 
        -- The referenceID of GLTran stores the ID of the vendor for AP transactions. 
        AND APRegister.VendorID = GLTran.ReferenceID 
        AND APRegister.BatchNbr = GLTran.BatchNbr 
```

## GL Transactions Generated by Applications { .section}

Normally, the application of a check to a bill is an internal accounts payable operation that does not generate general ledger transactions.

However, GL transactions are generated when any of the following conditions are met:

-   `APAdjust.RGOLAmt <> 0`, such as if realized gains or losses exist due to currency rate differences between the bill and the payment.
-   `APAdjust.AdjWHTaxAmt <> 0 OR APAdjust.CuryAdjgWHTaxAmt <> 0 OR APAdjust.CuryAdjdWHTaxAmt <> 0`, such as if withholding tax amounts have been written off the bill during application.
-   `APAdjust.AdjDiscAmt <> 0 OR APAdjust.CuryAdjgDiscAmt <> 0 OR APAdjust.CuryAdjdDiscAmt <> 0`, such as if a cash discount has been taken on the bill during application.
-   The AP account specified in the adjusted document differs from the AP account specified in the adjusting document.

The following SQL query returns the GL transactions that correspond to the release of applications.

```
SELECT 
    * 
FROM 
    APRegister 
    LEFT JOIN APAdjust 
        ON APRegister.CompanyID = APAdjust.CompanyID 
        AND 
        ( 
            -- Outgoing applications of the document 
            APRegister.DocType = APAdjust.AdjgDocType 
            AND APRegister.RefNbr = APAdjust.AdjgRefNbr 
            OR 
            -- Incoming applications to the document 
            APRegister.DocType = APAdjust.AdjdDocType 
            AND APRegister.RefNbr = APAdjust.AdjdRefNbr
        ) 
    LEFT JOIN GLTran 
        ON APAdjust.CompanyID = GLTran.CompanyID 
        AND APAdjust.AdjBatchNbr = GLTran.BatchNbr 
        AND GLTran.Module = 'AP' 
```

**Parent topic:**[Reviewing Accounts Payable DACs](../DeveloperGuide/DACOverview_AP_Mapref.md)

