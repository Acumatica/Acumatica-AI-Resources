# Recognition Methods for Deferred Revenues or Expenses {#_00798fa3-5e99-426e-ba3c-20c7e0e7273e .concept}

Recognition methods determine how the deferred revenue or expense amount of a particular document will be distributed over the defined number of periods. You specify a particular recognition method in the settings of each deferral code on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. You can assign a deferral code to a line of an invoice or bill.

This topic describes the recognition methods available in Acumatica ERP and provides examples of each recognition method.

## Evenly by Periods {#section_lpb_3jv_vxb .section}

With the *Evenly by Periods* recognition method, the amount to be recognized is distributed evenly to all included periods. The number of recognition periods is defined by the value you specify in the **Occurrences** box for the deferral code on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form.

An occurrence is a recognition event for which a recognition transaction is generated. The frequency of recognition events depends on the number \(of financial periods\) that you select in the **Every X Periods** box. \(For example, a *2* in this box would mean that a recognition event occurs every 2 financial periods.\) Thus, when you select the *Evenly by Periods* recognition method, you also need to define the number of recognition occurrences for the document amount and their frequency.

**Attention:** The number of occurrences does not include immediate recognition of the revenue or expenses, which is based on the percentage specified in the **Recognize Now %** box.

**Example**

Suppose there is an invoice dated January 11, 2015, that contains one line with an amount of $1,500. The sales revenue should be recognized over six months in equal recognition amounts. \(In this example, periods are defined as months in the system.\) You apply a deferral code that has the following settings on the [Deferral Codes](DR_20_20_00.md) form:

-   **Recognition Method**: *Evenly by Periods*
-   **Occurrences**: *6*
-   **Recognize Deferrals**: *Every 1 Period\(s\)*

With this recognition method, the document amount \($1,500\) is divided evenly among six periods: January, February, March, April, May, and June; each portion is equal to $250.

**Attention:** In this example, the recognition period is equal to the financial period because we set the recognition schedule to *Every 1 Period\(s\)*. If we had set it to *Every 2 Period\(s\)*, the recognition period would be equal to two financial periods, which means that the recognition process would be performed once every two months.

## Evenly by Periods, Prorate by Days {#section_tpb_3jv_vxb .section}

With the *Evenly by Periods, Prorate by Days* method, the amount to be recognized is distributed evenly among recognition periods. The number of the recognition periods is defined by the value specified in the **Occurrences** box on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. The first and last periods are counted together as one recognition period and the amount to be recognized for each is proportional to the number of days in each period.

An occurrence is a recognition event. The frequency of occurrences depends on the number \(of financial periods\) you select in the **Every X Period\(s\)** box. The installment amounts for the first and last periods are calculated based on a full-period amount that is proportional to the number of days each installment should cover.

**Example**

Suppose there is an invoice, dated January 11, 2015, that contains one line with an amount of $1,500. The sales revenue should be recognized over six months. \(In this example, periods are defined as months in the system.\) You apply a deferral code that has the following settings on the [Deferral Codes](DR_20_20_00.md) form:

-   **Recognition Method**: *Evenly by Periods, Prorate by Days*
-   **Occurrences**: *6*
-   **Recognize Deferrals**: *Every 1 Period\(s\)*

With this recognition method, the document amount is divided evenly among five full periods, with each portion equal to $300. Four of these periods are February, March, April, and May. The fifth $300 portion is divided into two parts, each of which is proportional to the number of days included in the recognition time interval in January \(20 days, so $193.55\) and in June \(11 days, so $106.45\).

**Attention:** The amounts are rounded according to the base currency precision, which is set to *2*.

## Evenly by Days in Period {#section_aqb_3jv_vxb .section}

With the *Evenly by Days in Period* method, the amount to be recognized is distributed by periods with a proportional division by the number of calendar days in each period. The number of recognition periods is defined by the value specified in the **Occurrences** box in the deferral code settings on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form.

As mentioned, an occurrence is a recurring recognition event for which a recognition transaction is generated. The frequency of occurrences depends on the number \(of financial periods\) you select in the **Every X Period\(s\)** box.

**Example**

Suppose there is an invoice, dated January 1, 2015, that contains one line with an amount of $1500. The sales revenue should be recognized over six months. \(In this example, periods are defined as months in the system.\) You apply a deferral code that has the following settings on the [Deferral Codes](DR_20_20_00.md) form:

-   **Recognition Method**: *Evenly by Days in Period*
-   **Occurrences**: *6*
-   **Recognize Deferrals**: *Every 1 Period\(s\)*

With this recognition method, the amount for each recognition period is computed based on the number of calendar days in each period:

-   January \(31 days\): The amount to be recognized is $256.91.
-   February \(28 days\): The amount to be recognized is $232.04.
-   March \(31 days\): The amount to be recognized is also $256.91.
-   April \(30 days\): The amount to be recognized is $248.62.
-   May \(31 days\): The amount to be recognized is $256.91.
-   June \(30 days\): The amount to be recognized is $248.61.

## Flexible by Periods, Prorate by Days {#section_gqb_3jv_vxb .section}

With the *Flexible by Periods, Prorate by Days* method, the amount to be recognized is distributed evenly among periods, with a proportional division by days among the first and last periods. The first and the last periods may be less than a full period, depending on the start recognition date and the final recognition date specified in a particular document. The number of recognition periods is defined by the recognition dates specified in a document.

