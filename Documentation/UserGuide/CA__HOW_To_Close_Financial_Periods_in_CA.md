# To Close Financial Periods in Cash Management {#_1f38f993-21aa-4274-930f-ceae611a605f .task}

To close any number of financial periods in the cash management subledger, you use the [Close Financial Periods](CA_50_60_00.md) \(CA506000\) form, as described in this topic. \(Alternatively, you can close the periods in any subledger on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form when you close the periods in the general ledger.\) You can close a financial period only if there are no unreleased documents dated in this period.

In Acumatica ERP, if the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, only users assigned to the *Financial Supervisor* role on the [User Roles](SM_20_10_05.md) \(SM201005\) form can post transactions to closed periods. If this check box is cleared, other users can post to closed periods as well.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Close Financial Periods in Cash Management {#section_et2_kjv_vxb .section}

1.  Open the [Close Financial Periods](CA_50_60_00.md) \(CA506000\) form.
2.  In the **Company** box of the Selection area, select the company for which you want to close a financial period.

    This box appears on the form if your organization does not use centralized management of financial periods—that is, if the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

3.  In the **Action** box, select *Close*.
4.  If you need to close financial periods in more than one financial year, in the **To Year** box, select the latest year.
5.  Select the unlabeled check box in the row of the latest period you want to close. The periods preceding this period are selected automatically.
6.  Optional: To review unreleased cash management documents for the selected period or periods, click **Unreleased Documents** on the form toolbar.

    The system displays either the Unreleased CA Documents report or a message that there are no unreleased documents in the period or periods.

7.  On the form toolbar, click **Process** to close the selected period or periods, or click **Process All** to close all the periods in the list.

**Parent topic:**[Closing Financial Periods in Cash Management](../UserGuide/CA__MNG_Closing_Financial_Periods.md)

