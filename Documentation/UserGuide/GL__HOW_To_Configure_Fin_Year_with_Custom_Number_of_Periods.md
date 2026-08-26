# To Configure a Financial Year with a Custom Number of Periods {#_4e545cc5-93e4-453a-ac21-a2189d5deabb .task}

You use the [Financial Year](GL_10_10_00.md) \(GL101000\) form to configure a financial year with a custom number of periods.

## To Configure a Financial Year with a Custom Number of Periods {#section_v4f_mjv_vxb .section}

1.  Open the [Financial Year](../Shared/../UserGuide/GL_10_10_00.md) \(GL101000\) form.
2.  In the **Financial Year Starts On** box, specify the start date of the first financial year in which your company wants to keep records in Acumatica ERP.
3.  In the **First Financial Year** box, review the first year, which the system fills in based on the **Financial Year Starts On** date.
4.  If the financial year has the number of the year when the financial year ends \(rather than the year when it begins\), select the **Belongs to Next Year** check box.
5.  In the **Period Type** box, select *Custom Number of Periods*.
6.  In the **Number of Financial Periods** box, type the number of periods you want the financial year to be divided into.
7.  On the form toolbar, click **Create Periods**.
8.  In the table, adjust the lengths of the periods by changing their **Start Date** and **End Date**, and provide descriptions for periods in the **Description** column.
9.  On the form toolbar, click **Save**.

## Notes About the Instruction {#section_w4f_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   If you plan to start recording operations at the very start of the financial year, in the **Financial Year Starts On** box, select the previous year as the first financial year. You can then enter initial account balances in the period before the first period of live operations.
-   If the financial year runs from January 1 to December 31, the **Belongs to Next Year** check box should be cleared.

**Parent topic:**[Setting Up the Financial Year](../UserGuide/GL__MNG_Setting_Up_Financial_Year.md)

