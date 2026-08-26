# AR Invoices: Tracking AR Documents {#_45627a47-b08e-40f0-802f-5064c56ae2e1 .concept}

An AR document goes through the following states during its life cycle:

1.  Recorded: Documents that have been entered but not released
2.  Released: Documents that have been released but not closed
3.  Closed: Documents that have been released and closed

In Acumatica ERP, you can track information about Accounts Receivable documents in each state by using inquiries and reports in the module.

## Tracking Recorded AR Documents {#section_jbn_4jv_vxb .section}

To track documents that have been entered but not released \(and have the *On Hold*, *Pending Print*, *Pending Email*, or *Balanced* status\), you can use the following inquiry and reports:

-   [Customer Details](AR_40_20_00.md) \(AR402000\) You select a specific customer and select the **Include Unreleased Documents** check box to view the list of unreleased documents associated with the customer, along with the documents with the other processing stages \(which you can filter out by using simple filters\).
-   [AR Edit](AR_61_10_00.md) \(AR611000\): You can view the Accounts Receivable documents that were entered but not released for all customers or select a specific customer and view only the documents for that customer. Documents are listed by document type, financial period, and document date.
-   [AR Edit Detailed](AR_61_05_00.md) \(AR610500\): You can view all the Accounts Receivable documents that were created but not released or select a specific document type and view only documents of that type. Documents are shown with all details and listed by the financial period, the document date, and the customer of the document.

## Tracking Released AR Documents {#section_lbn_4jv_vxb .section}

To track released documents \(which have the *Open* status\), you can use the following inquiry and reports:

-   [Customer Details](AR_40_20_00.md): You select a specific customer and make sure that the **Show All Documents** and **Include Unreleased Documents** check boxes are cleared to view the list of open documents associated with the customer.
-   [AR Register](AR_62_15_00.md) \(AR621500\): You can view the Accounts Receivable documents for all customers or select a specific customer and view only the documents of that customer. Documents are arranged by type, date, and customer account. Document amounts are shown in the original currency and in the base currency.
-   [AR Register Detailed](AR_62_20_00.md) \(AR622000\): You can view all the documents released in the specified financial period or select a specific document type and view only the documents of that type. Documents are arranged by type, date, and customer account. The details include the batch number and batch transactions. Document amounts are shown in the original currency and in the base currency.
-   [AR Aging](AR_63_10_00.md) \(AR631000\) and [AR Aging MC](AR_63_11_00.md) \(AR631100\): You can view the documents for all customers or select a particular customer to view only the documents of that customer. Documents are listed by statement cycle and by customer, broken down by aging periods. You use these reports to determine which documents are overdue for payment and for how long.
-   [AR Aging by Project](AR_63_12_00.md) \(AR631200\): You can view the documents for all customers or select a particular customer to view only the documents of that customer. Documents are listed by the project assigned to the AR documents, by the statement cycle, and by the customer, and these documents are broken down by aging periods. You use these reports to determine which documents are overdue for payment and for how long.
-   [AR Coming Due](AR_63_15_00.md) \(AR631500\) and [AR Coming Due MC](AR_63_16_00.md) \(AR631600\): You can view the documents for all customers or select a particular customer to view only the documents of that customer. Documents are listed by statement cycle and by customer, broken down by aging periods. These reports are designed to show when you should expect to get payments for the outstanding documents.
-   [AR Aged Period-Sensitive](AR_63_05_00.md) \(AR630500\): You can view the documents \(by statement cycle and by customer\) that are outstanding at the end of the specified period, broken down by aging periods. The balances are arranged by days past due on the last day of the specified period. All the amounts are shown in the base currency.
-   [AR Aged Period-Sensitive by Project](AR_63_06_00.md) \(AR630600\): You can view the documents \(by project, by statement cycle, and by customer\) that are outstanding at the end of the specified period. The documents are broken down by aging periods or financial periods, depending on the settings of the statement cycle specified for each customer. The balances are arranged by days past due on the last day of the specified period. All the amounts are shown in the base currency.

## Tracking Closed AR Documents {#section_nbn_4jv_vxb .section}

To track processed documents that have the *Closed* status, you can use the [Customer Details](AR_40_20_00.md) \(AR402000\) inquiry. You select a specific customer and select the **Show All Documents** check box to view the list of closed documents associated with the customer along with the documents with other processing stages \(which can be filtered out by using simple filters\).

**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

