# Support of Multiple Work Calendars {#_e82218ed-38dc-492c-9b42-f1a2f4f2032c .concept}

In Acumatica ERP, you can define and maintain multiple work calendars in the system. Work calendars are used for a variety of purposes, including the following:

-   Labor calculations performed for contracts and projects
-   Effective scheduling of events

## Work Calendar Settings { .section}

Work calendars can be defined on the [Work Calendar](CS_20_90_00.md) \(CS209000\) form. For each employee calendar, you can define the week's work days and specify working hours for each day. On the **Exceptions** tab, you can define holidays, which preempt work days or shift them to a day when the employee generally does not work, and specify any change in working hours for a particular date.

## Employee Calendars { .section}

On the [Employees](EP_20_30_00.md) \(EP203000\) form, you can associate calendars with particular employees, such as salespeople or members of customer service and support workgroups. If a calendar is to be used by others, the employee should mark his or her calendar as public by using the [User Profile](SM_20_30_10.md) \(SM203010\) form.

An employee's calendar can also be used for labor calculation if the employee works in customer support or on projects. Work time and overtime are calculated automatically for time cards when the employee reports time spent on a case or a project task, if billable tasks and activities are used for the service contract or project.

To organize work more efficiently, employees who work together should share information about their free and busy times. They can do this in the following ways:

-   In Acumatica ERP, users can export their work calendars, which show their free and busy time, and email the resulting file to involved persons.
-   Users can export their calendar data from MS Outlook and import it to Acumatica ERP \(in .cvs format\). MS Outlook continues to periodically update the .cvs file when changes are made in Outlook. Currently, changes to the work calendar in Acumatica ERP do not update the calendar file exported to MS Outlook.

**Parent topic:**[Managing Employees](../UserGuide/OS__MNG_Employees.md)

