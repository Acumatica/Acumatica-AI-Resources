# Construction Reports: Substantiated Billing Reports {#_6488045c-2bd7-4d95-957d-9b191cc10688 .concept}

In the construction industry, when contractors bill their customers, the customers may want to see proof of the costs. In this case, the contractors need to provide supporting documentation along with the customer statement or invoice. For this purpose, contractors use substantiated billing reports. A substantiated billing report is a detailed document that provides evidence to support the charges and costs billed to a client. This report is crucial for transparency, proving that all billed amounts are justified and verifiable.

Acumatica ERP Construction Edition includes the following substantiated billing reports: [Substantiated Billing](PM_65_00_00.md) \(PM650000\) and [Substantiated Billing: Consolidated](PM_65_00_50.md) \(PM650050\). These reports are specifically designed to display a detailed breakdown of the costs incurred for a particular project, as well as supporting documentation for these costs.

## The Substantiated Billing Report { .section}

The [Substantiated Billing](PM_65_00_00.md) \(PM650000\) report provides a list of costs for the specified period with all transactions related to accounts payable invoices, debit adjustments, credit adjustments, labor, and other project expenses. The report groups these costs by the cost codes. You prepare a substantiated billing report for a particular project. If you need to include a particular cost transaction in the substantiated billing report, you can link it to a pro forma invoice. For more information on linking cost transactions to pro forma invoices, see [Pro Forma Invoices: Links to Project Transactions](Projects_Pro_Forma_Invoices_LinkTransactions.md).

You can filter the cost transactions to be included in the report by date range or the pro forma invoice to which these cost transactions are linked. You can also narrow the list of cost transactions to be included in the report by using the **Select Transactions By** report parameter, which has the following options:

-   *Date Range* \(default\): The printable report will show all cost transactions that are related to the selected project and have been posted to account groups of the *Expense* type within the specified date range. If this option is selected, the **Start Date** and **End Date** parameters must be specified.
-   *Pro Forma Invoice*: The printable report will show all cost transactions that have been posted to account groups of the *Expense* type and are related to the selected pro forma invoice of the selected project. If this option is selected, you must specify the **Pro Forma Invoice Nbr.** parameter.
-   *Pro Forma Invoice and Date Range*: The printable report will show all cost transactions that are related to the selected pro forma invoice of the selected project and have been posted to account groups of the *Expense* type within the specified date range. If this option is selected, you must specify the **Start Date**, **End Date**, and **Pro Forma Invoice Nbr.** parameters.

You can also include or exclude the non-billable cost transactions by selecting or clearing the **Include Non-Billable Transactions** check box in the report parameters. If the check box is cleared, the report includes only billable cost transactions—that is, project transactions that have the **Billable** check box selected on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. If the check box is selected, the report includes billable and non-billable transactions.

## The Substantiated Billing \(Consolidated\) Report { .section}

The [Substantiated Billing: Consolidated](PM_65_00_50.md) \(PM650050\) report provides the same information as the [Substantiated Billing](PM_65_00_00.md) \(PM650000\) report in a downloadable format. In addition to the list of costs and transactions of a project for the specified period, the generated PDF report includes all scanned or uploaded images \(of the PNG, JPG, JPEG, BMP, GIF, TIFF, or TIF format\). Each of these images is attached to the corresponding cost record as a separate pages.

**Attention:** The files that cannot be included directly in the PDF file \(such as encrypted PDF files\) are added as hyperlinks that provide access to the attachments.

You can narrow the list of cost transactions to be included in the report by using the **Select Transactions By** report parameter, which has the following options:

-   *Date Range* \(default\): The PDF report will show all cost transactions that are related to the selected project and have been posted to account groups of the *Expense* type within the specified date range. If this option is selected, the **Start Date** and **End Date** parameters are required.
-   *Pro Forma Invoice*: The PDF report will show all cost transactions that have been posted to account groups of the *Expense* type and are related to the selected pro forma invoice of the selected project. If this option is selected, the **Pro Forma Invoice Nbr.** parameter is required.
-   *Pro Forma Invoice and Date Range*: The PDF report will show all cost transactions that have been posted to account groups of the *Expense* type within the specified date range and are related to the selected pro forma invoice of the selected project. If this option is selected, the **Start Date**, **End Date**, and **Pro Forma Invoice Nbr.** parameters are required.

You can include or exclude the non-billable cost transaction by selecting or clearing the **Include Non-Billable Transactions** check box in the report parameters. If the check box is cleared, the report includes only billable cost transactions—that is, project transactions that have the **Billable** check box selected on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. If the check box is selected, the report includes billable and non-billable transactions.

You can also include line-level attachments of the corresponding cost records in the PDF report by selecting the **Copy Line Attachments to Report** check box in the report parameters. If the check box is selected, the PDF report will include the line-level attachments of the included documents originating from the *AP*, *PM*, *GL*, and *CA* sources. This could be useful, for example, if you need to provide the original images that have been attached to the lines of expense receipts, AP documents, or cash transactions, as a proof of costs.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

