# Closing a Financial Period in a Company: General Information {#_8b7c94e4-c170-4805-ac90-5e0329ec0843 .concept}

After all the needed transactions have been posted to a financial period and all figures have been verified, you can close the financial period in the system to prevent users from posting new transactions to the period. Financial periods can be closed starting from the first period of the first financial year; that is, you cannot close a financial period if the previous one has not been closed yet. You can close multiple periods at once \(for instance, all periods of a year\). Once closed, a period can later be reopened; also, you can allow users to enter documents and post transactions to the closed period.

## Learning Objectives { .section}

In this chapter, you will learn how to close periods for an individual company in all subledgers and the general ledger at the same time when the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Financial Period Management { .section}

You can manage financial periods at a company level and at the tenant level, depending on whether the *Centralized Period Management* feature is enabled or disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When the *Centralized Period Management* feature is enabled, all companies within a single tenant use the same calendar \(which is set up on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form\) and a particular financial period has the same status in all companies. You can open, close, lock, deactivate, reopen, and unlock a financial period for all companies at the same time.

If the *Centralized Period Management* feature is disabled, the accounting department of each company can open and close the periods independently. As a result, the period statuses can be different in different companies though the companies can use the same calendar. When this feature is disabled, you use the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form to change period statuses separately for each particular company. On the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form, you can review financial periods and their statuses for a particular company.

To use different calendars in different companies, the *Multiple Calendars Support* feature needs to be enabled.

If the *Multiple Calendars Support* feature is disabled, the system generates company calendars automatically when the master calendar is generated \(for the companies that already exist\) or when a new company is created. If the *Multiple Calendars Support* feature is enabled, users generate calendars for each company. The system generates the corresponding years in the master calendar in the background.

## Closing a Period in the General Ledger {#_82835322-d7a0-464d-b09f-adedf7354980 .section}

A period is assigned the *Closed* status only after it has been closed in the general ledger on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form.

Before you close periods, check whether there are unposted documents for the periods that you want to close. To do that, on the [Manage Financial Periods](GL_50_30_00.md) form, you select the periods you want to close and click **Unposted Documents** on the form toolbar. In the Unposted &lt;subledger&gt; Documents report, which opens, you can review the list of documents that have not been posted to the selected periods in a particular subledger. Before a period can be closed in the general ledger, it has to be closed in all the subledgers in use. Periods that are closed in one or several subledgers have the **Closed in &lt;subledger&gt;** check box selected for these subledgers. A period can be closed in a particular subledger on the Close Financial Periods form of the subledger or on the [Manage Financial Periods](GL_50_30_00.md) form, along with the general ledger.

If a period was closed by mistake, you can reopen it on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form.

**Parent topic:**[Closing Financial Periods in Separate Companies](../UserGuide/Finance_ClosingPeriods_Company_Mapref.md)

