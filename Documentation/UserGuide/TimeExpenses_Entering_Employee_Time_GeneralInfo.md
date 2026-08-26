# Employee Time Entry: General Information {#_36ce78ec-3e8c-45e2-a023-287cff8d69c7 .concept}

Acumatica ERP provides time entry capabilities so that your company can track the time employees spend on various activities.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enter the time that you \(or another employee\) have spend on working activities
-   Approve time activities and time cards
-   Create and process time cards
-   Use equipment time cards
-   Enter and process time activities for crew members

## Applicable Scenarios { .section}

You report employee time if you are an employee who needs to enter time spent on a working activity.

You track employee time if you are a manager who needs to monitor the time employees have spent on specific activities to calculate the cost of work on projects or customer service.

You process time activities and time cards if you are an accountant who needs to track employee time for payroll processing and compensation purposes.

## Entry of Employee Time { .section}

In Acumatica ERP, you can enter and track employee time spent on working activities by using the following functionality:

-   Time activities: A time activity represents the amount of time an employee has spent on a specific task or activity. Employees enter their time for these activities on such forms as the [Activity](CR_30_60_10.md) \(CR306010\) or [Email Activity](CR_30_60_15.md) \(CR306015\) form. These activities can be marked as billable and associated with projects or tasks, for accurate cost tracking and billing management. For details, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md).
-   Time cards: A time card represents a report of the time an employee spent on different activities. A time card can be created for a weekly, biweekly, semi-monthly, or monthly period. You can also create time cards for custom weeks. Employees can enter, edit, and submit time cards on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. Time cards assist with payroll calculations, billing, and project cost estimation. For details, see [Employee Time Entry: Time Cards](TimeExpenses_Entering_Employee_Time_Time_Cards.md) and [Employee Time Entry: Time Card Frequencies](TimeExpenses_Entering_Employee_Time_Time_Card_Frequency.md).

    Additionally, time cards can be used alongside time activities: When an employee reports time through time activities, the data is automatically synchronized with their time card.

-   Crew time entries: A crew time entry represents a time activity recorded for multiple employees \(that is, a crew\) at once. Instead of entering time individually for each employee, you can use a crew time entry on the [Weekly Crew Time Entry](EP_30_71_00.md) \(EP307100\) form to create identical time records in batches. This simplifies time tracking for teams working on shared tasks or projects and ensures consistency in reporting. For details, see [Employee Time Entry: Crew Time](Crew_Time_Reporting_GeneralInfo.md).

## Employee Time Zone { .section}

When an employee creates a time activity and enters the date and time, the system stores this information in UTC along with the employee's current time zone. On most forms where activities can be created, UI elements display the date and time in both of these:

-   The time zone the system determines as your current one, whether you or another employee created the activity.
-   The original time zone—that is, the time zone in which the creator reported the time. The system determined this time zone at the moment of creation.

If you’re viewing the activity in the same time zone in which it was created, the system displays identical values for the date and time in the relevant UI elements.

The time activity can be opened in time zones other than the one in which it was created. This situation may occur in the following cases:

-   You’re the employee who created the activity. Now you’re on a business trip or you’ve relocated, so your current time zone is different than the one in which you created the activity.
-   You’re viewing another employee’s time activity for review, approval, or release—and this employee created it in a different time zone.

In these cases, the system displays the date and time in your current time zone. However, the original date, time, and time zone remain visible in the time activity for reference.

For details, see [Employee Time Entry: Time Zones in Time Activities](TimeExpenses_Entering_Employee_Time_Time_Zone.md).

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

