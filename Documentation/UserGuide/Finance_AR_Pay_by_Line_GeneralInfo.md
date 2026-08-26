# Applying AR Payments to Particular Lines: General Information {#_a294c829-bed7-4976-ac5d-3307503af1a8 .concept}

Some industries track the expenses and cash flows of particular projects with a high degree of granularity. Project expenses are recorded in the lines of an invoice, with each line corresponding to a specific combination of a project, project task, and cost code \(if applicable\). In Acumatica ERP, you can create an AR payment that pays particular lines \(or one line\) of any number of AR invoices.

You can use this functionality if the *Payment Application by Line* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the functionality of paying AR documents by line
-   Process an AR invoice that can be paid by line
-   Enter a payment for particular lines of the AR invoice

## Applicable Scenarios { .section}

You create AR documents that can be paid by line if you want the ability to see which lines of a particular invoice were covered by a partial payment or to pay invoices in that way.

## Configuration of Payment by Line { .section}

For it to be possible to apply payments to individual lines, the needed configuration steps must be performed in Acumatica ERP as follows:

-   The *Payment Application by Line* feature must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    If you also want to give users the ability to track retainage by individual document lines, the *Retainage Support* feature should also be enabled. For details, see [To Enter an Invoice with Retainage that Can Be Paid by Line](AR__How_To_Enter_Invoice_Paid_by_Line.md).

    Additionally, for each line to correspond to a particular cost code \(as well as project and project task\), the *Cost Code* feature must be enabled.

-   Optional: In the settings of any customer class, you select the **Pay by Line** check box on the **General** tab \(**Default Financial Settings** section\) of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. With this setting, the ability to apply payments to individual lines of AR documents is turned on by default for newly created customers of the customer class. If this check box is selected for a class, when you create a customer and assign it to the class, the **Pay by Line** check box on the **Payment** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form is selected by default. It can be cleared for a particular customer, if needed. \(The customer setting is then used as the default setting for the AR document.\)
-   Optional: In the settings of any customer, you select the **Pay by Line** check box on the **Payment** tab \(**Default Financial Settings** section\) of the [Customers](AR_30_30_00.md) form. This gives users the ability to apply payments to individual lines of the AR documents of this customer. If a customer with this check box selected is specified for an invoice, the **Pay by Line** check box is selected by default on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

You can turn on the ability to pay documents by line for any customer class and any customer both during initial configuration and at any time thereafter. You can also turn off this capability for any class or customer, if needed.

## Entry of Documents That Can be Paid by Line {#section_v5q_4jv_vxb .section}

When you are entering an AR document \(invoice or credit memo\) that can be paid by line, you either select a customer for which the **Pay by Line** check box is selected or you select the **Pay by Line** check box for the document in the Summary area of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

Then you add lines to the AR document on the **Details** tab, specifying the inventory ID, project task, and cost code \(if the *Cost Codes* feature has been enabled\) for each line, as well as any other settings you want to enter or change. The system inserts a line number for each line in the **Line Nbr.** column, which appears in the table when the **Pay by Line** check box is selected for a document.

When paying these documents on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you can select separate lines of the same document in the table on the **Documents to Apply** tab, or you can add lines from different documents that are associated with the same customer. If a document line has been included in a payment that has not been released yet, that line cannot be included in a different payment. If a document with a payment applied to a document line has been released but the document line has not been fully paid, you can open another payment document \(that is, other than the one applied to the document line\) and select the document line to pay the remaining balance.

After you release the payment, you can view the unpaid balance of the original document in the **Balance** box in the Summary area of the [Invoices and Memos](AR_30_10_00.md) form.

Credit memo lines can be applied to documents with the *Payment*, *Prepayment*, and *Refund* types on the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form.

Credit memos paid by line cannot be directly applied to invoices on the [Payments and Applications](AR_30_20_00.md) form. To apply credit memo lines, you should create a payment on this form, and then apply an invoice and credit memo lines to this payment.

On the **Documents to Apply** tab of the [Payments and Applications](AR_30_20_00.md) form, a positive value in the **Amount Paid \(Payment currency\)** column increases the payment's available balance for the credit memo lines with positive balances; a negative value in this column decreases the payment's available balance for the credit memo lines with negative balances. In a refund, positive credit memo lines decrease the available balance, while negative credit memo lines increase it.

