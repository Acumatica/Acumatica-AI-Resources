# Consolidated Retainage Documents {#_c0c868e4-17c8-4875-82c3-75f4b86a00eb .concept}

In Acumatica ERP, the system can create a *consolidated retainage document* for multiple original documents that have the same customer and project.

A consolidated retainage document can be fully or partially consolidated. If multiple lines of documents related to the same customer and project are selected for processing on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, the system will automatically create a consolidated retainage document for them.

A consolidated retainage document can be paid partially. The system will recalculate the **Paid/Adjusted Retainage** amount for each original invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. Retained taxes are supported in consolidated retainage documents.

## Creation of Consolidated Retainage Documents {#section_u3q_4jv_vxb .section}

On the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, the documents or document lines selected for processing are included in one consolidated retainage document if all of the following conditions are met:

-   The *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   More than one document or document line is selected for processing.
-   In the original documents related to the selected documents or document lines, the following UI elements contain the same value.

    |UI Element|Location|Comments|
    |----------|--------|--------|
    |**Customer**|Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form| |
    |**Project**|Summary area of the [Invoices and Memos](AR_30_10_00.md) form|If the *Contract Management* feature is enabled, the box name is **Project/Contract**.|
    |**Location**|Summary area of the [Invoices and Memos](AR_30_10_00.md) form| |
    |**Currency**|Summary area of the [Invoices and Memos](AR_30_10_00.md) form|Because retainage is not supported in foreign currency documents, all original invoices have the same currency, which is the base currency of the originating branch.|
    |**Curr. Rate Type**|The **Financial Settings** section on the **Financial** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form| |
    |**Customer Tax Zone**|The **Tax Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form| |
    |**Tax Calculation Mode**|The **Tax Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form|This box is displayed if the *Net/Gross Entry Mode* feature is enabled.|
    |**Tax Exemption Number**|The **Tax Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form| |
    |**Tax Exemption Type**|The **Tax Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form| |
    |**Branch**|The **Link to GL** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form|This is the originating branch of the document.|
    |**AR Account**|The **Link to GL** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form| |
    |**AR Subaccount**|The **Link to GL** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form|This box is displayed if the *Subaccounts* feature is enabled.|


**Important:** If the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form and only one document is selected on the [Release AR Retainage](AR_51_00_00.md) form, a non-consolidated retainage document will be created. That is, for a line related to an original document with the **Pay by Line** check box cleared on the [Invoices and Memos](AR_30_10_00.md) form, the retainage document will also have the **Pay by Line** check box cleared. Thus, in some cases, an original document can have both consolidated and non-consolidated retainage documents.

The type of the consolidated retainage document \(*Invoice* or *Credit Memo*\) is determined by the sign of the resulting amount in the consolidated document. If the amount is positive, the type of the consolidated document is *Invoice*; if the amount is negative, the type of the consolidated document is *Credit Memo*.

If the original document has the **Pay by Line** check box cleared on the [Invoices and Memos](AR_30_10_00.md) form, the retainage amount from this document is shown in the consolidated retainage document as one line on the **Details** tab. If the original document has the **Pay by Line** check box selected, the retainage amount from this document is shown as multiple lines on the **Details** tab, depending on the number of lines selected for processing on the [Release AR Retainage](AR_51_00_00.md) form.

When you click **Release Retainage** on the More menu of the [Invoices and Memos](AR_30_10_00.md) form, the system opens the [Release AR Retainage](AR_51_00_00.md) form with the **Date** and **Post Period** boxes filled in by default with the current business date and period.

## Support of Retained Taxes in Consolidated Retainage Documents {#section_ajq_4jv_vxb .section}

If the **Retain Taxes** check box is selected in the **Retainage Settings** section on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the system calculates retained taxes for consolidated retainage documents. If the same **Tax ID**, **Taxable Amount**, and **Tax Amount** are applied to multiple lines of a retainage document related to different original documents, on the **Taxes** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the tax amount will be summed for each tax ID in the **Retained Tax** column.

**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

