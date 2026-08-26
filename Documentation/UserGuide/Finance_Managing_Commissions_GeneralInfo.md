# Managing Commissions: General Information {#_19132e46-6ca0-4a58-8c47-de4babe65733 .concept}

Commission configuration involves defining commission periods, creating salesperson accounts, assigning salespeople to customers, and specifying general commission calculation options.

You use the [Salespersons](AR_20_50_00.md) \(AR205000\) form to define each salesperson's account. The **Salesperson ID** is the unique identifier of the salesperson. You should develop naming conventions for this identifier and use the *SALESPERSON* segmented key to define these requirements. For more information, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

On the [Salespersons](AR_20_50_00.md) form, you also assign a default commission percentage to each salesperson. At the bottom of the form, you add a list of customers the salesperson works with and the commission percentages for customers that have a rate that is different from the default rate. \(On a particular invoice, the salesperson's rate for the customer may be overridden.\)

Generally, AR invoices, sales invoices, and sales orders contain information about the salespeople associated with the sale and their commissions.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure commissions in the system
-   Enter a commissionable invoice
-   Prepare and calculate a commission for a salesperson

## Applicable Scenarios { .section}

You set up commissions in your system if you want to pay commissions to salespeople for released invoices or released payments for invoices.

## Commission Setup { .section}

Generally, commission is calculated once in a commission period, just before the period is closed. In Acumatica ERP, you specify the commission period for all salespeople on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, with the following options available: *By Financial Period*, *Monthly*, *Quarterly*, and *Yearly*.

**Attention:** A document is assigned to the earliest open commission period unless its date is later than the period end date. Thus, if a document whose date is in a closed commission period appears in the system, the commission for it will be prepared in the currently open period.

Some businesses pay commissions calculated on invoice amounts, while other businesses pay commissions only after customer payments have been received. In Acumatica ERP, you can select the option that fits your company’s policy on the [Accounts Receivable Preferences](AR_10_10_00.md) form, in the **Salesperson Commission By** box. The following options of commission calculation are available:

-   *Invoice*: Commission is calculated on the invoice amount when the invoice is released.
-   *Payment*: Commission is calculated for each full or partial payment made for the invoice when the payment is released. The commission base equals the paid amount.

## Commission Preparation {#section_vdt_4jv_vxb .section}

Before calculating commissions to salespeople for the commission period, you need to collect commission information over all invoices that were released \(or closed if commissions are based on paid invoices\) during the commission period. Each document contains the commission details calculated based on the commission percentages of salespeople associated with the document. Commissions are prepared on the [Calculate Commissions](AR_50_55_00.md) \(AR505500\) form.

Commissions can be prepared for only the earliest open period. You cannot prepare commissions for a period if the previous period has the *Open* or *Prepared* status.

During commission preparation, the documents \(invoices or payments\) for which commission details have been added to the salespeople's totals are marked as processed in the selected period.

**Important:** Although commission is calculated on invoices or paid invoices, the corresponding commission transactions are not included in the batches generated for invoices or payments; commission amounts are stored with the appropriate documents. To actually pay commissions to the salespeople, you will need to enter all related transactions manually.

Once commissions have been prepared, the commission period should be closed on the [Close Commission Period](AR_50_65_00.md) \(AR506500\) form. On this form, you can also view information about commissions earned by salespeople during any of the closed commission periods.

## Commission Calculation { .section}

To calculate commissions for the commission period, you use the [Calculate Commissions](AR_50_55_00.md) \(AR505500\) form.

In commission calculation for the open commission period, all invoices that match the conditions of commission calculation and have dates earlier than the ending date of period are included. Thus, you need not recalculate commission for the period if some of the related documents are entered into the system later; they will be included in the calculation for the next commission period. If salespeople were incorrectly specified on invoices for the period, you need to repeat the process of preparing the commissions for the commission period. To do this, you must first void the prepared commissions by using the [Close Commission Period](AR_50_65_00.md) \(AR506500\) form, and then prepare them again.

When the system calculates the commission amount, the cash discount taken in a credit memo is excluded from commission calculation if all of the following conditions are met:

-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, **Salesperson Commission By** is set to *Payment*.
-   The credit memo has a cash discount and has been applied to a payment within the cash discount period.
-   The credit memo contains lines with a salesperson specified for whom commission has been configured.

Suppose that the commission percentage is 2%, a $1,000 credit memo with a $30 cash discount is fully paid, the paid amount is $970, and the cash discount is $30. In this case, the amount deducted from the commission is calculated as $970 \* 2% = $19.40.

**Attention:** If commissions are calculated by payments, payment documents with the *Balance Write-Off* and *Voided Balance Write-Off* types are not included in the commission calculation. For example, if the invoice total is $1,000, $990 was paid, and $10 was written off, the $10 amount will be excluded from commission calculation.

## Selection of a Salesperson at the Document Level { .section}

You can select a salesperson or multiple salespeople for a particular document or document line. To do this, you perform the following instructions on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Invoices](SO_30_30_00.md) \(SO303000\), or [Sales Orders](SO_30_10_00.md) \(SO301000\) form:

1.  For each document line on the **Details** tab, you specify a salesperson's ID in the **Salesperson ID** column.

    **Attention:** If the selected customer has a default salesperson specified on the **Salespersons** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form, the system inserts this salesperson’s ID automatically, but you can override this setting.

2.  In the **Commission %** column of the **Commissions** tab, you manually specify the needed commission percentage for each of the added salespeople. By default, the system will insert the customer-specific percentage specified on the **Salespersons** tab of the [Customers](AR_30_30_00.md) form, if one has been specified. The commission percentage for each salesperson is also displayed on the **Customers** tab of the [Salespersons](AR_20_50_00.md) \(AR205000\) form. If no customer-specific percentage has been specified, the system will insert the commission percentage specified for the salesperson in the Summary area of the [Salespersons](AR_20_50_00.md) form.

## Commission Recalculation {#section_d2t_4jv_vxb .section}

If errors in assigning documents to salespeople are detected or important documents arrive later, you may need to recalculate commissions.

If commissions have been prepared for the period, you void on the [Close Commission Period](AR_50_65_00.md) \(AR506500\) form by clicking **Void Commissions** on the More menu.

If the period has been closed, you can reopen the period by clicking **Reopen Period** on the More menu of the [Close Commission Period](AR_50_65_00.md) form and void the prepared commission.

**Attention:** You can reopen only the latest closed period, but only if commissions for later periods have not been prepared.

You then prepare commissions for the reopened period again and close the period.

**Parent topic:**[Managing Commissions](../UserGuide/Finance_Managing_Commissions_Mapref.md)