When the system loads documents for applications, positive credit memo lines and negative invoice lines are loaded and processed first because they increase the payment's available balance.

If you reverse applications of the positive credit memo lines, they will be processed in the same way as reversals of credit memos with the **Pay by Line** check box cleared. If you reverse applications of the negative credit memo lines, the lines will be processed in the same way as reversals of applications for positive invoice lines. The value in the **Amount Paid \(Payment currency\)** column for reversals is always shown with the opposite sign of that used for the original application.

You can also void payments and refunds applied to credit memo lines with the negative sign.

## Entry of Lines with a Negative Extended Price {#_df65bff1-b5de-4e1d-97ee-e328a9001101 .section}

Invoices paid by line can have lines with a negative extended price. You create these invoice lines if you want to correct previously billed amounts in the scope of the next billing without having to create a credit memo. \(If there will be no subsequent billing and you want to decrease the billed amount, you can create a credit memo.\) For invoices with retainage, the retainage amounts and taxable invoice lines will be calculated by the system based on the value specified in the **Ext. Price** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

When retainage is released for all lines of the original invoice, including negative lines, the system creates a retainage invoice on the [Invoices and Memos](AR_30_10_00.md) form with lines with negative and positive amounts, but the total amount is a positive value.

The system supports cash discounts for AR invoices that have lines with negative amounts.

## Application of Payments to Negative Document Lines {#_bd1ecf27-2cab-40df-a9ed-74a591593556 .section}

The system processes negative amounts in invoice lines in the same way as it processes lines of credit memos.

A payment with only one negative line applied cannot be released. Such a payment should be applied to another positive line of the invoice; that is, the **Payment Amount** box on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form should have a value greater than or equal to *0.00*.

You should apply payments and credit memos to and release retainage for an invoice or credit memo that can be paid by line—a document with the **Pay by Line** check box selected on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form—even if the total balance or the unreleased retainage of the document is *0.00*, but the document lines have a balance or the document has unreleased retainage. \(For these documents, the **Pay** and **Release Retainage** commands \(under **Processing**\) on the More menu of the [Invoices and Memos](AR_30_10_00.md) form, as well as the **Reference Number** selector on the [Payments and Applications](AR_30_20_00.md) form are available.\)

Documents that can be paid by line cannot have a document balance that is less than *0.00* or greater than the document balance before payment. For example, an invoice has the following lines and a balance of *600*:

-   **Line Nbr.**: *1*, **Ext. Price**: `–100`
-   **Line Nbr.**: *2*, **Ext. Price**: `200`
-   **Line Nbr.**: *3*, **Ext. Price**: `500`

You cannot pay only Line 2 and Line 3 with a total balance of *700*, because in this case the document balance will become negative. Also, you cannot pay Line 1 separately, because in this case the document balance will become *700*, which is greater than its amount \($600\).

## Overview of Payment by Line {#section_ovq_4jv_vxb .section}

When you create a payment for particular lines of an AR invoice, the process unfolds as follows:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you create an invoice, selecting the **Pay by Line** check box in the Summary area, and then adding multiple lines to this invoice. For details, see [To Enter an Invoice with Retainage that Can Be Paid by Line](AR__How_To_Enter_Invoice_Paid_by_Line.md). You then release the invoice.
2.  You create a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. On this form, you select lines of the invoices associated with the selected customer and pay them in full or partially. If a document line has been included in a payment that has not been released yet, that line cannot be included in a different payment.

    For details, see [To Apply a Credit Memo Paid by Line to an Invoice](AR__HOW_To_Pay_Invoice_by_Line.md).

3.  You release the payment; the system assigns the original AR document the *Closed* status if it has been paid in full \(or the document retains the *Open* balance if it has been paid partially or it is an original invoice with unreleased and unpaid retainage\). The system updates the amounts paid in the payment on the [Payments and Applications](AR_30_20_00.md) form and the balances of all the lines of the AR document on the [Invoices and Memos](AR_30_10_00.md) form.

**Parent topic:**[Applying Payments to Particular Lines of AR Documents](../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md)

