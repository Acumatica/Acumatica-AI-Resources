# Tax Report Preparation: To Prepare a Tax Report for a Closed Tax Period {#_997c1b23-d74a-4ae7-9a5e-36a0543a7d8a .task}

You use the [Prepare Tax Report](TX_50_10_00.md) \(TX501000\) form to generate a tax report for the closed reporting period.

## Before You Proceed {#section_wmn_fjv_vxb .section}

-   Make sure that the tax report is properly and fully configured for the particular tax agency. For details, see [Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md).
-   Make sure that the **Update Closed Tax Periods** check box is selected for the tax agency on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

## To Prepare a Tax Report For a Closed Reporting Period {#section_ymn_fjv_vxb .section}

1.  Open the [Prepare Tax Report](../Shared/../UserGuide/TX_50_10_00.md) \(TX501000\) form.
2.  In the **Company** box, select the company on behalf of which the tax report will be prepared.
3.  In the **Branch** box, select the branch of the company on behalf of which the tax report will be prepared.

    This box appears on the form is the selected company has the **File Taxes by Branch** check box selected in the **Tax Registration Info** section on the **Company Details** tab of the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form.

4.  In the **Tax Agency** box, select the tax agency for which you are preparing the tax report.
5.  In the **Tax Period** box, select the tax period with the *Closed* status for which you want to prepare a tax report.
6.  On the form toolbar, click **Prepare Tax Report**.

As a result of the steps described in the procedure above, the system prepares another tax report for the specified tax agency and automatically opens the [Release Tax Report](TX_50_20_00.md) \(TX502000\) form. On this form, in the **Revision ID** box, the revision number of the tax report is incremented by 1. For details, see [Tax Report Preparation: Tax Report for a Closed Period](Taxes_Preparing_a_Tax_Report_Closed_Period.md) and [Releasing a Sales Tax Report](Taxes_Releasing_a_Tax_Report_Mapref.md).

## Notes About the Procedure {#section_ann_fjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   The **Branch** box is available only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) from.

    You can select the consolidating branch in this box, if applicable, only if the **File Taxes by Branch** check box is cleared for the consolidating branch on the [Branches](CS_10_20_00.md) \(CS102000\) form. If this check box is selected, you can select only a non-consolidating branch.


Note also that new transactions should be posted in the system to the specified reporting period so that you can create another tax report with updated data.

**Parent topic:**[Preparing a Tax Report for Sales Taxes](../UserGuide/Taxes_Preparing_a_Tax_Report_Mapref.md)

