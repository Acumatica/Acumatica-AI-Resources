# Customer Statements: Multicurrency and Consolidated Statements {#_aa8a2c1f-8218-41a6-98be-07479ec1a64c .concept}

By default, the statements are prepared in the base currency; the [Customer Statement](AR_64_15_00.md) \(AR641500\) report is used. For foreign customers, you can specify that statements should be created in multiple currencies; in this case, the [Customer Statement MC](AR_64_20_00.md) \(AR642000\) report is used. For customers of a specific customer class, you can specify whether to create the statements in multicurrency format, by using the **Multi-Currency Statements** check box on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. For particular customers of the class, you can override the class setting by using the option with the same name on the [Customers](AR_30_30_00.md) \(AR303000\) form.

Depending on the policies established in your company, you can prepare a single consolidated statement for each customer or prepare multiple statements for each branch of your company, or for all companies in a tenant.

To prepare statements consolidated for all branches of a company, you select *Consolidated for Company* in the **Prepare Statements** box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. In this case, a customer will receive a separate statement from each company including the documents originating from the company branches.

If you want to prepare consolidated statements for all companies in a tenant, in the **Prepare Statements** box, you select *Consolidated for All Companies* and in the **Statement From** box, you select the branch that will be specified as the sender. In this case, a customer will receive a single statement including the documents originating from all branches in the tenant.

When you use the [Prepare Statements](AR_50_30_00.md) \(AR503000\) form to generate a consolidated statement for a parent customer account and any number of child customer accounts, if the child customer accounts are assigned to a different statement cycle than the parent account is, the system prepares the statement as follows:

-   The child accounts that have statements generated on the statement date or later are excluded from the processing, and the consolidated statement generated for the parent account does not contain the documents of these child accounts.
-   If a customer account is excluded from the processing, appropriate information is recorded to the trace log. \(You can view the trace log by clicking **Tools** &gt; **Trace** on the form title bar.\) A warning message is displayed on the [Prepare Statements](AR_50_30_00.md) form informing you that some customers were not processed.

**Parent topic:**[Preparing Customer Statements](../UserGuide/Finance_Preparing_Customer_Statements_Mapref.md)

