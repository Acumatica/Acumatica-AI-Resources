# To Add an Account to the Chart of Accounts {#_b78e9d89-6225-498a-a119-bc7fb42f597a .task}

You use the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form to add an account.

## Before You Proceed {#section_y1f_mjv_vxb .section}

-   Know your organization's agreements about account classes.
-   On the [Account Classes](GL_20_20_00.md) \(GL202000\) form, make sure the list of account classes defined in the system contains the class to which you want to assign the new account.
-   Review the structure of accounts and the meanings of their segment values in your organization. For more information about account identifiers, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md) and [Account Identification](GL__con_Account_and_Subaccount_Identifiers.md).

## To Add an Account {#section_abf_mjv_vxb .section}

1.  Open the [Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the table toolbar, click **Add Row**.
3.  Click in the **Account** column of the new row to view the input mask for account identifiers. Enter the account in one of the following ways. The applicable scenario depends on whether the **Validate** check box on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) \(CS202000\) form is selected for the segment of the *ACCOUNT* segmented key:
    -   Select the segment value from the list of predefined values \(if the check box is selected for the segment\).
    -   Type a value for the segment here \(if the check box is cleared for the segment\). The system validates only the number of characters and the type of string \(which is specified in the **Edit Mask** column on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) form for the segment\).
4.  If needed, in the **Account Class** column, select the account class to which the account is assigned.
5.  In the **Type** column, select the type of account: *Asset*, *Liability*, *Income*, or *Expense*.
6.  If needed, in the **Description** column, briefly describe the account.
7.  If the account is to be used as a control account for a subledger, select this subledger in the **Control Account Module** column.
8.  If you have marked the account as a control account for a subledger but want users to be able to post to this account from the general ledger and other subledgers, select the **Allow Manual Entry** check box.
9.  If the users should specify the quantities and units of measure \(UOMs\), along with amounts, for each transaction to be posted to this account, select the **Require Units** check box.
10. Select the **Use Default Subaccount** check box if you want the system to fill in the **Subaccount** column with the default subaccount for the account on the [Journal Transactions](../Shared/../UserGuide/GL_30_10_00.md) \(GL301000\) form.
11. In the **Post Option** column, select whether transactions should be posted to this account in detail \(*Detail*\) or in summary \(*Summary*\).
12. If needed, in **Consolidation Account** column, specify the external GL account \(from the parent company's chart of accounts\) to which the balance of the account will be imported in the consolidation process.
13. If you need to denominate the account, select the currency in the **Currency** column, and specify the type of exchange rate in the **Revaluation Rate Type** column.
14. On the form toolbar, click **Save**.

## Notes About the Procedure {#section_bbf_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note that the **Use Default Subaccount** column appears on the form only if the *Subaccount* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

