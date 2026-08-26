# Accounts Receivable: Statement Cycles {#_780169a6-b692-41fd-a5ba-775cc9135810 .concept}

In Acumatica ERP, you can define any number of statement cycles to be used for collecting payments from customers. At the end of each statement cycle, the company prepares statements and sends them to its customers. Statements provide customers with records of their financial activity for a specific period, including the ending balance.

## Statement Cycle Setup { .section}

You use the [Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form to create new statement cycles and modify existing ones. For each statement cycle, you define the following:

-   The schedule according to which statements will be generated.
-   The aging periods to be used. You can define five aging periods for each statement cycle, to group the sums of the balances of open invoices, overdue charges, and debit memos by the number of days they are past due. The system uses the aging period settings in accounts receivable aging reports, which users can analyze to identify potential cash flow problems.
-   The statement processing options.
-   The overdue charges.

You can assign a statement cycle to a customer class by using the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form and directly to a customer on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

