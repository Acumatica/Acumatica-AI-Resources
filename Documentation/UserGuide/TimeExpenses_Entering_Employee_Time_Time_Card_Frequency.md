# Employee Time Entry: Time Card Frequencies {#_f56784f3-ffab-44e3-8b3c-d0bc293ed69c .concept}

In Acumatica ERP, you can create time cards for weekly, biweekly, semi-monthly, or monthly periods and assign different frequencies to different employees. You can also create time cards for custom weeks.

## Setting Up The Time Card Frequency { .section}

To support the creation of time cards with weekly, biweekly, semi-monthly, or monthly frequencies, you specify the frequency settings in the **Time Cards** section of the **Time Reporting** tab on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form.

**Attention:** These settings are available only if the **Custom Week Configuration** check box is cleared.

**The Default Frequency Setting**

In the **Default Frequency** box, you select the time card frequency that applies to all employees by default:

-   *Weekly* \(default\): The time cards are created on a weekly basis. Each period lasts 7 consecutive days.
-   *Biweekly*: Time cards are created for biweekly periods. Each period lasts 14 consecutive days.
-   *Semi-monthly*: Time cards are created for two periods within each month as follows:
    -   The first period ends on the day before the specified start day of the second period. If the second period’s start day exceeds the number of days in the month, the first period ends on the day before the last day of the month.
    -   The second period starts on the specified start day of the second period or on the last day of the month if its start day isn’t specified. The period ends on the day before the start day of the first period in the next month. If the first period starts on the first day of the month, the second period ends on the last day of the current month.
-   *Monthly*: Time cards are created on a monthly basis as follows:
    -   If the monthly period starts on the first day of the month, the system determines the end date of the period based on the calendar month.
    -   If the monthly period starts on any other day of the month, the system determines the end date based on the start day of the next monthly period. The period ends on the day before the specified start day in the next month. If the next month does not contain the specified start day \(for example, when the start day is the 31st\), the period ends on the last day of the next month.

If you change the option in the **Default Frequency** box, the new frequency applies only to employees created after the change is saved.

**Start Day Settings**

By using the following settings, you define the start day of periods with different time card frequencies:

-   **First Day of Week**: Select the day of the week.
-   **Biweekly Period Start Day**: Select the day of the week.
-   **Start Day of 1st Semimonthly Period**: Select the day of the month.
-   **Start Day of 2nd Semimonthly Period**: Select the day of the month.

    **Important:** The difference between the start days of the first and second semi-monthly periods must be more than 10 days and less than 20 days.

-   **Start Day of Monthly Period**: Select the day of the month.

If you change the start day settings, the changes apply to time cards and activities created after the changes are saved for employees with the corresponding time card frequency.

## Managing Employees’ Time Card Frequencies { .section}

If your company uses different payroll periods for different employees, you can specify a time card frequency for each employee in the **Time Card Frequency** box of the [Employees](EP_20_30_00.md) \(EP203000\) form. This frequency applies to time activities and time cards created for the employee.

When you create a time card for an employee, their time card frequency is displayed in the **Frequency** box of the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. The list of available periods in the **Period** box corresponds to the frequency. The number of columns showing days on the **Summary** tab and the title of the first day column depends on:

-   The employee’s time card frequency
-   The start day settings specified on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form for the frequency

**Tip:** The day columns follow the natural order of days in the period, from left to right.

When you create a time activity on the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form, the frequency specified in the employee’s settings is inserted by default in the **Frequency** box; you can change it for this activity.

If you create a time activity by using an existing time card on the [Employee Time Cards](EP_30_50_00.md) form, the default frequency of the time activity is the time card frequency, which may differ from the employee’s time card frequency.

You can add an existing time activity to a time card only if the frequency of the time activity matches the frequency of the time card.

## Setting Up Custom Weeks { .section}

If you prefer to use custom weeks, you can select the **Custom Week Configuration** check box on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form and generate custom weeks on the **Custom Week** tab. In this case, the system creates time cards only for the custom weeks.

When you create a time card on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\), the system inserts *Weekly* in the **Frequency** box. The periods available in the **Period** box correspond to the custom weeks.

## Approving Summaries of Time Activities with Different Frequencies { .section}

When you narrow the list of time activity summaries on the [Approve Time Activity Summaries](EP_50_70_30.md) \(EP507030\) form by date range, a time activity summary appears if at least one day in its date range matches the specified date range on the form, regardless of its frequency. For time cards with a frequency other than weekly, the days’ columns are empty, and only the total time spent is calculated.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

