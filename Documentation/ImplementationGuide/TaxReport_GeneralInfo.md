# Tax Report Configuration: General Information {#_2f9c4165-cf38-466e-a2de-8dca2946bdd0 .concept}

A tax report is a document that contains tax information related to your business and that must be filed to a specific tax agency once per reporting period. The tax report is usually set up in a worksheet format that is determined by the particular tax agency. In Acumatica ERP, you can configure the content elements of the tax report based on the report form provided by the responsible tax agency, and define the rules for automatically filling the tax report with appropriate values. Although the tax reports differ depending on the taxes to be reported, generally the elements of the report form and the rules for filling the report are common.

## Learning Objectives { .section}

In this chapter, you will learn how to create and configure a tax report.

## Applicable Scenarios { .section}

You configure a tax report in Acumatica ERP to set up the processes of accumulating taxes and preparing the tax report when it comes due. To configure a tax report, you should use as a template a blank tax report form from the particular tax collection agency, and create a tax report with a similar structure in Acumatica ERP.

## Tax Report Configuration Process { .section}

In Acumatica ERP, a tax report is represented as a table into which the system records the total tax amounts and taxable amounts for the period to be reported to the tax agency. When you configure a tax report in Acumatica ERP, you set up report lines that correspond to the tax agency’s report boxes. The resulting tax report is shown as a table consisting of these lines. Each row of the table holds an accumulated tax amount or taxable amount calculated on sales or purchases during the tax reporting period, or a sum or difference of these amounts. The number of lines in a particular tax report may vary depending on the number of taxes you need to report.

To start the tax report configuration process, on the **Report Lines** tab of the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, you create the required lines in the report and specify the type of the amount \(tax or taxable\) that should be accumulated in each line. The number of the lines is prescribed by the tax report template from the applicable tax agency, but you can create additional lines for your internal use—for example, to accumulate some taxable amounts that should not be reported to the tax agency but that supervisors want to see. In these cases, you create the line and select the **Hide Report Line** check box for it: the amount will be accumulated in that line, but the line will be excluded from the tax report during its generation.

After you have created the required lines for the tax report, you need to create multiple *reporting groups* by using the **Reporting Groups** tab. A reporting group is an Acumatica ERP entity that consists of one report line or multiple report lines \(which you add into the group later\) and acts as a link between a particular tax and these report lines. Thus, the tax amounts and taxable amounts calculated based on this tax in all sales or purchase documents update the lines included in the reporting group. \(You will specify a reporting group or two reporting groups for each tax later.\)

A reporting group can have one of the following types:

-   *Output*: Specified for a tax that must be paid to a tax agency
-   *Input*: Specified for a tax that can be claimed from a tax agency

For each tax, you can specify one or two reporting groups that are effective on a specific date: no more than one *Input* group, and no more than one *Output* group.

The type of reporting group you specify for a tax depends on the type of the particular tax. You specify the type of reporting group by using the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form as follows:

-   For a *Sales* tax, define an *output* reporting group for tax amounts calculated on customer invoices and memos, which should be paid to the tax agency and \(optionally\) an *input* reporting group for tax amounts calculated on vendor bills and adjustments.
-   For a *Use* tax, define an *output* reporting group because the use tax amounts are paid to the tax agency.
-   For a *Withholding* tax, define an *output* reporting group because the withholding tax amounts are paid to the tax agency.
-   For *VAT* or *GST*, define an *input* reporting group for tax amounts calculated on vendor bills and adjustments that should be claimed from the tax agency, and an *output* reporting group for tax amounts calculated on customer invoices and memos that should be paid to the tax agency.

Once you have configured the elements of the tax report \(the report lines and reporting groups\), you need to add report lines to each reporting group you have created. You then associate each tax in the system with the appropriate reporting group, so that the taxes will be associated with the reporting groups, which in turn are related to some report lines. Thus, the tax amounts will be accumulated in the specific lines of the tax report.

## Tax Reporting Period { .section}

For each tax agency defined on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you can specify the frequency of tax report preparation in the **Default Tax Period Type** box on the **Tax Agency** tab; you can select *Half a Month*, *Month*, *Two Months*, *Quarter*, *Half a Year*, *Year*, or *Financial Period*.

The selected tax period type determines the tax reporting periods defined for the tax agency. You can view these tax periods for each company on the [Tax Periods](../UserGuide/TX_20_70_00.md) \(TX207000\) form, where you can also change the tax period type for a particular company if the period type differs from the default one. These tax periods will be displayed in the **Reporting Period** box on the [Prepare Tax Report](../UserGuide/TX_50_10_00.md) \(TX501000\) form while you are preparing a tax report.

## AP Bill to Pay the Reported Taxes { .section}

You use the [Release Tax Report](../UserGuide/TX_50_20_00.md) \(TX502000\) form to release the prepared tax report. You can set up the system to automatically generate an AP bill on release of a tax report to a particular agency. The AP bill will contain the total tax amount that you must pay to the tax agency for the selected reporting period. To set up the system to generate an AP bill while releasing a tax report, you do the following:

1.  On the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you select the **Automatically Generate Tax Bill** check box for the needed tax agency. With this setting an AP bill will be automatically generated on release of the tax report at the end of the reporting period.
2.  On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, you identify the line that accumulates the appropriate tax amounts, and select the **Net Tax** check box for that line.

Once a tax report is released, the system generates an AP bill in the amount of the line for which the **Net Tax** check box is selected. This AP bill appears on the **AP Documents** tab of the [Release Tax Report](../UserGuide/TX_50_20_00.md) form, where you can open and view the bill by clicking its number in the **Reference Nbr.** column. For details, see [Tax Report Preparation: Process Activity](../UserGuide/Taxes_Preparing_a_Tax_Report_Activity.md) and [Tax Report for VAT: Process Activity](../UserGuide/Taxes_Preparing_a_Tax_Report_VAT_Process_Activity.md).

If you have posted any documents to a closed reporting period for which you have already released a tax report, you can prepare a revision of the tax report for the closed reporting period. The functionality of updating a closed reporting period is available if the **Update Closed Tax Periods** check box is selected for the tax agency on the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) form.

**Parent topic:**[Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md)

