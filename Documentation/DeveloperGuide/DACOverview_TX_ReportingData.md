# TX DACs: Reporting Data {#_ec04c758-7d6d-4ef3-9c20-2dfbce58aa0c .concept}

Reporting data is used to generate the next tax report, store the generated data, and represent the tax report itself.

## Tax Reporting { .section}

Tax reporting consists of the following processes:

-   Tax report preparation: The system creates a tax period \(which is represented by a [TaxPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxPeriod) record\) if necessary, and assigns the corresponding [TaxTran](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxTran) records to the period. The system then generates the tax report by aggregating document-level tax data. That is, TaxTran records are aggregated into a set of [TaxHistory](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxHistory) records.
-   Tax report voiding: The system deletes the previously created tax report and marks the corresponding TaxTran records as unreported.
-   Tax report release: The system closes the tax period and generates a tax agency bill.

A released tax report can be altered by a tax adjustment \(which is represented by a [TaxAdjustment](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxAdjustment) record\). The report's lines are represented by TaxTran records.

## Tax Report { .section}

The structure of the tax report is defined by a set of report lines \(which are stored in the [TaxReportLine](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxReportLine) DAC\). For tax report generation purposes, they are combined into reporting groups \(which are stored in the [TaxBucket](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxBucket) DAC\).

A tax report is represented by a set of [TaxHistory](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxHistory) records. TaxHistory is a record that contains the detailed data for the report line, and multiple TaxHistory records can exist for one report line. TaxHistory is an aggregation of the corresponding TaxTran records. When a tax report is prepared, TaxTran updates TaxHistory records of multiple report lines. The TaxReportLine records for update are obtained for each tax, its type, and the start date from the reporting group that is specified in the corresponding [TaxRev](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxRev) record.

**Parent topic:**[Reviewing Tax DACs](../DeveloperGuide/DACOverview_TX_Mapref.md)

