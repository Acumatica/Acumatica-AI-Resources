# Value-Added Taxes: Inclusive Output and Input VATs at the Document Level {#_c983cdb6-245f-4db7-915d-a23ef1e8918d .concept}

You can create AR and AP documents in which the total inclusive tax will be extracted from the document amount but not totaled from the taxes calculated for the document lines.

**Note:** Besides VAT, this type of tax can be applied to sales taxes.

The system calculates and rounds inclusive tax amounts based on document amounts by using the following rules:

1.  The amount of the document before taxes is calculated as follows:
    -   The line amounts of the document with the same applicable taxes are totaled \(`Line Amount - Group and Document Discounts`\). If more than one tax is applicable to a document, the system groups the document lines by the rates of the applied taxes.
    -   The taxable amount is extracted from the sum of the document line amounts. The result is not rounded.
2.  The tax amount based on the unrounded amount before taxes is calculated. The result is then rounded to the decimal precision of the currency specified on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
3.  The exact amount before taxes is calculated by the rounded tax amount being subtracted from the sum of the document line amounts.

To prepare journal entries posted to GL on release of a document with inclusive VAT at the document level, the system still calculates line-level taxes for each line to get the amounts before taxes that are posted to the revenue or expense account specified in the lines. Because the document-level tax posted to the tax payable account may differ from the total of tax amount of each line, to balance the transaction, the system posts the difference to a special gain and loss account, which is specified on the [Tax Preferences](../UserGuide/TX_10_30_00.md) \(TX103000\) form.

## Usage Example { .section}

The example below illustrates how the system calculates the amount before taxes and the tax amount for each line.

|Item|Line Amount|Tax Rate|Line Tax Amount \(rounded\)|Line Amount Before Taxes to Be Posted to the Revenue or Expense Account|
|----|-----------|--------|---------------------------|-----------------------------------------------------------------------|
|Item 1|105.55|19%|105.55 / 1.19 \* 0.19 = **16.85**|105.55 – 16.85 = **88.70**|
|Item 2|112.99|19%|112.99 / 1.19 \* 0.19 = **18.04**|112.99 – 18.04 = **94.95**|
|Item 3|87.70|19%|87.70 / 1.19 \* 0.19 = **14.00**|87.70 – 14.00 = **73.70**|

The system has calculated these amounts as follows:

-   Line amount before taxes:
    -   Line 1: 105.55 / 1.19 = 88.697479
    -   Line 2: 112.99 / 1.19 = 94.9495798
    -   Line 3: 87.70 / 1.19 = 73.697479
-   Line tax amount:
    -   Line 1: 88.697479 \* 0.19 = 16.852521 ~ **16.85**
    -   Line 2: 94.9495798 \* 0.19 = 18.0404202 ~ **18.04**
    -   Line 3: 73.697479 \* 0.19 = 14.002521 ~ **14.00**
-   Rounded line amount before taxes to be posted to the revenue or expense account:
    -   Line 1: 105.55 – 16.85 = **88.70**
    -   Line 2: 112.99 – 18.04 = **94.95**
    -   Line 3: 87.70 – 14.00 = **73.70**

In the next step of calculations, the system calculates the document amount before taxes and the tax amount as follows:

-   Document amount before taxes:
    -   Sum of the line amounts: 105.55 + 112.99 + 87.70 = 306.24
    -   Amount before taxes: 306.24 / 1.19 = 257.344538
-   Document tax amount: 257.344538 \* 0.19 = 48.8954622 ~ 48.90
-   Rounded document amount before taxes: 306.24 – 48.90 = 257.34

As a result of the calculations, there is a difference between the amount before taxes by lines \(**257.35**\) and the document amount before taxes \(**257.34**\). The difference will be posted to the Tax Rounding Gain/Loss account.

## Generated Transactions { .section}

With this way of configuring the inclusive output or input VAT, as a result of the given calculation, the system will create the following GL transactions on release of a taxable AR and AP documents.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable|306.24| |
|Revenue of line 1| |88.70|
|Revenue of line 2| |94.95|
|Revenue of line 3| |73.70|
|Tax Payable| |48.90|
|Tax Rounding Gain/Loss|0.01| |
| |306.25|306.25|

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable| |306.24|
|Expense of line 1|88.70| |
|Expense of line 2|94.95| |
|Expense of line 3|73.70| |
|Tax Expense|48.90| |
|Tax Rounding Gain/Loss| |0.01|
| |306.25|306.25|

## System Configuration for Inclusive VATs at the Document Level { .section}

You configure and maintain these types of VAT as follows:

1.  Optional: On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you enable the *Net/Gross Entry Mode* feature.
2.  If the *Net/Gross Entry Mode* feature has been enabled, on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, you specify a rounding limit in the **Rounding Limit** box in the **Rounding Settings** section.
3.  On the [Tax Preferences](../UserGuide/TX_10_30_00.md) \(TX103000\) form, you specify the tax rounding gain and loss accounts to which any tax rounding difference will be posted.
4.  You create a tax of the *VAT* type on the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form. For instructions, see [Value-Added Taxes: To Create a General VAT and Exempt VAT](Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).
5.  You create an AR document, such as an invoice, to which the output VAT is applied or an AP document, such as an AP bill, to which the input VAT is applied, and you specify the **Tax Calculation Mode** for this document \(if you want to use a different mode than the default value copied from the customer or vendor settings\).

The following table illustrates three conditions that must be met in the system for it to calculate inclusive document-level taxes:

| |*Net/Gross Entry Mode* feature|Tax Calculation Mode for a document|Tax Calculation Rule for a tax|
|---|------------------------------|-----------------------------------|------------------------------|
|1.|Enabled|*Gross*|*Exclusive Document-Level*|
|2.|Enabled|*Tax Settings*|*Inclusive Document-Level*|
|3.|Disabled|N/A|*Inclusive Document-Level*|

**Note:** These types of VAT are calculated in the same way on other forms, such as [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\), [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\), [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\), [Sales Quotes](../UserGuide/CR_30_45_00.md) \(CR304500\), [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\), [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\), [Expense Receipts](../UserGuide/EP_30_10_10.md) \(EP301020\), [Expense Claims](../UserGuide/EP_30_10_30.md) \(EP301000\), [Cash Transactions](../UserGuide/CA_30_40_00.md) \(CA304000\), and [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) forms.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

