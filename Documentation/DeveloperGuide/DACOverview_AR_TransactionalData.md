# AR DACs: Transactional Data {#_926d6136-d7e4-4dac-80aa-a98a6a770320 .concept}

In this topic, you can find an overview of the data access classes \(DACs\) that provide transactional data—that is, the DACs that store the accounts receivable documents and related entities.

## ARRegister, ARInvoice, and ARPayment { .section}

All AR documents are stored in the [ARRegister](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARRegister) DAC. Depending on the type of the document \(ARRegister.DocType\), the ARRegister DAC is extended by [ARInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoice), by [ARPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPayment), or by both DACs. The following table shows how the ARRegister DAC is extended depending on the document type specified on the data entry form. In this table, *+* indicates that the corresponding record exists for this document type, and *-* indicates that the record does not exist.

|Document Type|ARRegister.DocType|Purpose|ARRegister|ARInvoice|ARPayment|
|-------------|------------------|-------|----------|---------|---------|
|*Invoice*|*INV*|An invoice for goods and services shipped on credit.|+|+|-|
|*Debit Memo*|*DRM*|A memo indicating that additional money is owed from the customer account.

 Conceptually, this type is similar to an invoice.

|+|+|-|
|*Overdue Charge*|*FCH*|A financial charge for overdue invoices and late payments.|+|+|-|
|*Cash Sale*|*CSL*|A sale of goods and services for which a payment was received immediately.

 Essentially, this type is a combination of an invoice and a payment.

|+|+|+|
|*Cash Return*|*RCS*|A reversing document for a cash sale.|+|+|+|
|*Credit WO*|*SMC*|A record of a write-off of money owed to the customer account.|+|+|-|
|*Credit Memo*|*CRM*|A memo indicating that additional money is owed to the customer account.|+|+|+|
|*Payment*|*PMT*|A payment received from the customer for goods or services shipped on credit.|+|-|+|
|*Voided Payment*|*RPM*|A reversal document for the payment, which cancels the payment's impact on the system.|+|-|+|
|*Refund*|*REF*|A full or partial refund of money received from the customer.|+|-|+|
|*Voided Refund*|*VRF*|A document recording a customer refund that was voided.|+|-|+|
|*Prepayment*|*PPM*|A record of money received from the customer in advance of goods or services being shipped.|+|-|+|
|*Balance WO*|*SMB*|A record of a write-off of money owed from the customer account.|+|-|+|

AR documents are defined on the following forms:

