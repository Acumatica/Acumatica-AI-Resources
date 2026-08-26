# Rounding of AR Document Amounts: General Information {#_27f14986-f23c-48d7-9346-849401f82afa .concept}

Your company policy or local regulations may require the total amounts in AR documents to be rounded. To set up amount rounding in AR documents, you first enable the *Invoice Rounding* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. You then specify the settings the system will use to round these totals.

**Attention:** The line total, tax total, and other subtotals of a document are not rounded.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the of rounding the amounts of AR documents
-   Process an AR invoice with a rounded amount and review the generated GL transaction

## Applicable Scenarios { .section}

You set up the rounding of AR document amounts if your company's policy or external regulations require that you round the amounts in invoices and bills.

## Rounding Setup { .section}

In Acumatica ERP, the system rounds AR document totals based on the rounding rule, rounding precision, and rounding limit. You use the following forms to specify the applicable settings:

-   [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\): You use this form to specify the rounding rule and the precision that apply to AR documents. You can specify a separate rule and precision for each of the following types: *Invoice*, *Credit Memo*, *Debit Memo*, *Overdue Charge*, and *Cash Sale*.
-   [Currencies](CM_20_20_00.md) \(CM202000\): You use this form to specify the system-wide rounding limit for the base currency. This limit is the maximum rounding difference between the rounded amount and the original document amount.

The system applies rounding rules to documents in all currencies \(base and foreign\). You specify the rounding limit for only the base currency, but it is applied to documents in foreign currencies as well. The system always recalculates the amounts of a document in a foreign currency to amounts in the base currency of your system, including the rounding difference. The system compares the recalculated rounding difference to the base currency with the rounding limit and issues a warning if the limit is exceeded.

The rounding difference should be recorded to specific rounding gain and loss accounts. Depending on the policies established in your company, you can use a single gain account and a single loss account \(and the corresponding subaccounts, if applicable\) for all currencies, or you can use different gain and loss accounts \(and the corresponding subaccounts\) for each currency used by your company.

You use the [Currencies](CM_20_20_00.md) form to specify the following:

-   The rounding gain and loss accounts \(and subaccounts, if they are used in your system\) for the base currency
-   The gain and loss accounts and subaccounts for each of the foreign currencies used by your customers

## Rounding Rule { .section}

To set up rounding for documents, you select the rounding rule and precision in the **Data Entry Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. The following rounding rules are available in the **Rounding Rule for Invoices** box:

-   *Nearest*: To round each total amount to the nearest multiple of the smallest unit.
-   *Up*: To round each total amount up to the next multiple of the smallest unit.
-   *Down*: To round each total down to the previous multiple of the smallest unit.
-   *Use the Currency Precision*: To temporarily not use rounding if it is activated in your system. If this option is selected, for each document, the system will round the document total according to the precision specified for the document currency. The precision of the base currency is specified on the [Branches](CS_10_20_00.md) \(CS201000\) form, and the precision of foreign currencies is defined on the [Currencies](CM_20_20_00.md) \(CM202000\) form.

In the **Rounding Precision** box of the same section of the form, you select the rounding precision—that is, the smallest unit to be used for document amounts. The following options are available:

-   *0.1*: To round the totals to multiples of 0.10
-   *0.5*: To round the totals to multiples of 0.5
-   *1.0*: To round the totals to integers
-   *10.0*: To round the totals to multiples of 10
-   *100.0*: To round the totals to multiples of 100

The following table illustrates the results of rounding with different rules and precisions applied to the sample value of $1,734.57.

|Rounding Rule/Precision|*0.1*|*.05*|*1.0*|*10*|*100*|
|-----------------------|-----|-----|-----|----|-----|
|**_Nearest_**|$1,734.60|$1,734.50|$1,735|$1,740|$1,700|
|**_Up_**|$1,734.60|$1,735.00|$1,735|$1,740|$1,800|
|**_Down_**|$1,734.50|$1,734.50|$1,734|$1,730|$1,700|

**Attention:** The system will use the same rounding precision for all currencies. You can override the rounding settings specified on the [Accounts Receivable Preferences](AR_10_10_00.md) form for a particular currency by using the [Currencies](CM_20_20_00.md) \(CM202000\) form.

To do this, you clear the **Use AR Preferences Settings** check box and specify the rounding precision on the **Rounding Settings** tab of this form.

**Parent topic:**[Rounding of AR Document Amounts](../UserGuide/Finance_Rounding_of_AR_Doc_Amounts_Mapref.md)

