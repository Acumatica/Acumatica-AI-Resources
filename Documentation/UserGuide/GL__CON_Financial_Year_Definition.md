# Financial Year Configuration {#_16bd99c2-ea6d-46fa-bc12-f1c222524e41 .concept}

You perform the configuration of the financial year on the [Financial Year](GL_10_10_00.md) \(GL101000\) form. To configure the financial year, you do the following on this form:

1.  Decide which year should be the first year, and specify it in the system.
2.  Define its structure—that is, define the periods of the year in the system.
3.  If it is necessary to have a special period for posting adjustments at the end of the year, add an adjustment period.

After you have saved the configuration of the financial year, you can generate periods in the system, as described in [Master Calendar Generation](GL__CON_Financial_Period_Activation.md).

In this topic, you will read about these steps in detail.

## Defining the First Financial Year {#section_fkf_mjv_vxb .section}

The first financial year usually designates the year when the company starts processing its operations in Acumatica ERP. However, we recommend that you define the first financial year so that it includes the last period before the company started to use Acumatica ERP, even if that means defining an extra financial year. You can then upload the ending balances of accounts to that period.

**Attention:** You cannot post transactions with dates earlier than the start date of the first period of the first financial year defined in Acumatica ERP.

For example, if you plan to start using Acumatica ERP from the first period of the 2026 financial year, you should select 2025 as the first year. You then generate all periods of 2025, open only the last period of 2025, and enter initial balances in the last period of 2025.

If your company starts operations in Acumatica ERP after the first financial period of the year, you select the current year as the first financial year and open only the periods for which you are going to enter transactions. For example, if you intended to start operations in November 2026, define financial years as calendar years, and use monthly financial periods, you would select 2026 as the first financial year and open periods for October 2026, November 2026, and December 2026.

You define the first financial year by selecting its start date in the **Financial Year Starts On** box on the [Financial Year](GL_10_10_00.md) \(GL101000\) form. After you have selected the start date, you can see the first financial year defined by its start date in the **First Financial Year** box.

In some organizations, the financial year starts in the current year but belongs to the next year. For example, the United States Government's financial year begins on October 1 of the previous calendar year and ends on September 30 of the year that gives the financial year its number—so the financial year 2026 ran from October 1, 2025, to September 30, 2026.

In this case, you indicate that the financial year starts in the current year but belongs to the next year by selecting the **Belongs to Next Year** option. The system automatically calculates the end date of the financial year as the end date of the last period.

## Defining Periods for the Financial Year {#section_nkf_mjv_vxb .section}

The financial year is divided into financial periods, which can have equal durations or different ones. The total length of all periods may or may not be equal to the year. In the **Period Type** box, you set up periods as follows:

-   To set up duration of each period based on months, you do one of the following selections:
    -   If the duration is one month, you select *Month*.
    -   If the duration is two months, you select *Two Months*.
    -   If the duration is four months, you select *Quarter*.
-   To set up the duration of each period based on weeks, you do one of the following selections:
    -   If the duration is one week, you select *Week*.
    -   If the duration is two weeks, you select *Two Weeks*.
    -   If the duration is four weeks, you select *Four Weeks*.
-   To divide financial year into four quarters with periods of different duration, you do one of the following selections:
    -   If each quarter includes two four-week periods and a five-week period, you select *4-4-5 Weeks*.
    -   If each quarter includes a four-week period, a five-week period, and a four-week period, you select *4-5-4 Weeks*.
    -   If each quarter includes a five-week period and two four-week periods, you select *5-4-4 Weeks*.
-   To divide financial year into user-defined number of periods, you select *Custom Number of Periods*.

For instructions, see:

-   [To Configure a Financial Year with Month-Based Periods](GL__Configuring_a_Fiscal_Year.md)
-   [To Configure a Financial Year with Week-Based Periods](GL__Configuring_Week_Periods.md)
-   [To Configure a Financial Year with a Custom Number of Periods](GL__HOW_To_Configure_Fin_Year_with_Custom_Number_of_Periods.md)

Other years will have the same structure as the first financial year. You can make limited modifications to the financial year and periods, as described in [Financial Year Modification](GL__CON_Financial_Year_Modification.md) and [Modification of Periods for a Year](GL__CON_Period_Modification.md).

## Setting Up Periods Based on Months {#section_rkf_mjv_vxb .section}

If you set up financial periods based on months \(*Month*, *Two Months*, or *Quarter*\), the periods will start and end on the same dates each year \(except the leap years\). Each successive financial year will start and end on the same date.

To define periods in the system, you click **Create Periods** on the form toolbar of the [Financial Year](GL_10_10_00.md) \(GL101000\) form after making the needed selections on the form. After you have generated the periods, you can review the defined year.

## Setting Up Periods Based on Weeks {#section_ukf_mjv_vxb .section}

If you set up financial periods based on weeks \(*Week*, *Two Weeks*, *Four Weeks*, *4-4-5 Weeks*, *4-5-4 Weeks*, or *5-4-4 Weeks*\), the start and end dates of same-name periods will vary within the year, and the number of periods per year may vary. Financial periods based on weeks always start on the same day of the week and always end on the same day of the week.

However, a calendar year has either 365 or 366 days, which is 52 full weeks plus 1 or 2 extra days. For a financial year based on the *4-4-5*, *4-5-4*, or *5-4-4* type, if the gap between the end of the financial year and the end of the last period exceeds three days, the system automatically adds an additional week to the last period.

