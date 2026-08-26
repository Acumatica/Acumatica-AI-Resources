# Construction Reports: AIA Reports {#_0e81288d-518b-4217-8f32-6627883e070b .concept}

This topic describes the structure of the American Institute of Architects \(AIA\) report in Acumatica ERP Construction Edition and the available report variations. Also, the topic provides information on how you can reflect historic retainage and the release of change orders for the project.

## AIA Report Structure {#section_j3j_qpv_qmb .section}

The AIA report consists of a signed summary sheet \(AIA Document G702™–1992, Application and Certificate for Payment\), followed by a schedule of values \(G703™–1992, Continuation Sheet\) that details the project tasks that have been completed and billed to date. Together, these documents are considered an application for payment, because the recipient can review the schedule of values and either accept or dispute the billed amount. If the recipient or contractor disagrees, they will send back redlines so that the contractor can revise and resubmit the AIA billing application. The prepared document that includes both the application sheet \(G702\) and continuation sheet \(G703\) is called an AIA report.

In an AIA report, the application sheet and continuation sheet provide convenient and complete forms on which the contractor can apply for payment and the architect can certify that payment is due. The application requires the contractor to show the status of the contract totals to date, including the total amount of the work completed and stored to date, the amount of retainage \(if any\), the total of previous payments, a summary of change orders, and the amount of payment currently being requested. The continuation sheet breaks the contract sum into parts of the work, in accordance with a schedule of values prepared by the contractor as required by the general conditions.

Also, the AIA report includes the following sheets:

-   The AR Invoices sheet. The sheet lists released original AR invoices and AR retainage invoices, which include the amount of payment currently being requested—the Current Payment Due amount on the application sheet \(G702\). The invoice date of the original AR invoices and AR retainage invoices is earlier than or the same as the invoice date of the pro forma invoice for which the AIA report is prepared.
-   The Change Orders sheet. The sheet lists change orders included in pro forma invoices with details, such as reference number, description, status, dates, amounts, and quantities \(if applicable\).

## Configuration of AIA Report Parameters for a Project {#section_tkv_pn4_qmb .section}

Based on project requirements, for a particular project, you define the format in which the AIA report will be prepared. To prepare a printable version of the AIA report, you select the line with the needed pro forma invoice in the table on the **Invoices** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, and click **AIA Report** on the table toolbar; you can instead open the pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form and click **AIA Report** on the form toolbar.

By default, a newly created project has the **AIA Level** set to *Summary* and the **Show Quantity in AIA Report** check box cleared. When you create an AIA report for a project with these settings, the standard [AIA Report](PM_64_40_00.md) \(PM644000\) report is prepared with continuation sheet lines grouped by project tasks.

If you need to include quantities in the lines of the continuation sheet of the AIA report prepared for a project, in the settings of the project on the [Projects](PM_30_10_00.md) form, you select the **Show Quantity in AIA Report** check box, so that the system will create the [AIA Report with Quantity](PM_64_45_00.md) \(PM644500\) report. To list the continuation sheet lines without grouping them by project tasks \(that is, as the lines are presented in the corresponding pro forma invoice\), select *Detail* in the **AIA Level** box.

## Date-Sensitive Data in AIA Reports {#section_pbt_tqy_rmb .section}

AIA reports are date-sensitive, which means that the particular amounts are included or not included in the report based on the report date; this in turn could lead to differences between the calculation of amounts in AIA reports and the financial calculations in other documents. The date on which the AIA report is prepared affects the amounts in the AIA application sheet as follows:

-   In the **Net Change by Change Orders** amount, the system includes only change orders that have an approval date before the invoice date of the pro forma invoice for which the AIA report is being prepared.
-   In the **Retainage** amount, the system does not include the retainage that has been released before the creation of the pro forma invoice for which the AIA report is being prepared \(that is, the invoice date of the retainage invoice is earlier than the invoice date of the pro forma invoice\).
-   In the **Less Previous Certificates for Payment** amount, the system includes the sum of the retainage amounts that have been released before the date of the previous application \(that is, the invoice date of the retainage invoice is earlier than or the same as the invoice date of the previous pro forma invoice prepared for the project\).
-   In the **Current Payment Due** amount, the system includes the amounts of the retainage invoices that have been prepared since the last application \(that is, the invoice date of the retainage invoice is after the invoice date of the previous pro forma invoice and is earlier than or the same as the invoice date of the pro forma invoice for which the AIA report is prepared\).

The date on which the AIA report is prepared affects the following amounts in the AIA continuation sheet:

-   In the amounts in the **Change Orders** and **Change Qty.** columns, the system includes only change orders that have an approval date that is earlier than the invoice date of the pro forma invoice for which the AIA report is being prepared.
-   In the **Retainage Held** amount, the system does not include the retainage that has been released before the creation of the pro forma invoice for which the AIA report is being prepared \(that is, the invoice date of the retainage invoice is earlier than the invoice date of the pro forma invoice\).

For information on how to prepare the AIA report for released retainage, see [Construction Reports: AIA Reports for Released Retainage](Construction_Reports_AIA_Released_Retainage.md).

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

