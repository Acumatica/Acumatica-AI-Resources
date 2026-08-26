# Project Mailing Configuration: Invoice Mailings {#_6cdc6f9e-498b-4111-af89-bfff4de4632c .concept}

For individual projects, you can configure different formats for printable pro forma invoices and accounts receivable invoices. The invoice format may depend on the project type; for instance, an installation project may have one invoice format, and a repair project may have a different invoice format. Also, a default invoice format can be specified for particular customers, with this format used for all projects of this customer unless the user specifies a different format. For example, a company might use a particular invoice format for government customers, or for customers who work with a particular bank to get loans for their projects \(and this bank dictates the invoice format\).

## Defining Printing Forms of Invoices for Projects { .section}

On the **Mailing &amp; Printing** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form, you can specify a custom format and an email notification template that should be used for the printing and emailing of the invoices prepared for the particular project. When you create a new project, the system copies all the predefined mailing settings from the **Mailing &amp; Printing** tab of the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form, but you can override them. You can use the following predefined mailings:

-   *PROFORMA*: The mailing with this identifier is used to print pro forma invoices. By default, this mailing uses the [Pro Forma Invoice](../UserGuide/PM_64_20_00.md) \(PM642000\) report for printing the pro forma invoice.
-   *INVOICE*: The mailing with this identifier is used to print project-related accounts receivable invoices. By default, this mailing uses the ProInvoice/Memo \(PM641000\) report, which is a copy of the [Invoice/Memo](../UserGuide/AR_64_10_00.md) \(AR641000\) report, for printing the invoice.

If you need to override the printing form of pro forma invoices or accounts receivable invoices for a project, you edit the respective mailing setting but do not edit the mailing identifier, which is the system setting. For example, suppose you need to override the printing form of pro forma invoices for a project. For the *PROFORMA* mailing of this project, you select the needed project report in the **Report** column of the **Mailing** table on the **Mailing &amp; Printing** tab of the [Projects](../UserGuide/PM_30_10_00.md) form.

## Printing Invoices { .section}

When you print a pro forma invoice on the [Pro Forma Invoices](../UserGuide/PM_30_70_00.md) \(PM307000\) form, the system uses the report specified for the *PROFORMA* mailing of the corresponding project on the **Mailing &amp; Printing** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form. If the corresponding project has no mailing setting with the *PROFORMA* identifier, an error occurs.

When you print a project-related accounts receivable invoice on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form, the system searches for the report to be printed in the following order:

1.  The report specified for the *INVOICE* mailing, if one is specified, of the corresponding project on the **Mailing &amp; Printing** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.
2.  The report specified for the customer on the **Mailing &amp; Printing** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(PM303000\) form if the *INVOICE* mailing of the corresponding project is not active. For more information about mailing settings for customers, see [Mailings for Customers: General Information](../UserGuide/Finance_PredefinedMailings_Customers_GeneralInfo.md).
3.  The [Invoice/Memo](../UserGuide/AR_64_10_00.md) \(AR641000\) report if the *INVOICE* mailing of the corresponding project and the customer is not active.

**Parent topic:**[Project Mailings](../ImplementationGuide/config_Project_Mailings_Mapref.md)

