# TX DACs: Transactional Data {#_50235fc8-b09a-49a5-8a95-1c78878020c7 .concept}

The system calculates taxes for documents and document lines. There are two different types of tax calculation rules: item-level and document-level. The system, however, forms and stores tax data for both a document and its lines, regardless of the tax calculation rule.

The system stores tax calculation results in the following DACs:

-   For a document line, in the XXTax DAC, where *XX* stands for the two-letter abbreviation of the functional area, such as *AR* or *AP*
-   For a document, in the TaxTran DAC

## XXTax { .section}

XXTax is a DAC that contains the tax amounts for each tax that is applied to a document line in the *XX* functional area of the document. For example, for AR invoice lines, the DAC is [ARTax](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTax).

## TaxTran { .section}

[TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran) is a DAC that serves both of the following purposes at the same time:

-   TaxTran is a record of the tax amount that can be reported to a tax period. The tax report is built from these records. After the tax report has been prepared, the reportable TaxTran record can belong to multiple tax periods.
-   TaxTran is an entity that stores the tax amount for the document for each applied tax. The system includes the following groups of such entities:
    -   Reportable TaxTran entities: DACs of this group are descendants of the TaxTran DAC, such as [APTaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTaxTran) , [ARTaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTaxTran), and [CATaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.CA/CATaxTran). The data of these DACs is stored in the TaxTran database table. In the following special cases, these TaxTran records are not reported:
        -   A TaxTran record that represents the amounts of a withholding tax for a simple AP bill or adjustment. These TaxTran records exist only for intermediate tax calculation and to show the tax amount to the user. The reportable TaxTran record for this record is created when the document is paid.
        -   A TaxTran record that represents suspended VAT amounts.
        -   Lines of a tax bill, tax credit adjustment, or tax debit adjustment.
    -   TaxTran entities whose purpose is only to aggregate the tax amount for document that can be shown in a user interface: Records of these DACs do not have a use that pertains to tax accounting. These DACs, such as [SOTaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.SO/SOTaxTran) and [SOTax](https://help.acumatica.com/dacBrowser/PX.Objects.SO/SOTax), do not inherit from the TaxTran DAC.

The TaxTran DAC contains amounts without the sign by which this tax report amount will be adjusted. The sign is available in the Sign field of the [TaxTranReport](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTranReport) projection DAC.

## TaxTranReport { .section}

The [TaxTranReport](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTranReport) DAC is a projection over [TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran). In addition to the fields of the TaxTran DAC, it contains the following two fields:

-   TranTypeInvoiceDiscriminated: A user-friendly value of TranType.
-   Sign: A sign multiplier for the calculation of the report amount. To get the amount of the TaxTran with the sign that will be included in the report, you need to multiply all of the following:
    -   Sign
    -   The sign of LineMult \(which is the update rule\) of the TaxReportLine record
    -   The amount that is specified in the TaxTran record

## Tax Bill and Adjustments { .section}

A tax bill is a special document that creates a [TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran) record for an AP document. A tax bill has an [APInvoice](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APInvoice) record as a header and TaxTran records as document lines. The TaxTran lines of a tax bill are not reportable.

A record in the [TaxAdjustment](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxAdjustment) DAC represents the header of a tax adjustment document. The lines of this document are represented by TaxTran records.

## Tax Period and Tax Year { .section}

The [TaxPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxPeriod) DAC holds the records of the agency tax period for the tenant. The records of this type are created on the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) \(TX501000\) form when the user selects a tax agency. All the periods of a year are created at the same time. If the user voids the tax report for the first period of a year, the system deletes all the tax periods for that year.

The [TaxYear](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxYear) DAC contains the tax year records. A tax year is a supplementary entity for tax period generation.

**Parent topic:**[Reviewing Tax DACs](../DeveloperGuide/DACOverview_TX_Mapref.md)

