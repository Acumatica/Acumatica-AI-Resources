# General Ledger: Financial Years {#_8dd17de3-461d-4d20-a4c7-8736d1313b9d .concept}

In Acumatica ERP, transactions are posted to the financial periods that have been defined in the system. Thus, before any transactions are posted, you have to define the structure of the financial year in the system. Based on this structure of the financial year, you can generate periods for any number of financial years and then open the periods.

## Financial Year Setup { .section}

You define the financial year on the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form by doing the following:

1.  You decide which year should be the first year, and specify it in the system. The first financial year usually designates the year when the company starts processing its operations in Acumatica ERP. However, we recommend that you define the first financial year so that it includes the last period before the company started to use Acumatica ERP, even if this means defining an extra financial year.

    You can upload the ending balances of accounts to that period later, after periods have been defined.

2.  You define the structure of the financial year that your company will use—that is, you define the periods of the year in the system.
3.  If it is necessary to have a special period for posting adjustments at the end of the year, you add an adjustment period.

After you have set up the financial year, you need to generate a master calendar.

## Master Calendar Generation { .section}

You generate a master financial calendar on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md#) \(GL201000\) form for any number of financial years by clicking **Generate Calendar** on the form toolbar.

After periods have been generated, you can modify them before any transactions have been made. To do so, you select the **User-Defined Periods** check box.

After you have generated the master calendar, you open any number of periods for posting.

## Period Opening { .section}

You have to open the periods to which users will post transactions and documents. To open periods, on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md#) \(GL201000\) form, you first make sure the necessary year is selected in the **Financial Year** box, and then on the More menu, click **Open Periods**.

After you have opened periods, they can be used in transactions and documents. At any time, you can have multiple open periods; opening one period does not require you to close the previous one.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

