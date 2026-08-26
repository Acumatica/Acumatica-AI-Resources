# To Configure a Financial Year with Week-Based Periods {#_816cb9a4-0b48-43bd-a2b7-64f65ebd32d8 .task}

In Acumatica ERP, you can configure a financial year with financial periods based on weeks by using the [Financial Year](GL_10_10_00.md) \(GL101000\) form.

## To Configure a Financial Year {#section_fnf_mjv_vxb .section}

1.  Open the [Financial Year](../Shared/../UserGuide/GL_10_10_00.md) \(GL101000\) form.
2.  In the **Financial Year Starts On** box, specify the start date of the first financial year in which your company wants to keep records in Acumatica ERP.
3.  In the **First Financial Year** box, review the first year, which the system fills in based on the **Financial Year Starts On** date.

    **Tip:** If you plan to start recording operations at the very start of the financial year, select the previous year as the first financial year. You can then enter initial account balances in the period before the first period of live operations.

4.  Select the **Belongs to Next Year** check box if the financial year has the number of the year when the financial year ends \(rather than the year when it begins\).
5.  In the **Period Type** box, select one of the following:
    -   *Week*: Each financial period lasts one week, and there are 52 or 53 periods per year.
    -   *Two Weeks*: Each financial period lasts two weeks, and there are 26 or 27 periods per year.
    -   *Four Weeks*: Each financial period lasts four weeks, and there are 13 or 14 periods per year.
    -   *4-4-5 Weeks*: The financial year is divided into four quarters, and each quarter includes two four-week periods and a five-week period.
    -   *4-5-4 Weeks*: The financial year is divided into four quarters, and each quarter includes a four-week period, a five-week period, and a four-week period.
    -   *5-4-4 Weeks*: The financial year is divided into four quarters, and each quarter includes the following periods: a five-week period and two four-week periods.
6.  If the *Week* period type is selected, in the **Periods Start Day of Week** box, select the day of week on which periods will start.
7.  If the *Week* period type is selected, in the **Year End Calculation Method** box, select one of the following options, which will be used to define the end of each financial year:
    -   *Last Day of the Financial Year*: The system will add an additional period \(53rd week\) if the last period ends four or more days earlier than the financial year ends. The system will add no additional period if the last period ends fewer than four days before the financial year ends.
    -   *Include Last &lt;Day of Week&gt; of the Financial Year*: The system will add an additional period \(53rd week\) if there is a complete week between the end day of the last period and the end of the year. The system will add no additional period if the last period includes the last occurrence in the financial year of this day of the week.
    -   *Include &lt;Day of Week&gt; Nearest to the End of the Financial Year*: The system will add an additional period \(53rd week\) if the year's last period does not include the day of the week specified in the **Day of Week** box that is nearest to the end of the financial year. The system will add no additional period if the last period includes the day of the week that is nearest to the end of the financial year.
8.  On the form toolbar, click **Save**.

## Notes About the Instruction {#section_gnf_mjv_vxb .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about the Summary area of the form:

-   If you plan to start recording operations at the very start of the financial year, in the **Financial Year Starts On** box, select the previous year as the first financial year. You can then enter initial account balances in the period before the first period of live operations.
-   If the financial year runs from January 1 to December 31, the **Belongs to Next Year** check box should be cleared.

**Parent topic:**[Setting Up the Financial Year](../UserGuide/GL__MNG_Setting_Up_Financial_Year.md)

