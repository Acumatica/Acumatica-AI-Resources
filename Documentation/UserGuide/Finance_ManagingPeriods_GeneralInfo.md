# Financial Periods: General Information {#_5a1a7765-7902-4104-904f-bfcae74d19dc .concept}

Early in the configuration of Acumatica ERP, financial periods were configured to meet your company's needs and to organize the journal transactions posted to make financial statements and reports meaningful. Over time, you manage these periods to keep your organization's financial processes flowing smoothly. This chapter contains instructions on maintaining financial periods in Acumatica ERP.

## Learning Objectives {#section_x5j_mjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Lock a financial period in a subledger
-   Unlock a locked financial period in a subledger
-   Reopen a financial period in the subledgers and the general ledger at the same time
-   Deactivate a financial period in the subledgers and the general ledger

## Statuses of Financial Periods { .section}

Every financial period belongs to a range of periods that have a particular status—*Inactive*, *Open*, *Closed*, or *Locked*. The system can contain four period ranges, each with a different status.

The example shown in the following screenshot illustrates multiple period ranges in the system, with the periods in each range having a particular status that is valid in the system. You can see the following ranges of periods:

-   *01-2025* to *02-2025*, whose periods have the *Locked* status
-   *03-2025* to *04-2025*, whose periods have the *Closed* status
-   *05-2025* to *10-2025*, whose periods have the *Open* status
-   *11-2025* to *13-2025*, whose periods have the *Inactive* status

![](../Shared/Images/process_GL_Financial_Period_Statuses_example.png "Ranges of financial periods with particular statuses")

The following table lists the possible statuses of financial periods, describes each status, and presents the action or actions that you can perform to change the statuses of periods of each listed status. You can perform actions on periods on the [Manage Financial Periods](../Shared/../UserGuide/GL_50_30_00.md) \(GL503000\) form by clicking buttons on the form toolbar or the equivalent commands on the More menu.

|Status|Description of a Period with This Status|Actions That Can Be Performed|
|------|----------------------------------------|-----------------------------|
|*Inactive*|An inactive period has been generated in the system but has not yet been opened. Transactions cannot be posted to the period.|Open the period by clicking **Open**|
|*Open*|An open period can be selected in records, and transactions can be posted to it.|Close the period by clicking **Close** or deactivate it by clicking **Deactivate**|
|*Closed*|A closed period cannot be selected in records, and users can be restricted from posting to it.

 If the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](../Shared/../UserGuide/GL_10_20_00.md) \(GL102000\) form, transactions can be posted to a closed period by only users to whom the *Financial Supervisor* role has been assigned. If this check box is cleared, any user can post to closed periods.

|Lock the period by clicking **Lock** or reopen it by clicking **Reopen**|
|*Locked*|A locked period cannot be selected in a record, and transactions cannot be posted to it in any subledger.

 You lock a period to prevent changes to period-specific data that has been verified and disclosed in reports.

|Unlock the period by clicking **Unlock**|

The following diagram illustrates the statuses in the lifetime of financial periods in the system, along with the actions that change the statuses of these periods.

![](../Shared/Images/diag_GL_Financial_Period_Lifetime.png)

The lifetime of a financial period in the system includes the following actions:

1.  A financial administrator generates the financial period with the *Inactive* status.
2.  To give users the ability to create a record in this period or post a transaction to the period under one of the company branches, the financial administrator must open the needed period in the company. This gives the period the *Open* status, and it can be used in all subledgers.
3.  Optional: The financial administrator inactivates an open period in the system to prevent users from posting transactions to this period. The inactivated period and the preceding periods will be assigned the *Inactive* status again.
4.  When all the needed records have been processed in the period, the financial administrator closes the period to prevent erroneous posting. For a period to be closed in a subledger, it must not contain any unreleased documents \(except for rejected and scheduled documents\), and the previous period has to be closed in this subledger. For a period to be closed in the general ledger, it must not contain any unposted transactions \(except for scheduled ones\), it has to be closed in all other subledgers, and the previous period has to be closed in the general ledger. When the financial administrator closes the period, the period and the preceding periods in the range \(that is, with the same status\) will be assigned the *Closed* status.
5.  Optional: A user to which the *Financial Supervisor* role is assigned reopens a closed period for posting. The reopening process sets the period's status to *Open* for the selected period or range of periods; optionally, the periods can be reopened in all subledgers.
6.  To keep the data unchanged by all the users and the validation processes, the financial administrator locks a closed period. The period can be locked only if the previous period is locked as well. This process assigns the *Locked* status to the range of periods to which the selected period belongs.
7.  Optional: If necessary, a user to which the *Financial Supervisor* role is assigned unlocks the period to assign the *Closed* status to it again so that the needed transactions can be posted to it.

## Locking of Periods {#section_gvj_mjv_vxb .section}

Once a period has been closed and the data from this period has been verified and disclosed in financial reports, you need to secure this data from further changes. To do this, you need to lock this period—which changes its status from *Closed* to *Locked*—on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form. For detailed instructions, see [Financial Periods: To Lock a Period](Finance_ManagingPeriods_LockingPeriod_Activity.md).

If necessary, you can unlock a locked period. For instructions, see [Financial Periods: To Unlock a Period](Finance_ManagingPeriods_UnlockingPeriod_Activity.md).

## Reopening of Periods {#section_jvj_mjv_vxb .section}

You use the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form to reopen periods that have been closed. You can reopen a period in the general ledger only \(with the period staying closed in all the subledgers\) or you can select the **Reopen Financial Periods in All Modules** check box to reopen this period in all the subledgers and the general ledger at the same time. If you need to open a period in a particular subledger, you select *Reopen* in the **Action** box on one of the following forms before invoking processing for the selected period or periods:

-   For accounts payable: The [Close Financial Periods](AP_50_60_00.md) \(AP506000\) form
-   For accounts receivable: The [Close Financial Periods](AR_50_90_00.md) \(AR506000\) form
-   For cash management: The [Close Financial Periods](CA_50_60_00.md) \(CA506000\) form
-   For inventory: The [Close Financial Periods](IN_50_90_00.md) \(IN509000\) form
-   For fixed assets: The [Close Financial Periods](FA_50_90_00.md) \(FA509000\) form

For detailed instructions, see [Financial Periods: To Reopen a Period](Finance_ManagingPeriods_ReopeningPeriod_Activity.md).

## Deactivation of Periods {#section_mvj_mjv_vxb .section}

If periods have been opened by mistake, to prevent posting to these periods, you can deactivate these financial periods for the master calendar or a company calendar on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form.

If you need to review the statuses of periods before deactivating them, you open the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form if the *Centralized Period Management* feature is enabled, or the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form if this feature is disabled. From either form, you then navigate to the [Manage Financial Periods](GL_50_30_00.md) form by clicking **Deactivate Periods** on the More menu.

For detailed instructions, see [Financial Periods: To Deactivate a Period](Finance_ManagingPeriods_DeactivatingPeriod_Activity.md).

**Parent topic:**[Managing Financial Periods](../UserGuide/Finance_ManagingPeriods_Mapref.md)

