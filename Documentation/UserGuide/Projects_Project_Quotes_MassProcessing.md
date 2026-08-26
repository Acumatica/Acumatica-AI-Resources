# Project Quotes: Mass Processing {#_d130b508-2f01-4f68-8bd1-d96616d021db .concept}

This topic explains how to process multiple project quotes, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Validating Addresses { .section}

You can validate addresses for multiple projects and project-related documents \(pro forma invoices and project quotes\) on the [Validate Addresses in Project Documents](../Shared/../UserGuide/PM_50_70_00.md) \(PM507000\) form. This form is available if the *Address Validation Integration* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form and an address provider is configured on the [Address Providers](../Shared/../UserGuide/CS_10_30_00.md) \(CS103000\) form.

On the [Validate Addresses in Project Documents](../Shared/../UserGuide/PM_50_70_00.md) form, you select the form in which the address records were entered in the **Creation Form** box, and select the unlabeled check boxes in the rows to be processed in the table. Then you click **Validate** on the form toolbar. To instead validate all the listed address records, you click **Validate All** on the form toolbar.

## Mass-Printing { .section}

You can print multiple project quotes at once on the [Print/Email Project Quotes](PM_50_45_45.md) \(PM504545\) form. To do this, select the *Print* action and specify any selection criteria to narrow the list of quotes to be displayed. If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select the printer and specify the number of copies to be printed.

Then, select the unlabeled check boxes in the rows of the quotes you want to print and click **Process** on the form toolbar. Alternatively, click **Process All** to print all listed quotes.

## Mass-Emailing { .section}

You can email multiple project quotes to each customer or prospective customer at once on the [Print/Email Project Quotes](PM_50_45_45.md) \(PM504545\) form. To do this, select the *Send* action, and specify any selection criteria to narrow the list of documents.

Then select the **Send Documents in One Email** check box. If you want to combine each customer’s processed project quotes into one file, select the **Combine into One File** check box. The system will attach the file to the email.

**Attention:**

-   You can include up to 100 documents in a single email or combine up to 100 documents into one file.
-   If you select more than 100 documents, the system creates multiple emails, each within this limitation.

To send emails with project quotes, do one of the following:

-   To email only particular project quotes, select the unlabeled check boxes in the rows of the project quotes you want to email. Then click **Process** on the form toolbar.
-   To email all the listed project quotes, click **Process All**.

**Parent topic:**[Processing Project Quotes](../UserGuide/Projects_Project_Quotes_Mapref.md)

