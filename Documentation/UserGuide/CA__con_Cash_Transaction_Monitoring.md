# Cash Transaction Monitoring {#_7097287f-b733-4baa-a50c-69ad835fa349 .concept}

By using the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form, authorized users can monitor cash accounts and effectively manage cash transactions originating in the accounts payable, accounts receivable, and cash management subledgers.

This functionality provides instant access to the up-to-date balance of each cash account. The balance of each cash account is updated as each AP or AR document is released, cleared, or reconciled. You can get a per-day summary of a bank account or the complete list of documents and transactions created during the specified period. You also can drill down to individual AP, AR, or cash documents to view their details, and cash transactions can be added quickly from the form.

With immediate access to all cash transactions and an accurate "big-picture" view of each cash account, you and your authorized personnel can save time, manage the cash flow more effectively, and make informed business decisions.

## Selecting the View {#section_qy1_kjv_vxb .section}

You can use the Selection area of the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form to customize the transactions that will be shown in the table area. You can view a summary or detailed view of transaction information, so that you get the precise level of detail you need at the moment.

To view the summary of activities on the chosen cash account, select the **Show Summary** option in the Selection area of the form. The transactions in the list will be grouped by receipts and disbursements and by day of the week in the specified date range. \(Dates without transactions will not be listed.\) The summary view shows only the document date, the day of the week, the total amount of receipts and disbursements, and the ending balance for the day.

The detailed view, which you get when the check box for the **Show Summary** option is cleared, is the default view. This view displays all activity on the cash account during the specified period. With the detailed view, you can see the most thorough information about each transaction. This information includes the transaction's detailed description, its type, its status, and information about the vendor or customer associated with the document \(if it's an Accounts Payable or Accounts Receivable document\).

## Selecting Transactions to Be Displayed {#section_uy1_kjv_vxb .section}

The transactions displayed on the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form correspond to the date range specified in the Selection area. By default, the start and end dates are based on the default date range set for the cash management subledger on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form. The default start date is the first date of the current month, week, or financial period, depending on which of these is the default date range, and the default end date is the last date of the current date range. You can override these default settings to view any time interval.

In addition, the **Include Unreleased** check box in the Selection area of the [Cash Account Details](CA_30_30_00.md) form controls whether transactions with the *On Hold* or *Balanced* status will be included in the displayed transactions:

-   For the summary view, if this check box is selected, transactions with these statuses will be added to the totals of receipts and disbursements per day. If the check box is cleared, totals of receipts and disbursements are calculated only on the released transactions.
-   For the detailed view, if this check box is selected, all documents associated with the cash account will be listed. If it is cleared, only released documents will be listed.

## Entering Transactions Quickly {#section_yy1_kjv_vxb .section}

On the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form \(in both the detailed and summary views\), you can access the **Quick Transaction Entry** dialog box by clicking the **Create Transaction** button on the table toolbar. You use this dialog box to quickly add AP, AR, or cash transactions. For details, see [Cash Transaction Processing](CA__CON_CashTran_Processing.md).

**Parent topic:**[Managing Cash Transactions](../UserGuide/CA__MNG_CashTransactions.md)