For example, you set up the first financial year to start on January 1, 2025 with periods of the *5-4-4 Week* type. In the 2020 financial year, the last period of four weeks ends on December 26. The gap between the end of the financial period and end of the financial year is 5 days. The system automatically adds a week to the last period so that it lasts 5 weeks.

When you configure week-based periods \(*4-4-5 Weeks*, *4-5-4 Weeks*, and *5-4-4 Weeks*\), you need to specify the **Financial Year Starts On** setting on the [Financial Year](GL_10_10_00.md) \(GL101000\) form. The system generates a financial year as follows:

1.  It creates the first 12 periods, which is 52 weeks or 364 days.
2.  It tries to add the 53rd week. If the larger part of the week \(4 days\) belongs to the next year after the **Financial Year Starts On** day, the week is not added.

Suppose that the period type is *5-4-4 Weeks* and **Financial Year Starts On** is set to *01/01/2025*. When the calendar for financial year 2025 is created, the last period has either 28 or 35 days \(4 or 5 weeks\) depending on the **First Period Start Date**.

The table below illustrates the following:

-   If the **First Period Start Date** is *12/29/2024* or earlier, the 53rd week has 3 or fewer days that belong to the new year. That's why the 53rd week is added to the last period.
-   If the **First Period Start Date** is *12/30/2024* or later, the 53rd week has 4 or more days that belong to the new year. That's why the 53rd week is not added to the last period.

|First Period Start Date|Last Period Start Date \(First Period Start Date + 48 weeks\)|Is 53rd week added?|Last Period Length \(weeks\)|Last Period End Date|Last Period End Date if the period had 5 weeks|Number of days belonging to new year if the last period had 5 weeks|
|-----------------------|-------------------------------------------------------------|-------------------|----------------------------|--------------------|----------------------------------------------|-------------------------------------------------------------------|
|Dec. 28, 2024|Nov. 29, 2025|Yes|5|Jan. 2, 2026|Jan. 2, 2026|2|
|Dec. 29, 2024|Nov. 30, 2025|Yes|5|Jan. 3, 2026|Jan. 3, 2026|3|
|Dec. 30, 2024|Dec. 1, 2025|No|4|Dec. 28, 2026|Jan. 4, 2026|4|
|Dec. 31, 2024|Dec. 2, 2025|No|4|Dec. 29, 2026|Jan. 5, 2026|5|

**Attention:** For a week-based period type of calendar, because the financial year does not have a fixed start date and structure, you cannot generate a year template on the [Financial Year](GL_10_10_00.md) \(GL101000\) form.

## Setting Up Periods of Week Type {#section_zkf_mjv_vxb .section}

For a financial year with *Week* period type, you select the day of the week on which each period will start in the **Periods Start Day of Week** box. According to the selected day of the week, the system calculates the start date of the first period. You can view this date in the **First Period Start Date** box.

To process the difference between the length of a calendar year and the length of all week-long periods, you can set up the system to add an additional \(53rd\) period by selecting one of the following options in the **Year-End Calculation Method** box of the [Financial Year](GL_10_10_00.md) \(GL101000\) form:

-   To set up the system to add an additional period if the last period ends four or more days earlier than the financial year ends, you select *Last Day of the Financial Year*. The system adds no additional period if the last period ends fewer than four days before the financial year ends.
-   To set up the system to add an additional period if the year's last period does not include the last occurrence of the day of the week that is displayed in the **Day of Week** box in the financial year, you select *Include the Last &lt;Day of Week&gt; of the Financial Year*. The system adds no additional period if the last period includes the last occurrence in the financial year of this day of the week.
-   To set up the system to add an additional period if the year's last period does not include the day of the week specified in the **Day of Week** box that is nearest to the end of the financial year, you select *Include &lt;Day of Week&gt; Nearest to the End of the Financial Year*. The system adds no additional period if the last period includes the day of the week that is nearest to the end of the financial year.

**Attention:** When you select the start day of the week for the periods in the **Periods Start Day of Week** box, the day of the week in the **Day of Week** box is automatically specified as one day earlier so it is the last day of the period. The system uses this day of the week to calculate whether an additional period is necessary to be added as described above.

## Defining an Adjustment Period {#section_dlf_mjv_vxb .section}

An adjustment period is a special one-day period added after the last period in a year. Its start date and end date are the same as the end date of the last period of the current financial year. An adjustment period can be used for posting only adjustment transactions. If you need to, you can add an adjustment period during the initial setup of the financial year by selecting **Has Adjustment Period** check box on the [Financial Year](GL_10_10_00.md) \(GL101000\) form before you generate periods. The number of periods in the **Number of Financial Periods** box increases by one. With the adjustment period configured, when you generate periods, each year will have an adjustment period.

After initial setup of the financial year, you can add an adjustment period for a particular financial year or delete it for a particular financial year \(if the adjustment period was configured\) by using the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. For details, see [Modification of Periods for a Year](GL__CON_Period_Modification.md). For instructions on how to add the adjustment period, see [To Add an Adjustment Period](GL__Adding_an_Adjustment_Period.md).

## Shifting the First Financial Year Earlier {#section_glf_mjv_vxb .section}

If you realize that some financial data \(such as beginning balances for general ledger accounts\) should be posted before the start date, you may need to shift the first financial year earlier—that is, add a year before the current first financial year; the added year will become the new first year.

To shift the first financial year, you use the **Generate GL Calendars** dialog box on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

**Parent topic:**[Setting Up the Financial Year](../UserGuide/GL__MNG_Setting_Up_Financial_Year.md)

