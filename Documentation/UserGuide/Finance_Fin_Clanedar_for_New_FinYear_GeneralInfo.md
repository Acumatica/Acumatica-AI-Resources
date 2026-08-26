# Financial Calendar Generation: General Information {#_03432fa3-d1ca-4972-b43e-2bc90bbcf2a5 .concept}

In Acumatica ERP, you add a new year and generate financial periods for each new year to which transactions and documents are going to be posted.

**Attention:** In this chapter, financial periods are managed at the company level—that is, the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives {#section_w2g_mjv_vxb .section}

You will learn how to generate financial periods for a new financial year in the system and review the period statuses.

## Applicable Scenarios {#section_y2g_mjv_vxb .section}

You generate financial periods at the end of a year for the upcoming year so that you can open periods and post transactions in the upcoming year.

## Generation of the Master Calendar {#section_afg_mjv_vxb .section}

In Acumatica ERP, you can post transactions to periods that are open or to both open and closed periods \(depending on the settings on the [General Ledger Preferences](GL_10_20_00.md#) \(GL102000\) form\). You generate financial periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

**Attention:** If the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you have to generate financial periods separately in each company on the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form. If the *Centralized Period Management* feature is enabled, you generate financial periods for all companies in the tenant on the [Master Financial Calendar](GL_20_10_00.md) form.

When periods have been generated, you can modify them before any transactions have been performed. To do so, you select the **User-Defined Periods** check box.

After you have generated the master calendar, you open any number of periods for posting on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form. \(On this form, you can process periods with the selected action to change their statuses.\)

## Opening of Periods {#section_ffg_mjv_vxb .section}

You have to open the periods to which users will post transactions and documents; otherwise, the periods will not appear for selection on the forms.

Depending on the *Centralized Period Management* feature, you open periods as follows:

-   If the *Centralized Period Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you have to open financial periods separately in each company. You can review the statuses of periods in each company on the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form. To open periods, you make sure that the necessary company and year are selected, and then on the More menu, you click **Open Periods**. The system navigates to the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form, where you click **Process** or **Process All** to open periods.
-   If the *Centralized Period Management* feature is enabled, you open financial periods for all companies in the tenant. You can review the statuses of financial periods for all companies on the [Master Financial Calendar](GL_20_10_00.md) form. To open periods, you make sure that the necessary year is selected, and then on the More menu, you click **Open Periods**. The system navigates to the [Manage Financial Periods](GL_50_30_00.md) form, where you click **Process** or **Process All** to open periods.

After you have opened periods, they can be used for posting documents and transactions in Acumatica ERP. At any time, you can have multiple open periods. Opening one period does not require you to close the previous one.

**Parent topic:**[Generating a Financial Calendar](../UserGuide/Finance_Fin_Clanedar_for_New_FinYear_Mapref.md)

