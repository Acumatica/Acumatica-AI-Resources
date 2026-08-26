# Period-End Procedures: General Information {#_67ad0986-9b7b-458e-9b27-51a699fc7246 .concept}

Although you can close financial periods in the AR subledger and in the general ledger at the same time, you may decide to close periods in the AR subledger separately in your system. On the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form, you can find information about the status of periods.

## Learning Objectives { .section}

In this chapter, you will learn how to close a period in accounts receivable.

## Applicable Scenarios { .section}

You close financial periods in a separate subledger to prevent users from posting transactions to it.

## Closing of a Period in a Subledger {#section_h2p_njv_vxb .section}

Before you close a period in the subledger, you should make sure that there are no unreleased documents that are to be posted to this period. To close periods, you use the [Close Financial Periods](AR_50_90_00.md) \(AR506000\) form. \(Alternatively, you can close the periods in any subledger on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form when you close the periods in the general ledger.\) You can close a financial period only if there are no unreleased documents dated in this period.

In Acumatica ERP, if the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, only users assigned to the *Financial Supervisor* role on the [User Roles](SM_20_10_05.md) \(SM201005\) form can post transactions to closed periods. If this check box is cleared, other users can post to closed periods as well.

When you close a given financial period in the AR subledger, all preceding open periods will be closed in the subledger as well.

**Tip:** You may need to reopen a financial period if it has been closed by mistake or if you need to post any adjustments to this period. For details, see [To Reopen a Financial Period in Accounts Receivable](AR__HOW_To_Reopen_Financial_Period_in_AR.md).

**Parent topic:**[Performing Period-End Procedures](../UserGuide/Finance_Period-End_Procedures_AR_Mapref.md)

