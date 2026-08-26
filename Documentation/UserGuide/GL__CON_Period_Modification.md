# Modification of Periods for a Year {#_cd9585bb-1334-4c97-8cbd-7dc22d234772 .concept}

After financial periods are defined, the same periods will be used for all subsequent financial years. If needed, you can modify the financial periods of a year on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. You can change the settings of a financial period if you did not post any transactions to the period you need to modify.

**Important:** Modifying periods is highly inadvisable, because it will affect all budgets and reports that compare information between the previous year and the current one. Such a change can result in reporting errors and formatting problems.

In this topic, you will read about how to edit periods, add an adjustment period, and delete periods in the system.

## Editing Periods {#section_n5f_mjv_vxb .section}

You can perform some modifications of financial periods by selecting the **User-Defined Periods** check box on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.

If you want to change a duration of a period, you edit the end date for the period. The system will adjust the start date of the next period automatically.

After you have modified the periods, the last period may end on a different date than the financial year does. If that happens, when you attempt to save the periods, the system opens the **Update Financial Year** dialog box, and you need to select how to make the year end by selecting either of the following option buttons:

-   **Modify Financial Year Settings**: To modify the settings of the financial year to make the last period end when the year ends.
-   **Extend Last Period**: To extend the last period so that it includes the end of the year.

    **Attention:** This option button is available only if you have changed the end date of the last period to the earlier one.


After you save the changes, you can review periods and change them once again if necessary, or proceed to perform financial operations for these periods.

## Modifying Week-Based Periods {#section_u5f_mjv_vxb .section}

If you edit the end date for periods based on weeks on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form, the day of week on which the last period ends can differ from the day on which other periods end. When you save your changes, the system opens the **Update Financial Year** dialog box. In the dialog box, you select how to make the year end as described in the section above. You can also set the system to move the start date of a financial period to another day of the week by selecting the **Move Start Date of Financial Period** check box.

**Attention:** You should move the start day of periods to another day of week only if it is absolutely necessary; the change of the start day will affect budgets and reports that compare the data of successive financial years.

If you do not want to change the end day that is already configured, you clear the **Move Start Date of Financial Period** check box. The system adjusts the end date of the period so that it meets the configuration of the financial year.

## Adding an Adjustment Period {#section_y5f_mjv_vxb .section}

To post adjustment transactions, you can add an adjustment period after the last period. The adjustment period is one-day period, the start and end days of which are the same as the end date of the last period of the current financial year. To add an adjustment period, you select the **User-Defined Periods** check box and click **Add Row** on the table toolbar of the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. The system automatically selects the check box in the **Adjustment Period** column. The adjustment period will be added only for this particular year.

## Deleting Periods {#section_avf_mjv_vxb .section}

If you have realized that a period is unnecessary for the financial year \(for example, an adjustment period\), you can delete it on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form if no transactions have been posted to it yet. To do so, you select the **User-Defined Periods** check box, select a period in the table and click **Delete Row** on the table toolbar for the form.

If during initial configuration, you have generated periods and discovered that this is not a configuration that you need, you need to delete all periods to be able to configure a year once again. To do so, on the [Master Financial Calendar](GL_20_10_00.md) form, you delete the generated year and its periods by clicking **Delete** on the form toolbar. After you have changed the configuration on the [Financial Year](GL_10_10_00.md) \(GL101000\) form, you can add the year again on the [Master Financial Calendar](GL_20_10_00.md) form, generate periods according to the financial year settings, and modify the periods if necessary.

**Parent topic:**[Generating Financial Calendars](../UserGuide/GL__MNG_Financial_Calendars.md)

