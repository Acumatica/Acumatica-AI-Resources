# Route Service Contracts: Contract Schedules {#_fdd30acf-50ba-466f-bd63-6018ae7351d4 .concept}

With Acumatica ERP, you can manage the schedules of the route service contracts. A route service contract schedule defines the route service \(or services\), inventory items, and other settings that the generated appointments of route executions will have, as well as the recurrence of the generation.

In this topic, you will read about creating a schedule and specifying its settings.

## Creating a Route Service Contract Schedule { .section}

You create a new service contract schedule by using the [Route Service Contract Schedules](FS_30_56_00.md) \(FS305600\) form, which opens when you click **Add Schedule** on the table toolbar on the **Schedules** tab of the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form. \(You can also open this form to view or edit an existing schedule by clicking a link in the **Schedule ID** column on this tab.\)

In the **Service Order Type** box of the [Route Service Contract Schedules](FS_30_56_00.md) form, you select a service order type that has the *Route* behavior assigned on the [Service Order Types](FS_20_23_00.md) \(FS202300\) form. This type will be used for the service orders that will be generated according to the schedule. You then specify the other settings of the schedule as follows:

-   The services that are delivered, which you add on the **Details** tab
-   Any stock items involved in the route services, which you add on the **Details** tab
-   The schedule recurrence settings, which are specified on the **Recurrence** tab
-   The route related to the contract, which is selected on the **Routes** tab
-   Optionally, the values of the attributes related to the service orders or appointments generated from the schedule, on the **Attributes** tab

For a route service contract, you can create one schedule or multiple schedules. The system generates the reference numbers for schedules based on the reference number of the related route service contract and the sequence number of the schedule created for this route service contract \(*1* for the first schedule, *2* for the second, and so on\). For example, if the route service contract has the reference number *000001* in the system and you create the first schedule for this route service contract, the reference number of the schedule will be *000001-1*. You can view the list of schedules that have been created for a particular route service contract on the **Schedules** tab of the [Route Service Contract Schedules](FS_30_56_00.md) form.

## Defining Schedule Settings {#_52d6d59c-7f64-4c98-bad3-b30206db5aad .section}

On the [Route Service Contract Schedules](FS_30_56_00.md) \(FS305600\) form, for each schedule, you have to specify the recurrence frequency type and the schedule settings. Frequency type defines how often the schedule appointments can be generated for the schedule.

**Note:** The route can be executed only on the days specified in the route related to the contract. For details, see [Routes: Entry of a Route](FS__CON_Route_Definition_Entry.md).

On the **Recurrence** tab, you can select one of the following option buttons:

-   **Daily**: The schedule applies daily or every *x* days.
-   **Weekly**: The schedule applies weekly or every *x* weeks.
-   **Monthly**: The schedule applies monthly or every *x* months.
-   **Yearly**: The schedule applies yearly or every *x* years.

After you select the frequency type, you have to specify settings for the selected type as follows:

-   If you selected the **Daily** frequency type, you have to specify the time interval in days when the schedule applies. For example, if you specify every 1 day, the schedule applies every day, and if you specify every 2 days,the schedule applies every other day.
-   If you selected the **Weekly** frequency type, you have to specify the time interval in weeks and the day or days of the week when the schedule applies. For example, if you specify every 2 weeks and select Monday, the schedule applies Monday of every other week.
-   If you selected the **Monthly** frequency type, you have to specify the time interval in months and the day or days of the month when the schedule applies. There are two options for specifying the day: by the number of the day of the month, or by the week of the month and the day of the week. For example, you can specify that the schedule repeats every 2 months on the 2nd day of the month, or on the 2nd Monday of the month. You can specify up to four days for the **Monthly** frequency type by selecting and appropriate check box and specifying days in the **Second Recurrence Monthly Settings**, **Third Recurrence Monthly Settings**, and **Fourth Recurrence Monthly Settings** sections.
-   If you selected the **Yearly** frequency type, you have to specify the time interval in years, the month or months of the year, and the day of the month when the schedule applies. There are two options for specifying the day of the month: by the number of the day of the month \(for example, every 2 years on the 2nd day of February and March\), or by the week of the month and the day of the week \(for example, every year on the 2nd Monday of February and March\).

If the **Enable Seasons in Schedule Contracts** check box is selected on the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form, you can also specify the months when the schedule is applicable for the **Daily**, **Weekly**, and **Monthly** frequency types in the **Season Settings** section of the [Route Service Contract Schedules](FS_30_56_00.md) form.

**Parent topic:**[Managing Route Service Contracts](../UserGuide/RouteMgmt_Service_Contracts_Mapref.md)

