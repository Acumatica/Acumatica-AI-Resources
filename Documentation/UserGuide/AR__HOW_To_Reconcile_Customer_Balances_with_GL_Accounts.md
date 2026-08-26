# To Reconcile Customer Balances with GL Accounts {#_ef1f2b8c-b7b2-432a-92a8-f120b3f75a4c .task}

To perform reconciliation, you compare the total balance of open documents with the balance of the AR account used in Accounts Receivable documents according to the transactions posted to the account. The balances must be equal.

## To Review and Release Unreleased Accounts Receivable Documents {#section_gql_4jv_vxb .section}

1.  Open the [AR Edit](../Shared/../UserGuide/AR_61_10_00.md) \(AR611000\) report.
    1.  On the **Report Parameters** tab, in the **Company/Branch** box, check the company or branch to which the documents are related.
    2.  In the **From Period** box, check the start period of the documents to be included in the report.
    3.  In the **To Period** box, check the end period of the documents to be included in the report.
    4.  In the **Customer** box, specify a customer whose documents you want to include in the report.
    5.  In the **Created By** box, specify a user who created transactions which you need to include in the report.
    6.  Select the **Include Transactions on Hold** check box to include transactions that have the *Hold* status \(if applicable\).
    7.  Click **Run Report**.
2.  In the report that opens, click the reference numbers of the invoices with the *On Hold* status.
3.  On the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form that opens for each invoice, click **Release** on the form toolbar to release the document.

Now all Accounts Receivable documents are released.

## To Reconcile the Total of Open Customer Documents With the Balance of GL Account {#section_jql_4jv_vxb .section}

1.  Open the [AR Balance by GL Account](../Shared/../UserGuide/AR_63_20_00.md) \(AR632000\) form.
2.  On the **Report Parameters** tab, in the **Report Format** box, select *Open Documents*.
3.  In the **Company/Branch** box, review the name of the company or branch selected and change it, if needed.
4.  In the **Financial Period** box, check the period which should be covered by the report and change it, if needed.
5.  Clear the **Include Applications** check box.
6.  On the form toolbar, click **Run Report**.

    The report shows the AR accounts used in accounts receivable documents, and the list of documents that have been posted to these accounts and that are open by the end of the period.


## To Prepare the Trial Balance Summary {#section_kql_4jv_vxb .section}

1.  Open the [Trial Balance Summary](../Shared/../UserGuide/GL_63_20_00.md) \(GL632000\) form.
2.  On the **Report Parameters** tab, in the **Company/Branch** box, check the name of the company or branch for which the report should be prepared and change it, if needed.
3.  In the **Ledger** box, check the ledger whose documents should be included in the report and change it, if needed.
4.  In the **Financial Period** box, check the period which should be covered by the report and change it, if needed.
5.  Select the **Suppress Zero Balances** to remove accounts that have all zero values from the report.

    The report shows the balance of an account. It is the total amount of the transactions posted to this account in the general ledger by the end of the specified period.

6.  Compare the balance of the selected general ledger account according to the [AR Balance by GL Account](../Shared/../UserGuide/AR_63_20_00.md) \(AR632000\) report and the [Trial Balance Summary](../Shared/../UserGuide/GL_63_20_00.md) \(GL632000\) report.

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

