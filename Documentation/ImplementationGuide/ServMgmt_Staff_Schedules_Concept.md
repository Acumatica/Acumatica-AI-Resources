# Staff Schedules: Overview of the Setup Process {#_dde74186-6894-475a-9dfd-dc76b4f887d4 .concept}

You create a staff schedule for each employee you have defined as a staff member.

To do this, first you need to configure a schedule rule defining either available hours or unavailable hours. Once the schedule rule has been created, you generate a schedule that is based on this rule.

**Tip:** You can create rules for staff members of the *Employee* type only. For details on staff member types, see [Staff Members: General Information](ServMgmt_Staff_Members_GeneralInfo.md).

## Creating a Staff Schedule Rule {#_52d6d59c-7f64-4c98-bad3-b30206db5aad .section}

On the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form, you select one of the following option buttons under **Scheduling Settings** to specify the type of the rule:

-   **Availability**: The schedule defines the times when a staff member is available to perform services.
-   **Unavailability**: The schedule defines the times when a staff member is not available to perform services \(for instance, the times the employee is on vacation or sick leave\).

Then you specify the recurrence settings, which defines how often the schedule will be applied. On the **Recurrence** tab, you select one of the following option buttons under **Frequency Settings**:

-   **Daily**: The schedule applies daily or every *x* days.
-   **Weekly**: The schedule applies weekly or every *x* weeks.
-   **Monthly**: The schedule applies monthly or every *x* months.
-   **Yearly**: The schedule applies yearly or every *x* years.

After you have selected an option button, you specify the settings below the group of option buttons. These settings depend on the selected frequency type as follows:

-   If you selected the **Daily** option button, in the **Daily Settings** section, you have to specify the time interval in days when the schedule applies. For example, if you specify every 1 day, the schedule applies every day, and if you specify every 2 days, the schedule applies every other day.
-   If you selected the **Weekly** option button, in the **Weekly Settings** section, you have to specify the time interval in weeks and select the check boxes for the day or days of the week when the schedule applies. For example, if you specify every 2 weeks and select Monday, the schedule applies Monday of every other week.
-   If you selected the **Monthly** option button, in the **Monthly Settings** section, you have to specify the time interval in months and select the check boxes for the day or days of the month when the schedule applies. You can specify the day in either of the following ways: by the number of a specific day of the month, or by the week of the month and the day of the week. For example, you can specify that the schedule repeats every 2 months on the 15th of the month, or on the 3rd Monday of the month. You can specify up to four days for the **Monthly** frequency type.
-   If you selected the **Yearly** frequency type, in the **Yearly Settings** section, you have to specify the time interval in years, the month or months of the year, and the day of the month when the schedule applies. You can specify the day of the month in either of the following ways: by the number of the day of the month \(for example, every 4 years on the 20th day of February and March\), or by the week of the month and the day of the week \(for example, every year on the 2nd Monday of February and March\).

## Generating a Schedule { .section}

Once a schedule rule is created, you have to generate the schedule for a certain period of time for a staff member. This gives you the ability to select the staff member for performing a service by using accurate times when the staff member is available to perform services. You can generate schedules manually or create an automation schedule to generate these scheduling rules. For details, see [Automated Processing: General Information](../UserGuide/SA_Scheduling_Automated_Processing_GeneralInfo.md).

To generate schedules manually, you use the [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) \(FS500400\) form. You can navigate directly to this form, or you can navigate to this form from the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form by clicking the **Generate Staff Schedules** button on the form toolbar. \(This button becomes available after the staff schedule rule has been saved.\) On the [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) form, you can filter the list by staff member, branch, and branch location, and you have to select the date up to which you want to generate schedules in the system. You can then generate all listed staff schedule rules or only those you select.

Once you have generated staff schedules, you can assign staff members to appointments or service orders according to their schedules by using the calendar boards.

## Viewing the Staff Schedule Rules and the Generated Schedules { .section}

You can use the following forms to view schedule rules:

-   If you want to view all schedules created in the system or all schedules for a particular staff member, you use the Staff Schedule Rules \(FS4010PL\) list of records. You can view the schedule rules for a particular staff member by selecting the staff member in the **Employee Name** box. For each schedule rule, you can view \(and change if needed\) its settings on the [Staff Schedule Rules](../UserGuide/FS_40_10_PL.md) \(FS401000\) form by clicking the schedule number in the **Staff Schedule Nbr.** column.
-   If you want to see the list of schedule rules that have not yet been generated, you use the [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) \(FS500400\) form. For each schedule rule, you can view \(and change if needed\) its settings on the [Staff Schedule Rules](../UserGuide/FS_40_10_PL.md) \(FS401000\) form by clicking the schedule number in the **Staff Schedule Nbr.** column.
-   If you want to view and change the generated schedules for a particular staff member for the current business week, you use the [Staff Working Schedule Board](../UserGuide/FS_30_05_00.md) \(FS300500\) form. You can also change the calendar settings to view the staff member schedule for the selected date, the week of the selected date, or the month of the selected date. Also, you can filter staff member schedule rules by branch and branch location.

**Parent topic:**[Staff Schedules](../ImplementationGuide/ServMgmt_Staff_Schedules_Mapref.md)

