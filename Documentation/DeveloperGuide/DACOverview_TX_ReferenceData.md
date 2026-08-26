# TX DACs: Reference Data {#_e360d8be-45d2-4aad-b447-a2e92dd13804 .concept}

The following types of DACs provide reference data:

-   The common DACs that are used when taxes are configured. These DACs also hold the rules of tax calculation.
-   The report configuration DACs that are used for the tax report structure. The DACs also contain the calculation rules.

The following sections describe these DACs in more detail.

## Common DACs { .section}

The common tax DACs, excluding tax agencies \(which are represented by [Vendor](https://help.acumatica.com/dacBrowser/PX.Objects.AP/Vendor) records\), provide the basis for tax calculation for various documents in the system. Users manually specify the settings that are stored in these DACs, which are listed in the following table.

|DAC Name|Description|
|--------|-----------|
|[Tax](https://help.acumatica.com/dacBrowser/PX.Objects.TX/Tax)|A record of this DAC represents a tax. The Tax properties describe the tax type and its calculation rules.|
|[TaxRev](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxRev)|A record of this DAC contains the tax rate that is effective at a certain date. A TaxRev record specifies the reporting group \(and in turn report lines because a reporting group is a set of reporting lines\) for which tax amounts will be aggregated during report preparation.|
|[TaxCategory](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxCategory)|A record of this DAC represents a tax category. This record is the header of a master-detail aggregate of a set of taxes. This record is used for the definition of the set of taxes that can be applied to a document line. [TaxCategoryDet](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxCategoryDet) is a detail of TaxCategory. The DAC implements a many-to-many relationship between Tax and TaxCategory.|
|[TaxZone](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxZone)|A record of this DAC represents a tax zone. This record is the header of the master-detail aggregate of a set of taxes. This record is used for the definition of the set of taxes that can be applied to the document. A [TaxZoneDet](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxZoneDet) record is a detail of a TaxZone record. The DAC implements a many-to-many relationship between Tax and TaxZone.|
|[Vendor](https://help.acumatica.com/dacBrowser/PX.Objects.AP/Vendor)|A record of this DAC represents the tax agency to which the tax is to be reported and paid. Also, a Vendor record specifies the calendar rules of reporting, default tax GL accounts, and tax report rounding rules. The Vendor.TaxAgency field indicates whether a vendor is a tax agency.|

In Acumatica ERP, tax zones and tax categories are used to determine the sets of taxes that are applied to a document line. The TaxZone DAC contains the data of each tax zone that has been defined on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, and the TaxCategory DAC holds the data of each tax category that has been defined on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form. A tax zone and a tax category each contain a set of taxes. A tax zone is specified for a document; a tax category is specified for a document line. The resulting set of taxes that will be applied to the document line is the intersection of the tax zone and tax category sets of taxes.

## Report Configuration DACs { .section}

The [TaxReportLine](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxReportLine) DAC contains tax report lines. A TaxReportLine record defines the tax report structure for a particular tax agency and is a part of formation amount rules. The DAC is mapped as many-to-many to reporting groups \(which are stored in [TaxBucket](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxBucket)\) and through them to taxes.

TaxBucket is the header of the master-detail aggregate, which specifies a set of tax agency report lines to be used for calculated tax amounts aggregation. TaxBucket is linked to Tax as one to many.

A [TaxBucketLine](https://help.acumatica.com/dacBrowser/PX.Objects.TX/TaxBucketLine) record is a detail of a TaxBucket. The TaxBucketLine DAC implements the many-to-many relationship between the TaxReportLine and TaxBucket. TaxBucketLine is also created for report lines that are detailed by tax zones.

**Parent topic:**[Reviewing Tax DACs](../DeveloperGuide/DACOverview_TX_Mapref.md)

