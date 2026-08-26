# Sales Tax Adjustments: Implementation Checklist {#_8c085213-8ae9-4a53-a542-b62ab8eb8a10 .concept}

To ensure that the system is configured properly for making a tax adjustment to a tax report, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Vendors](AP_30_30_00.md) \(AP303000\)|For each tax agency to which you will submit tax reports, you should create a vendor account with the **Vendor is Tax Agency** check box selected.|For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](../ImplementationGuide/TaxAgency_SalesTaxes_Implem_Activity.md).|
|[Tax Preferences](TX_10_30_00.md) \(TX103000\)|Make sure that a numbering sequence has been specified for *Adjust Input* and *Adjust Output* documents. You can select the predefined numbering sequence \(*TXADJUST*\) or create a new one for tax adjustments on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.| |
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|Make sure that the tax report is properly and fully configured for the particular tax agency.|For details, see [Tax Report Configuration: To Create a Tax Report for Sales Taxes](../ImplementationGuide/TaxReport_SalesTaxes_Implem_Activity.md).|
|[Release Tax Report](TX_50_20_00.md) \(TX502000\)|Make sure that a tax report for a specified tax period has been prepared.|For details, see [Preparing a Tax Report for Sales Taxes](Taxes_Preparing_a_Tax_Report_Mapref.md).|

## Validation of Configuration {#section_xwn_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you create a tax adjustment by performing instructions similar to those described in [Sales Tax Adjustments: Process Activity](Taxes_Creating_Tax_Adjustment_Activity.md).

**Parent topic:**[Creating Sales Tax Adjustments](../UserGuide/Taxes_Creating_Tax_Adjustment_Mapref.md)

