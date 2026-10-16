# Intercompany Funds Transfers: Implementation Checklist

Before users begin processing funds transfers between companies, you must make sure that the system has been configured properly and that all required entities have been created, as described in the following table.

<table id="_30383614-e2ab-47c0-9385-6b05f3f6483d"><thead><tr><th>

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

Make sure that the minimum configuration of the companies has been performed.

</td><td>

 

</td></tr><tr><td>

[Cash Accounts](CA_20_20_00.md#)\(CA202000\) form

</td><td>

Check whether the necessary cash accounts have been created, as described in [Cash Management: To Create Cash Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_Cash_Accounts.md).

</td><td>

 

</td></tr><tr><td>

[Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form

</td><td>

Be sure that the account mapping rules have been defined for the companies, as described in [Interbranch Account Mapping: General Information](../ImplementationGuide/config_InterBranch_Mapping_Rules_GeneralInfo.md).

</td><td>

 

</td></tr><tr><td>

[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form

</td><td>

Make sure that the periods during which funds transfers may occur have a status of *Open*.

</td><td>

You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

</td></tr></tbody>
</table>

## Settings That Can Affect the Processing Workflow

The following settings on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form can affect the processing workflow:

-   If the **Automatically Post to GL on Release** check box is selected, the system posts transactions to the general ledger when cash management documents are released. If this check box is cleared, you have to post the batch after you release the document.
-   If the **Hold Transactions on Entry** check box is selected in the **Data Entry Settings** section, when new transactions and funds transfers are entered, they are assigned the *On Hold* status. If the **Hold Transactions on Entry** check box is cleared, the transactions and funds transfers are assigned the *Balanced* status.
-   If the **Require Document Ref. Nbr. on Entry** check box is selected, you must fill in the **Document Ref.** box on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form for new funds transfers. If this check box is cleared, you can leave the **Document Ref.** box blank.

**Parent topic:**[Processing Inter-Company Funds Transfers](../UserGuide/Finance_Funds_Transfer_Between_Companies_Mapref.md)

