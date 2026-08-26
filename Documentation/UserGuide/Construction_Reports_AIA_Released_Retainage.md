# Construction Reports: AIA Reports for Released Retainage {#_567860e1-bfb9-4049-ab2b-07fee33d64ff .concept}

The topic provides information on how you can print the AIA report for released retainage.

If the *Retainage Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can create an AIA report that includes the retainage that has been fully or partially released \(depending on the date for which the AIA report is prepared\), or that includes all released retainage at the end of the project.

You can prepare an AIA report for released retainage if the following conditions have been met:

-   The retainage in the financial period for which the report is being prepared has been released.
-   The zero pro forma invoice \(that is, the pro forma invoice prepared during project billing with a pending invoice amount of 0\) has been created, and the invoice date of the zero pro forma invoice is the same as or later than the date of the corresponding AR retainage invoice.

    A zero pro forma invoice can be created only if in the billing rule assigned to a project task, the **Create Lines with Zero Amount and Quantity** check box is selected in the progress billing step on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form. You run project billing for a project with a pending invoice amount of 0 to prepare a zero pro forma invoice.


If all conditions are met, to prepare the printable version of the AIA report, you select the line with the zero pro forma invoice in the table on the **Invoices** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, and click **AIA Report** on the table toolbar. Alternatively, you can open the zero pro forma invoice on the [Pro Forma Invoices](PM_30_70_00.md) \(PM307000\) form and click **AIA Report** on the form toolbar. Depending on the date for which the AIA report is prepared, the report will include the retainage that has been fully or partially released in the middle of the project, or all released retainage at the end of the project. In the prepared report, the total retainage amount on the cover sheet of the AIA report is calculated as the sum of the held retainage amounts on the AIA continuation sheet.

**Parent topic:**[Working with Construction Reports](../UserGuide/Construction_Reports_Mapref.md)

