# Cash Flow Forecasting {#_415c1ecd-615e-4980-96eb-0edc3620a9e1 .concept}

By analyzing cash flow forecasts, you can avoid unexpected shortages in cash and properly plan your payments. Cash flow forecasting is typically performed for a month or 30 days and can be done in any currency.

In Acumatica ERP, you can calculate a 30-day cash flow forecast by using the [Cash Flow Forecast](CA_40_10_00.md) \(CA401000\) form. To view a forecast for a single cash account, you select it in the **Cash Account** box. To view a forecast for all available cash accounts, you select the **All Cash Accounts** check box. You can click **View as a Report** to view the following information:

-   The projected balance of the cash account in the **Cash Summary** section of the report
-   The total amount of customer payments to be received on this day \(that is, the date in the column\) in the **Cash Receipts** section of the report
-   The total amount of outgoing payments to be sent on this day \(that is, the date in the column\) in the **Cash Paid Out** section of the report

The more accurate your forecast is, the more useful it can be for planning your operations and understanding your cash position. In Acumatica ERP, you can control the level of detail to be used for cash flow forecasting. Also, to improve the quality of forecasts, you can manually enter expected cash transactions that are not yet confirmed by available documents.

## Types of Documents To Be Included in the Forecast {#section_abb_kjv_vxb .section}

You can select the level of detail to be used for forecast calculation by using the elements in the Selection area of the [Cash Flow Forecast](CA_40_10_00.md) \(CA401000\) form. By default, released documents of the following types are included in the calculation:

-   Bills and adjustments
-   Invoices and memos \(only the unapplied amounts\)
-   Accounts Receivable payments \(only the application amounts\)
-   Vendor prepayments
-   Customer prepayments

You can also include in the calculation the following documents with other statuses:

-   Unreleased bills, adjustments, invoices, and memos
-   Recurring documents scheduled for the dates within the forecast's 30-day period
-   Unapplied payments

## Processing of Documents Without a Cash Account Specified {#section_fbb_kjv_vxb .section}

Some invoices and bills may be entered into the system with no cash accounts specified. To include these documents in a forecast, in the Selection area of the [Cash Flow Forecast](CA_40_10_00.md) \(CA401000\) form, select the **Include Documents Without Cash Account** check box.

In this case, before calculating the forecast, the system attempts to assign a cash account to each document without a cash account specified, based on the vendor or customer’s default settings; after this, some documents will still have no cash account assigned.

The system processes the documents with unassigned default cash accounts a bit differently as follows, depending on whether you run cash flow forecasting for a single selected cash account or for all cash accounts:

-   Forecasting for a selected cash account: The system includes only the documents with the assigned cash account that matches the cash account. If the system fails to assign a cash account by using the default settings, it assigns the cash account selected for forecasting provided the branch of the document matches the branch of the cash account.
-   Forecasting for all available cash accounts: The system adds the documents with the assigned cash accounts to the balances of respective cash accounts. If the system fails to assign a cash account to a document, it adds the document to the balance of the cash account specified in the **Default Cash Account** box \(which is available if you select the **Include Documents Without Cash Account** check box\).

## Anticipated Cash Transactions {#section_kbb_kjv_vxb .section}

Forecasts based only on the entered documents are not especially correct. To improve forecasts, you can manually enter information about expected cash flows received from external sources and not yet supported by available documents.

Using the [Anticipated Cash Transactions](CA_30_55_00.md) \(CA305500\) form, you can select a cash account and enter the cash amounts you expect to collect or to pay out and the dates of these cash transactions.

These transactions will not be posted to the general ledger; they will be used only in the forecast calculations.

## Conversion to the Specified Currency {#section_obb_kjv_vxb .section}

You can perform forecasts in any of the currencies defined in the system. On the [Cash Flow Forecast](CA_40_10_00.md) \(CA401000\) form, you select the forecast currency and the currency rate type. Conversion to the selected currency will be performed on a per-transaction basis.

**Parent topic:**[Managing Cash Transactions](../UserGuide/CA__MNG_CashTransactions.md)

