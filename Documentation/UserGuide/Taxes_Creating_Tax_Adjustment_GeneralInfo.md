# Sales Tax Adjustments: General Information {#_2472ba4d-87b7-4985-a81e-cf73400df0c5 .concept}

Once you have prepared the tax report on the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form, the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form opens. Before you release the tax report \(which closes the corresponding tax period and generates the appropriate AP bill, as described in [Release of Sales Tax Report: Process Activity](Taxes_Releasing_a_Tax_Report_Activity.md)\), you can perform the following operations:

-   Adjust the amounts shown in the tax report
-   View different revisions of the tax reports \(which can also be done after the tax report is released\)
-   Void the tax report, as illustrated in [Voiding of a Sales Tax Report: Process Activity](Taxes_Voiding_a_Tax_Report_Activity.md)

## Learning Objectives {#section_kvn_fjv_vxb .section}

In this chapter, you will learn how to create a tax adjustment to a tax report.

## Applicable Scenarios {#section_mvn_fjv_vxb .section}

You create tax adjustments to a tax report if you want to adjust the taxable or tax amounts to be reported without processing additional AR or AP documents. For example, this may happen if a customer has gone bankrupt and your company determines that their invoices need to be written off.

## Numbering Sequence for Tax Adjustments {#section_ovn_fjv_vxb .section}

In Acumatica ERP, a predefined numbering sequence \(*TXADJUST*\) is available and can be used for tax adjustments of both the *Adjust Output* and *Adjust Input* types.

Before users start to work with the tax functionality, an administrative user can select the *TXADJUST* numbering sequence in the **Tax Adjustment Numbering Sequence** box on the [Tax Preferences](TX_10_30_00.md) \(TX103000\) form. A different numbering sequence can instead be specified in this box as long as it has first been created on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form. This numbering sequence will be used by the system for tax adjustments created on the [Tax Adjustments](TX_30_10_00.md) \(TX301000\) form.

## Adjustments to the Tax Report {#section_rvn_fjv_vxb .section}

You can create a tax adjustment document manually to adjust the appropriate tax amounts or taxable amounts \(or both\) in the prepared tax report. A tax adjustment can be created for a past tax period. In this case, the system will include this tax adjustment document in the tax report prepared for the next open period. If a tax adjustment date belongs to a future period, the system will include this tax adjustment document when it prepares a tax report for this period.

To create an adjustment, on the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form, while you are viewing the applicable report, click **Adjust Tax** on the form toolbar; the [Tax Adjustments](TX_30_10_00.md) \(TX301000\) form opens. For details, see [Sales Tax Adjustments: Process Activity](Taxes_Creating_Tax_Adjustment_Activity.md).

On the [Tax Adjustments](TX_30_10_00.md) form, in the **Type** box, you can select one the following types of adjustment document to be created:

-   *Adjust Output*: With this type of document, you can adjust the tax and taxable amounts for taxes with the *Output* type \(for example, a sales tax\). For details about the creation of such a tax, see [Sales Taxes: To Create a Sales Tax for Use in AR](../ImplementationGuide/SalesTaxes_Implem_Activity_AR.md).
-   *Adjust Input*: With this type, you can adjust the tax and taxable amounts for taxes with the *Input* type \(for example, a VAT or a sales tax used in AP\). For details about the creation of such a tax, see [Sales Taxes: To Configure a Sales Tax for Use in AP](../ImplementationGuide/SalesTaxes_Implem_Activity_AP.md).

Once you select a type, you should select an appropriate tax in the **Tax ID** box on the **Details** tab and then enter the required amounts in the **Taxable Amount** and **Tax Amount** boxes. You can enter either positive amounts or negative amounts, depending on whether you need to increase or reduce the corresponding tax and taxable amounts in the tax report.

Once you create and release a tax adjustment document, the system generates a GL transaction that updates the tax payable \(or tax claimable\) account and the expense account assigned to the vendor that is a tax agency. The values in the report lines are changed automatically if a tax report for the adjustment tax period has already been prepared.

**Parent topic:**[Creating Sales Tax Adjustments](../UserGuide/Taxes_Creating_Tax_Adjustment_Mapref.md)

