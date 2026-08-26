# Time Tracking Configuration: Tracking Time with Time Activities {#_99b67159-a39c-445f-8d90-07e28ebf516b .concept}

The following section explains how to configure the system to track time spent on projects by using time activities, which an employee enters on the [Activity](../UserGuide/CR_30_60_10.md) \(CR306010\) form to record the provided services.

## Combining of Time Cards and Time Activities {#section_qkg_g12_fmb .section}

In Acumatica ERP, an employee can report working hours by using time cards in combination with time activities. If tracking of time with time activities is configured in the system, the **Track Time and Costs** check box becomes available for a time activity on the [Activity](../UserGuide/CR_30_60_10.md) \(CR306010\) form; in each activity, an employee provides the description of the performed services and reports the working hours spent on these services. The reported data from the time activity is then copied to the employee time card that relates to the week that includes the date for which the time activity has been entered. On the [Employee Time Cards](../UserGuide/EP_30_50_00.md) \(EP305000\) form, the employee can view the details of all time activities associated with a particular time card.

A time activity can be released individually or within the time card to which it is added. When the time card is released, all the associated time activities are released automatically. For time activities associated with a project, a project transaction is created during time card release. During the project billing procedure, based on the time and material step of the billing rule configured for the account group associated with this project transaction, the applicable customer is billed for the reported employee time spent on the project.

## Configuration of Time Tracking with Time Activities { .section}

To configure the tracking of time with time activities, you perform the following general steps:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS101000\) form, you enable the *Time Management* feature.
2.  On the [Earning Types](../UserGuide/EP_10_20_00.md) \(EP102000\) form, you select the **Billable** check box for the earning types that will be specified in the time activities that must be billed within a project. The earning type determines how the system calculates the cost of employee labor.
3.  On the [Activity Types](../UserGuide/CR_10_20_00.md) \(CR102000\) form, you select the **Track Time and Costs** check box for the activity types for which you want to track time. In the newly entered time activities of the type, the **Track Time and Costs** check box will be selected by default.

After you perform these configuration steps, employees will be able to log project work and specify the information required for billing \(that is, the earning type for the time activity, and the total billable time spent on a particular project\).

**Parent topic:**[Employee Time Tracking](../ImplementationGuide/config_Project_Time_Tracking_Mapref.md)

