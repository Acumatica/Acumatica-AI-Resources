# To Close Financial Periods in Inventory {#_1775d74e-f6cc-4530-9009-e545494fe50a .task}

You close any number of financial periods in the inventory subledger by using the [Close Financial Periods](IN_50_90_00.md) \(IN509000\) form, as described in this topic. \(Alternatively, you can close the periods in any subledger on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form when you close the periods in the general ledger.\) You can close a financial period only if there are no unreleased documents dated in this period.

In Acumatica ERP, if the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, only users assigned to the *Financial Supervisor* role on the [User Roles](SM_20_10_05.md) \(SM201005\) form can post transactions to closed periods. If this check box is cleared, other users can post to closed periods as well.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

Make sure that the balances of the inventory accounts are reconciled in the inventory subledger and the general ledger for the period or periods you are going to close.

## To Close Financial Periods in Inventory { .section}

1.  Open the [Close Financial Periods](../Shared/../UserGuide/IN_50_90_00.md) \(IN509000\) form.
2.  In the **Company** box of the Selection area, select the company for which you want to close a financial period.

    This box appears on the form if your organization does not use centralized management of financial periods— that is, if the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

3.  In the **Action** box, select *Close*.
4.  If you need to close financial periods in more than one financial year, in the **To Year** box, select the latest year.
5.  Select the unlabeled check box in the row of the latest period you want to close. The periods preceding this period are selected automatically.
6.  Optional: To review unreleased inventory documents for the selected periods, click **Unreleased Documents** on the form toolbar.

    The system displays either the [Unreleased IN Documents](../Shared/../UserGuide/IN_65_66_00.md) \(IN656600\) report or a message that there are no unreleased documents.

7.  Optional: To review unposted inventory documents for the selected periods, click **Documents Not Posted to Inventory** on the form toolbar.

    The system displays either the [Documents Not Posted to Inventory](../Shared/../UserGuide/IN_65_65_00.md) \(IN656500\) report or a message that unposted documents do not exist.

8.  On the form toolbar, click **Process** to close the selected period or periods, or click **Process All** to close all the periods in the list.

**Parent topic:**[Closing Inventory Periods](../UserGuide/IN__mng_Closing_Inventory_Periods.md)