-   Most documents that store their data in ARInvoice: The [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form
-   Most documents that store their data in ARPayment: The [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form
-   Cash sales and cash returns: The [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form
-   Credit memos: The [Invoices and Memos](../UserGuide/AR_30_10_00.md) form, on which the memo is created and released; the [Payments and Applications](../UserGuide/AR_30_20_00.md) form, on which the memo is applied to payments

The selection of the following types of documents is illustrated in the queries shown below:

-   Selection of invoices

    ```
    SELECT 
        * 
    FROM 
        ARRegister 
        INNER JOIN ARInvoice 
            ON ARRegister.CompanyID = ARInvoice.CompanyID 
            AND ARRegister.DocType = ARInvoice.DocType 
            AND ARRegister.RefNbr = ARInvoice.RefNbr 
    ```

-   Selection of payments

    ```
    SELECT 
        * 
    FROM 
        ARRegister 
        INNER JOIN ARPayment 
            ON ARRegister.CompanyID = ARPayment.CompanyID 
            AND ARRegister.DocType = ARPayment.DocType 
            AND ARRegister.RefNbr = ARPayment.RefNbr 
    ```

-   Selection of cash sales and cash returns

    ```
    SELECT 
        * 
    FROM 
        ARRegister 
        INNER JOIN ARInvoice 
            ON ARRegister.CompanyID = ARInvoice.CompanyID 
            AND ARRegister.DocType = ARInvoice.DocType 
            AND ARRegister.RefNbr = ARInvoice.RefNbr 
        INNER JOIN ARPayment 
            ON ARRegister.CompanyID = ARPayment.CompanyID 
            AND ARRegister.DocType = ARPayment.DocType 
            AND ARRegister.RefNbr = ARPayment.RefNbr 
    WHERE 
        -- This condition is required because credit memos also have 
        -- both the invoice part and the payment part. 
        ARRegister.DocType IN ('CSL', 'VCS') 
    ```


## Statuses of Documents in ARRegister { .section}

The following table lists the statuses of AR documents that are displayed in the UI and the corresponding values of ARRegister.Status.

|UI Name|ARRegister.Status Value|
|-------|-----------------------|
|*Credit Hold*|*R*|
|*Pending Processing*|*W*|
|*On Hold*|*H*|
|*Balanced*|*B*|
|*Voided*|*V*|
|*Scheduled*|*S*|
|*Open*|*N*|
|*Closed*|*C*|
|*Pending Print*|*P*|
|*Pending Email*|*E*|
|*Reserved*|*Z*|
|*Pending Approval*|*D*|
|*Rejected*|*J*|
|*Canceled*|*L*|

## Applications Between Documents { .section}

An [ARAdjust](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARAdjust) record indicates the application of one AR document to another, which results in an adjustment of both documents' balances. This record contains the foreign key links between two documents, as well as the application amounts and other auxiliary information.

In most cases, it is an application of a payment-like document \([ARPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPayment)\) to an invoice-like document \([ARInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoice)\), such as when a payment closes an invoice. Sometimes there can also be applications between two payment-like documents \(ARPayment\), such as when a refund closes a payment.

The entities of this type are mainly created and edited on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form. Applications are displayed as details on the **Documents to Apply** tab. They can also be seen on the **Applications** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.

The following SQL query selects released documents with all incoming and outgoing released applications.

```
SELECT 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    -- Original document amount 
    ARRegister.OrigDocAmt, 
    -- Open document balance 
    ARRegister.DocBal, 
    -- Total amount applied to the document
    SUM(ISNULL(IncomingApplication.AdjAmt, 0)) AS AdjdAmt, 
    -- Total cash discount taken on the document
    SUM(ISNULL(IncomingApplication.AdjDiscAmt, 0)) AS AdjdDiscAmt, 
    -- Total gain or loss realized on the document 
    SUM(ISNULL(IncomingApplication.RGOLAmt, 0)) AS AdjdRGOLAmt, 
    -- Total balance written off the document during application to it 
    SUM(ISNULL(IncomingApplication.AdjWOAmt, 0)) AS AdjdWOAmt, 
    -- Total amount applied by the document to other documents
    SUM(ISNULL(OutgoingApplication.AdjAmt, 0)) AS AdjgAmt, 
    -- Total cash discount taken on other documents after application of the document 
    SUM(ISNULL(OutgoingApplication.AdjDiscAmt, 0)) AS AdjgDiscAmt, 
    -- Total gain or loss realized on other documents after application of this document 
    SUM(ISNULL(OutgoingApplication.RGOLAmt, 0)) AS AdjgRGOLAmt, 
    -- Total amount written off other documents after application of this document
    SUM(ISNULL(OutgoingApplication.AdjWOAmt, 0)) AS AdjgWOAmt
FROM 
    ARRegister 
    LEFT JOIN ARAdjust AS OutgoingApplication 
        ON ARRegister.CompanyID = OutgoingApplication.CompanyID 
        AND ARRegister.DocType = OutgoingApplication.AdjgDocType 
        AND ARRegister.RefNbr = OutgoingApplication.AdjgRefNbr 
    LEFT JOIN ARAdjust AS IncomingApplication 
        ON ARRegister.CompanyID = IncomingApplication.CompanyID 
        AND ARRegister.DocType = IncomingApplication.AdjdDocType 
        AND ARRegister.RefNbr = IncomingApplication.AdjdRefNbr 
WHERE 
    ARRegister.Released = 1 
    AND OutgoingApplication.Released = 1 
    AND IncomingApplication.Released = 1 
GROUP BY 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    ARRegister.OrigDocAmt, 
    ARRegister.DocBal 
```

## Self-Applications { .section}

In the following cases, the system can create applications of the documents to themselves during the document release process:

-   When the document has a nonzero initial migrated balance
-   When the document combines the information about both the invoice and the corresponding payment—that is, for cash sales and cash returns

## Currency Info { .section}

A [CurrencyInfo](https://help.acumatica.com/dacBrowser/PX.Objects.CM/CurrencyInfo) record stores details about the currency rate of a given currency relative to the base currency, including how the currency rate has been obtained. The CurrencyInfo DAC can be joined to the DACs of accounts receivable entities based on the foreign key CuryInfoID field in the entity DAC.

The following query selects currency information references from applications.

```
SELECT 
    -- The balance adjustment in the base currency in adjusting documents. 
    ARAdjust.AdjAmt, 
    -- The balance adjustment of the adjusted document, such as an invoice, 
    -- in that document's currency. 
    ARAdjust.CuryAdjdAmt, 
    -- The balance adjustment of the adjusting document, such as a payment, 
    -- in that document's currency. 
    ARAdjust.CuryAdjgAmt, 
    -- The system calculates the above amounts by using the conversion rates defined 
    -- by the CurrencyInfo records, which are referenced by the pair of the following fields. 
    ARAdjust.AdjdCuryInfoID, 
    ARAdjust.AdjgCuryInfoID, 
    -- A reference field to the original currency info of the adjusted document. 
    -- The value is usually the same as AdjdCuryInfoID, 
    -- but if the user overrides the application cross-rate (in ARAdjust.AdjdCuryRate), 
    -- it will be different. 
FROM 
    ARAdjust 
```

## Invoice Lines { .section}

Documents that extend the [ARInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoice) DAC contain detail lines about goods and services associated with the revenue. They are stored in the [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) DAC. The detail line number is identified by the ARTran.LineNbr field \(which is calculated based on the ARRegister.LineCntr field\).

Invoice detail lines can be edited on the **Details** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form or the [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form.

The following query selects invoices with details.

```
SELECT 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    ARRegister.CuryID, 
    ARInvoice.LineTotal, 
    -- Total in base currency can differ from the line total because of rounding. 
    SUM(ARTran.TranAmt), 
    ARInvoice.CurylineTotal, 
    -- Total in foreign currency must be equal to the line total. 
    SUM(ARTran.CuryTranAmt) 
FROM 
    ARRegister 
    INNER JOIN ARInvoice 
        ON ARRegister.CompanyID = ARInvoice.CompanyID 
        AND ARRegister.DocType = ARInvoice.DocType 
        AND ARRegister.RefNbr = ARInvoice.RefNbr 
    -- You should use left join because the document may contain no details. 
    LEFT JOIN ARTran 
        ON ARRegister.CompanyID = ARTran.CompanyID 
        AND ARRegister.DocType = ARTran.TranType 
        AND ARRegister.RefNbr = ARTran.RefNbr 
GROUP BY 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    ARRegister.CuryID, 
    ARInvoice.LineTotal, 
    ARInvoice.CuryLineTotal 
```

## Address and Contact Details { .section}

[ARInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoice) references the [ARAddress](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARAddress) and [ARContact](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARContact) DACs. These DACs store invoice-specific bill-to or ship-to address and contact information.

After a [Customer](https://help.acumatica.com/dacBrowser/PX.Objects.AR/Customer) record is selected in the document, the default values of the invoice's bill-to address and contact are copied from the billing [Address](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Address) and [Contact](https://help.acumatica.com/dacBrowser/PX.Objects.CR/Contact) records, which are referenced by the Customer.DefBillAddressID and Customer.DefBillContactID, respectively. The default values of the invoice's ship-to address and contact are copied from the shipping Address and Contact records that are referenced by the default location \(which is specified in Location.DefAddressID and Location.DefContactID\). However, this data can be overridden by the user and is independent of changes to the original Address and Contact.

The invoice-specific address and contact information can be edited on the **Addresses** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form or the [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form.

The address and contact information is printed on the invoice.

The selection of the following types of address and contact information is illustrated in the queries shown below:

-   Selection of the bill-to address and contact information about the invoices

    ```
    SELECT 
        * 
    FROM 
        ARRegister 
        INNER JOIN ARInvoice 
            ON ARRegister.CompanyID = ARInvoice.CompanyID 
            AND ARRegister.DocType = ARInvoice.DocType 
            AND ARRegister.RefNbr = ARInvoice.RefNbr 
        INNER JOIN ARAddress 
            ON ARInvoice.CompanyID = ARAddress.CompanyID 
            AND ARInvoice.BillAddressID = ARAddress.AddressID 
        INNER JOIN ARContact 
            ON ARInvoice.CompanyID = ARContact.CompanyID 
            AND ARInvoice.BillContactID = ARContact.ContactID 
    ```

-   Selection of the ship-to address and contact information about the invoices

    ```
    SELECT 
        * 
    FROM 
        ARRegister 
        INNER JOIN ARInvoice 
            ON ARRegister.CompanyID = ARInvoice.CompanyID 
            AND ARRegister.DocType = ARInvoice.DocType 
            AND ARRegister.RefNbr = ARInvoice.RefNbr 
        INNER JOIN ARAddress 
            ON ARInvoice.CompanyID = ARAddress.CompanyID 
            AND ARInvoice.ShipAddressID = ARAddress.AddressID 
        INNER JOIN ARContact 
            ON ARInvoice.CompanyID = ARContact.CompanyID 
            AND ARInvoice.ShipContactID = ARContact.ContactID  
    ```


## Tax Details { .section}

An [ARTax](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTax) record stores auxiliary information about the tax code and taxable amounts for every corresponding [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) document line.

The ARTax DAC is not exposed to the user interface and is only used for intermediate tax calculation and traceability. The entities of this type cannot be edited directly. Instead, TaxBaseAttribute descendants aggregate them to [ARTaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTaxTran) records. ARTaxTran is a projection over [TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran).

The TaxTran DAC stores document-level information of all taxes applied to the document. This DAC is shared across Acumatica ERP and used as a centralized source for tax reporting. ARTaxTran records can be edited on the **Taxes** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) or [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form.

The following query obtains invoice tax totals.

```
SELECT 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    ARRegister.CuryID, 
    -- The amount in the base currency 
    ARInvoice.TaxTotal, 
    -- The additional tax matches the document tax total 
    SUM
        (CASE 
            WHEN Tax.TaxCalcLevel = 0 THEN 0 
            ELSE TaxTran.TaxAmt 
        END) AS AdditionalTax, 
    -- The inclusive tax is not included in the tax total 
    SUM
        (CASE 
            WHEN Tax.TaxCalcLevel = 0 THEN TaxTran.TaxAmt 
            ELSE 0 
        END) AS InclusiveTax, 
    -- The amount in the currency of the document 
    ARInvoice.CuryTaxTotal, 
    -- The additional tax matches the document tax total 
    SUM
        (CASE 
            WHEN Tax.TaxCalcLevel = 0 THEN 0 
            ELSE TaxTran.CuryTaxAmt 
        END) AS CurrencyAdditionalTax, 
    -- The inclusive tax is not included in the tax total 
    SUM
        (CASE 
            WHEN Tax.TaxCalcLevel = 0 THEN TaxTran.CuryTaxAmt 
            ELSE 0 
        END) AS CurrencyInclusiveTax 
FROM 
    ARRegister 
    INNER JOIN ARInvoice 
        ON ARRegister.CompanyID = ARInvoice.CompanyID 
        AND ARRegister.DocType = ARInvoice.DocType 
        AND ARRegister.RefNbr = ARInvoice.RefNbr 
    LEFT JOIN TaxTran 
        ON ARRegister.CompanyID = TaxTran.CompanyID 
        AND ARRegister.DocType = TaxTran.TranType 
        AND ARRegister.RefNbr = TaxTran.RefNbr 
        AND TaxTran.Module = 'AR' 
    LEFT JOIN Tax 
        ON TaxTran.CompanyID = Tax.CompanyID 
        AND TaxTran.TaxID = Tax.TaxID 
GROUP BY 
    ARRegister.CompanyID, 
    ARRegister.DocType, 
    ARRegister.RefNbr, 
    ARRegister.CuryID, 
    ARInvoice.TaxTotal, 
    ARInvoice.CuryTaxTotal 
```

## Salesperson Commissions { .section}

The [ARSalesPerTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARSalesPerTran) DAC stores information on the salesperson commission basis and the commission calculated on the document for each associated salesperson.

The system creates records of this type automatically when a user specifies a salesperson ID in an invoice line on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form. \(Invoice lines are stored in [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran).\)

You should use `LEFT JOIN` to obtain salespeople commissions associated with invoices, as shown in the following query, because documents can contain no commission.

```
SELECT 
    * 
FROM 
    ARRegister 
    INNER JOIN ARInvoice 
        ON ARRegister.CompanyID = ARInvoice.CompanyID 
        AND ARRegister.DocType = ARInvoice.DocType 
        AND ARRegister.RefNbr = ARInvoice.RefNbr 
    LEFT JOIN ARSalesPerTran 
        ON ARRegister.CompanyID = ARSalesPerTran.CompanyID 
        AND ARRegister.DocType = ARSalesPerTran.DocType 
        AND ARRegister.RefNbr = ARSalesPerTran.RefNbr 
```

Salesperson commissions can be calculated either on the invoice basic or on the payment basis. If a commission is based on payments, every payment records the paid portion of each original line. The following query obtains the salesperson commissions calculated on payments.

```
SELECT 
    * 
FROM 
    ARRegister 
    INNER JOIN ARPayment 
        ON ARRegister.CompanyID = ARPayment.CompanyID 
        AND ARRegister.DocType = ARPayment.DocType 
        AND ARRegister.RefNbr = ARPayment.RefNbr 
    LEFT JOIN ARSalesPerTran 
        ON ARRegister.CompanyID = ARSalesPerTran.CompanyID 
        AND ARRegister.DocType = ARSalesPerTran.AdjdDocType 
        AND ARRegister.RefNbr = ARSalesPerTran.AdjdRefNbr
```

## Discount Details { .section}

The [ARInvoiceDiscountDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARInvoiceDiscountDetail) records represent a document- or group-level discount that has been applied to the invoice or memo. The records of this type are created automatically when the user edits document details and are based on the applicable discount sequences. However, all discount details can then be edited manually on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.

Line-level discounts do not create discount details and are specified in the line itself in ARTran.DiscPct.

## Cash Transactions { .section}

The creation or removal of an [ARPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPayment) record in the system always involves the creation or removal of a corresponding cash account transaction \([CATran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATran)\).

The cash account transaction is referenced by the ARPayment.CATranID field. All nonzero AR payments must have a reference to a CATran record. The CATranID value is passed to the general ledger transaction upon payment release.

The following query selects payments with cash account transactions.

```
SELECT 
    * 
FROM 
    ARPayment 
    LEFT JOIN CATran 
        ON ARPayment.CompanyID = CATran.CompanyID 
        AND ARPayment.CATranID = CATran.TranID
```

The CATran records are updated by the Acumatica ERP functionality that works with cash accounts, such as general ledger, accounts payable, and accounts receivable. For details about cash transaction DACs, see [CA DACs: Transactional Data](DACOverview_CA_TransactionalData.md).

## Credit Card Processing Transactions { .section}

The [ARPayment](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARPayment) documents that have a credit card payment method referenced by their ARPayment.PaymentMethodID field can have associated credit card processing entities, such as credit card processing transactions \(which are stored in [CCProcTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/CCProcTran)\).

You can obtain the credit card processing transactions of a payment by the following query.

```
SELECT 
    * 
FROM 
    ARRegister 
    INNER JOIN ARPayment 
        ON ARRegister.CompanyID = ARPayment.CompanyID 
        AND ARRegister.DocType = ARPayment.DocType 
        AND ARRegister.RefNbr = ARPayment.RefNbr 
    LEFT JOIN CCProcTran 
        ON ARRegister.CompanyID = CCProcTran.CompanyID 
        AND (ARRegister.DocType = CCProcTran.TranType 
        OR ARRegister.DocType IN ('REF', 'RCS')) 
        AND ARRegister.RefNbr = CCProcTran.RefNbr
```

Credit card processing transactions are visible on the **Card Processing** tab of the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form or the [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form.

## Linked SO Orders { .section}

On the **Sales Orders** tab of the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form, a user can link sales orders \(which are stored in [SOOrder](https://help.acumatica.com/dacBrowser/PX.Objects.SO/SOOrder)\) to the payment. These links are stored as [SOAdjust](https://help.acumatica.com/dacBrowser/PX.Objects.SO/SOAdjust) records.

The purpose of these links is to reserve part of the payment's balance and automatically apply its payment to the AR invoice generated from the order once the order has been billed.

## Recurring Transactions { .section}

The [Schedule](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Schedule) DAC represents a schedule according to which documents are generated on a regular basis from a template document. The Schedule DAC contains the schedule parameters, such as the schedule type \(monthly, weekly, daily, or by the financial period\) and frequency. The DAC is used by different Acumatica ERP functional areas.

Template AR documents \(such as invoices\) have ARRegister.Scheduled set to *1*. Both the template document and the generated documents keep the reference to the schedule in the ARRegister.ScheduleID field.

A user can edit accounts receivable schedules on the [Recurring Transactions](../UserGuide/AR_20_35_00.md) \(AR203500\) form.

## Transactions Generated by Documents { .section}

Accounts receivable documents generate general ledger transactions upon release, such as the following scenarios:

-   The release of an invoice will credit the sales revenue account and debit the accounts receivable asset account.
-   The release of a payment will credit the accounts receivable account and debit the cash account specified in the payment.

The following SQL query will return the GL transactions that correspond to the document.

```
SELECT 
    * 
FROM 
    ARRegister 
    LEFT JOIN GLTran 
        ON ARRegister.CompanyID = GLTran.CompanyID 
        AND ARRegister.DocType = GLTran.TranType 
        AND ARRegister.RefNbr = GLTran.RefNbr 
        AND GLTran.Module = 'AR' 
        -- The ReferenceID of GLTran stores the ID of the customer for AR transactions 
        AND ARRegister.CustomerID = GLTran.ReferenceID 
        AND ARRegister.BatchNbr = GLTran.BatchNbr 
```

## GL Transactions Generated by Applications { .section}

Normally, the application of a payment to an invoice is an internal AR operation that affects the customer balances but does not generate general ledger transactions.

However, GL transactions are generated when any of the following conditions are met:

-   `ARAdjust.RGOLAmt <> 0`, such as if realized gains or losses exist due to currency rate differences between the invoice and the payment.
-   `ARAdjust.AdjWOAmt <> 0 OR ARAdjust.CuryAdjgWOAmt <> 0 OR ARAdjust.CuryAdjdWOAmt <> 0`, such as if amounts have been written off the invoice during application.
-   `ARAdjust.AdjDiscAmt <> 0 OR ARAdjust.CuryAdjgDiscAmt <> 0 OR ARAdjust.CuryAdjdDiscAmt <> 0`, such as if a cash discount has been taken on the invoice during application.
-   The AR account specified in the adjusting document differs from the AR account specified in the adjusted document. \(The AR account is specified in ARRegister.ARAccountID.\)
-   The AR subaccount specified in the adjusting document differs from the AR subaccount specified in the adjusted document \(The AR subaccount is specified in ARRegister.ARSubID.\)
-   The branch specified in the adjusting document differs from the branch specified in the adjusted document \(The branch is specified in ARRegister.BranchID.\)

The following SQL query returns the GL transactions that correspond to the release of applications.

```
SELECT 
    * 
FROM 
    ARRegister 
    LEFT JOIN ARAdjust 
        ON ARRegister.CompanyID = ARAdjust.CompanyID 
        AND 
        ( 
            -- Outgoing applications of the document 
            ARRegister.DocType = ARAdjust.AdjgDocType 
            AND ARRegister.RefNbr = ARAdjust.AdjgRefNbr 
            OR 
            -- Incoming applications to the document 
            ARRegister.DocType = ARAdjust.AdjdDocType 
            AND ARRegister.RefNbr = ARAdjust.AdjdRefNbr
        ) 
    LEFT JOIN GLTran 
        ON ARAdjust.CompanyID = GLTran.CompanyID 
        AND ARAdjust.AdjBatchNbr = GLTran.BatchNbr 
        AND GLTran.Module = 'AR' 
```

**Parent topic:**[Reviewing Accounts Receivable DACs](../DeveloperGuide/DACOverview_AR_Mapref.md)

