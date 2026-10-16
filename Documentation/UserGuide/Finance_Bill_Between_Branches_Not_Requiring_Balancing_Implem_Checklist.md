# Interbranch Bills Without Balancing: Implementation Checklist

Before users begin processing AP bills between branches that do not require balancing, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table

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

Multiple forms

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

Be sure that the financial periods for which bills will be defined have a status of *Open*.

</td><td>

You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

</td></tr><tr><td>

[Vendors](AP_30_30_00.md) \(AP303000\) form

</td><td>

Ensure that all needed vendors—that is, all vendors for which AP bills between branches not requiring balancing may be created—have been defined in the system.

</td><td>

 

</td></tr></tbody>
</table>

## Settings That Can Affect the Processing Workflow

The following settings on the [Accounts Payable Preferences](../Shared/../UserGuide/AP_10_10_00.md) \(AP101000\) form can affect the processing workflow:

-   If the **Automatically Post on Release** check box is selected, the system posts the appropriate transactions to the general ledger when AP documents are released. If this check box is cleared, you have to post the batch after you release the AP document.
-   If the **Post Summary on Updating GL** check box is selected, AP documents are posted to the general ledger with summarized row amounts if particular criteria are met. That is, if multiple lines in an AP document specify the same account and branch, then in the GL batch, these rows are combined into one row \(that is, one journal entry\) with the summarized amount. If this check box is cleared, the lines of the AP document are not combined into one journal entry in the GL batch.
-   If the **Hold Documents on Entry** check box is selected in the **Data Entry Settings** section, when new documents are entered, they are assigned the *On Hold* status. If the **Hold Documents on Entry** check box is cleared, the documents are assigned the *Balanced* status.
-   If the **Validate Document Totals on Entry** check box is selected, the system adds the **Amount** box to the Summary area of the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form. To save a document with the *Balanced* status, you must enter the document total in this box after reviewing the document. If this check box is cleared, the system automatically validates the batch when the status of the batch is *Balanced*.
-   If the **Require Vendor Reference** check box is selected, you must fill in the **Vendor Ref.** box on the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) form. If this check box is cleared, you can leave the **Vendor Ref.** box blank.

**Parent topic:**[Processing Interbranch Bills Without Balancing](../UserGuide/Finance_Bill_Between_Branches_Not_Requiring_Balancing_Mapref.md)