This method can be applied to AR documents with the *Invoice*, *Credit Memo*, *Debit Memo*, and *Cash Sale* types and to AP documents with the *Bill*, *Debit Adjustment*, *Credit Adjustment*, and *Quick Check* types.

**Example**

Suppose there is an invoice with a date of 8/1/2015 and a post period of 08-2015 that contains one line with an amount of $1,500. In this invoice, the start date of the recognition process \(in the **Term Start Date** box on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form\) is set to February 15, 2015, and the final date of the recognition process \(in the **Term End Date** box\) is set to June 21, 2015. Thus, the document amount should be recognized within the date range defined by the **Term Start Date** and the **Term End Date**.

A deferral code with the following settings on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form is applied to this invoice:

-   **Recognition Method**: *Flexible by Periods, Prorate by Days*
-   **Recognize Deferrals**: *Every 1 Period\(s\)*
-   **Allow Recognition in Previous Periods**: Selected

With this recognition method, the document amount is distributed over the date range that starts on February 15 \(**Term Start Date**\) and ends on June 21 \(**Term End Date**\). The date range covers 14 days of February, three full periods \(March, April and May\), and 21 days of June. The 14 days of February is 0.5 period \(14 days / 28 days = 0.5\). The 21 days of June is 0.7 period \(21 days / 30 days = 0.7\). Thus, February and June together makes 1.2 periods. So that, the revenue amount should be distributed across 4.2 periods, which is 3 periods of March, April and May + 1.2 periods of February and June. The amount recognized in each of the three full periods \(March, April, and May\) is $1,500 / 4.2 = $357.14. The amount recognized in February is 0.5 \* $357.14 = $178.57, and the amount recognized in June is 0.7 \* $357.14 = $250.01. Thus, the document amounts are allocated as follows:

-   February \(14 days\): The amount is $178.57. The recognition date is 2/15/2015, and the financial period is 02-2015.
-   March \(31 days\): The amount is $357.14. The recognition date is 3/1/2015, and the financial period is 03-2015.
-   April \(30 days\): The amount is $357.14. The recognition date is 4/1/2015, and the financial period is 04-2015.
-   May \(31 days\): The amount is $357.14. The recognition date is 5/1/2015, and the financial period is 05-2015.
-   June \(21 days\): The amount is $250.01. The recognition date is 6/1/2015, and the financial period is 06-2015.

**Attention:** If the **Allow Recognition in Previous Periods** check box is cleared in the deferral code settings on the [Deferral Codes](DR_20_20_00.md) form, the system will use the document date and post period of the document date for recognition. That is, the system will distribute amounts by the same rule and generate transactions on $178.57, $357.14, $357.14, $357.14, and $250.01, with a recognition date of 8/1/2014 and a financial period of 08-2014.

## Flexible by Days in Period {#section_oqb_3jv_vxb .section}

With the *Flexible by Days in Period* method, the amount to be recognized is distributed among periods, according to the number of calendar days in each particular period. The start date and the final date of the recognition process is specified individually for each line of a particular document.

This method can be applied to AR documents with the *Invoice*, *Credit Memo*, *Debit Memo*, and *Cash Sale* types and to AP documents with the *Bill*, *Debit Adjustment*, *Credit Adjustment*, and *Quick Check* types.

**Example**

Suppose there is an invoice that contains one line with an amount of $1500 with 8/1/2015 date and 08-2015 post period. In this invoice, the start date of the recognition process \(in the **Term Start Date** box on the [Invoices and Memos](AR_30_10_00.md) form\) is set to February 15, 2015, and the final date of the recognition process \(in the **Term End Date** box\) is set to June 21, 2015. Thus, the document amount should be recognized within the specified date range, which is equal to 127 days \(the number of days between the **Term Start Date** and the **Term End Date**\).

A deferral code that has the following settings on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form is applied to the invoice:

-   **Recognition Method**: *Flexible by Days in Period*
-   **Recognize Deferrals**: *Every 1 Period\(s\)*
-   **Allow Recognition in Previous Periods**: Selected

With this recognition method, the document amount is spread over the 127 days, with a proportional division by days. Thus, the document amounts are allocated as follows:

-   February \(14 days\): The amount is $165.35. The recognition date is 2/15/2015, and the financial period is 02-2015.
-   March \(31 days\): The amount is $366.14. The recognition date is 3/1/2015, and the financial period is 03-2015.
-   April \(30 days\): The amount is $354.33. The recognition date is 4/1/2015, and the financial period is 04-2015.
-   May \(31 days\): The amount is $366.14. The recognition date is 5/1/2015, and the financial period is 05-2015.
-   June \(21 days\): The amount is $248.04. The recognition date is 6/1/2015, and the financial period is 06-2015.

**Attention:** If the **Allow Recognition in Previous Periods** check box is cleared in the deferral code settings on the [Deferral Codes](DR_20_20_00.md) form, the system will use the document date and post period of the document date for recognition. That is, the system will distribute amounts by the same rule and generate transactions on $165.35, $366.14, $354.33, $366.14, and $248.04 with a recognition date of 8/1/2015 and a financial period of 08-2015.

**Parent topic:**[Setting Up the Recognition Process](../UserGuide/DR__con_Setting_Up_Deferral_Process.md)

