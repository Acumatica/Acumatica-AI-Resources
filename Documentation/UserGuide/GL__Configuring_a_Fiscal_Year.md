# To Configure a Financial Year with Month-Based Periods {#_605d8dfe-00a7-4b07-891b-abb3d51f2160 .task}

You use the [Financial Year](GL_10_10_00.md) \(GL101000\) form to configure a financial year that has month-based periods in Acumatica ERP.

## To Set Up a Financial Year {#section_zlf_mjv_vxb .section}

1.  Open the [Financial Year](../Shared/../UserGuide/GL_10_10_00.md) \(GL101000\) form.
2.  In the **Financial Year Starts On** box, specify the start date of the first financial year in which your company wants to keep records in Acumatica ERP.
3.  In the **First Financial Year** box, review the first year, which the system fills in based on the **Financial Year Starts On** date.
4.  Select the **Belongs to Next Year** check box if the financial year has the number of the year when the financial year ends \(rather than the year when it begins\).
5.  In the **Period Type** box, select one of the following month-based options to define the periods of each financial year:
    -   *Month*: Each financial period lasts one month, and there are 12 periods per year.
    -   *Two Months*: Each financial period lasts two months, and there are six periods per year.
    -   *Quarter*: Each financial period lasts a quarter \(four months\), and there are three periods per year.
6.  If you want the system to generate an adjustment period, select the **Has Adjustment Period** check box.
7.  On the form toolbar, click **Create Periods**.
8.  On the form toolbar, click **Save**.

## Notes About the Instruction {#section_amf_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   If you plan to start recording operations at the very start of the financial year, in the **Financial Year Starts On** box, select the previous year as the first financial year. You can then enter initial account balances in the period before the first period of live operations.
-   If the financial year runs from January 1 to December 31, the **Belongs to Next Year** check box should be cleared.

**Parent topic:**[Setting Up the Financial Year](../UserGuide/GL__MNG_Setting_Up_Financial_Year.md)

