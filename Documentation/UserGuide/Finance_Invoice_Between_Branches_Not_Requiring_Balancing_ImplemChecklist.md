# Interbranch Invoices Without Balancing: Implementation Checklist

Before users begin processing invoices between branches that do not require balancing,you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table.

<table id="_1f63882e-3a95-4866-b1c2-d3b16644d855"><thead><tr><th>

Form

</th><th>

Settings to Check

</th><th>

Notes

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the following features have been enabled:-   *Standard Financials*
-   *Multibranch Support*
-   *Multicompany Support*
-   *Advanced Financials*
-   *Inter-Branch Transactions*

</td><td>

 

</td></tr><tr><td>

 

</td><td>

Make sure that the minimum configuration of the company has been performed.

</td><td>

 

</td></tr><tr><td>

[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form

</td><td>

Check whether the necessary accounts have been created.

</td><td>

 

</td></tr><tr><td>

[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form

</td><td>

Be sure that the periods for which invoices will be defined have a status of *Open*.

</td><td>

You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

</td></tr><tr><td>

[Customers](AR_30_30_00.md#) \(AR303000\) form

</td><td>

Ensure that all needed customers—that is, all customers for which invoices between branches not requiring balancing may be created—have been defined in the system.

</td><td>

 

</td></tr></tbody>
</table>

## Settings That Can Affect the Processing Workflow

The following settings on the [Accounts Receivable Preferences](../Shared/../UserGuide/AR_10_10_00.md) \(AR101000\) form can affect the processing workflow:

-   If the **Automatically Post on Release** check box is selected, the system posts transactions to the general ledger when AR documents are released. If this check box is cleared, you have to post the batch after you release the AR document.
-   If the **Post Summary on Updating GL** check box is selected, AR documents are posted to the general ledger with summarized row amounts if particular criteria are met. That is, if multiple lines in an AR document specify the same account and branch, then in the GL batch, these rows will be combined into one entry with the summarized amount. If this check box is cleared, the lines of the AR document will not be combined into one journal entry in the GL batch.
-   If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new documents are entered, they are assigned the *On Hold* status. If the **Hold Documents on Entry** check box is cleared, the documents are assigned the *Balanced* status.
-   If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the Summary area of the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form. To save a document with the *Balanced* status, you must enter the document total in this box after reviewing the document. If this check box is cleared, the system automatically validates the batch when the status of the batch is *Balanced*.
-   If the **Require Payment Reference on Entry** check box is selected, you must fill in the **Payment Ref.** box on the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) form. If this check box is cleared, you can leave the **Payment Ref.** box blank.
-   If the **Require Invoice/Memo Printing Before Release** check box is selected, you must print an AR invoice or memo before release for those customers who prefer to receive printed copies of the documents. That is, if the **Print Invoices** check box is selected on the [Customers](../Shared/../UserGuide/AR_30_30_00.md) \(AR303000\) form for a customer account, each invoice is created with the *Pending Print* status. If this check box is cleared, you can release the invoice without printing.
-   If the **Require Invoice/Memo Emailing Before Release** check box is selected, you must send an email with an AR invoice or memo before release for those customers who prefer to receive copies of the documents by email. That is, if the **Send Invoices by Email** check box is selected on the [Customers](../Shared/../UserGuide/AR_30_30_00.md) form for a customer account, each invoice is created with the *Pending Email* status. If this check box is cleared, you can release the invoice without sending an email.

**Parent topic:**[Processing Interbranch Invoices Without Balancing](../UserGuide/Finance_Invoice_Between_Branches_Not_Requiring_Balancing_Mapref.md)

