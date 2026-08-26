# Route Executions: Entry of Route Executions {#_a74d4218-8981-4b6e-88d0-91ab6a1818d5 .concept}

To process the routes that are executed by your company, you have to create route execution documents in the system for each specific day when the route services are provided. You can create route executions in one of the following ways:

-   If your company regularly performs route services for a customer on a contract basis, you enter a route service contract and set it up so that routes can be generated.
-   If your company performs services for the customer rarely or you have no contract that defines the details of the services provided, you can create route execution documents manually.

In this topic, you will learn how to enter a route execution manually.

## Entering a Route Execution Manually { .section}

You enter a route execution on the [Route Document Details](FS_30_40_00.md) \(FS304000\) form. For the route execution, you specify the following information:

-   The route to which the route execution relates.
-   The date of the route execution. You can select a date that is one of the days of the week specified for the associated route.
-   The driver or drivers who will perform the services of the route execution.
-   The vehicle or vehicles to be used for the route execution.
-   The values of the attributes defined for executions of the route. You can specify or modify the values of any attributes that are listed on the **Attributes** tab; if the **Required** check box is selected for an attribute, you must specify a value for it.

After you have specified and saved this information, you can create and add appointments for the route execution by clicking **Create New Appointment** on the table toolbar and filling in information about each appointment on the [Appointments](FS_30_02_00.md) \(FS300200\) form.

**Tip:** You can assign to appointments on the route only services that are indicated as route services in the system \(that is, they have the **Route Service** check box selected on the [Services](FS_40_08_00.md) \(FS400800\) form\). These services have to be assigned to the route service class \(that, is the **Route Service Class** is selected on the [Item Classes](IN_20_10_00.md) \(IN201000\) form\).

By default, the system assigns a new route execution document the *Open* status. Reference numbers for new route execution documents are generated according to the numbering sequence specified in the **Route Numbering Sequence** box on the **Routes** tab of the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form.

## Viewing Route Statistics { .section}

The route execution statistics contain information about the number of appointments and services related to the executed route, the duration of activities related to it, and the total distance traveled. In the Summary area of the [Route Document Details](FS_30_40_00.md) \(FS304000\) form \(**Route Statistics** section\), you can view the route statistics for the selected route execution.

The statistics can be calculated automatically by the system or the process of calculation can be invoked manually. If the **Calculate Route Statistics Automatically** check box is selected on the **Routes** tab of the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form, the system will automatically update the **Route Statistics** section if you make changes in the route execution.

If the **Calculate Route Statistics Automatically** check box is cleared, you have to click the **Calculate Route Statistics** button on the form toolbar of the [Route Document Details](FS_30_40_00.md) form to recalculate statistics in the **Route Statistics** section.

**Parent topic:**[Route Executions](../UserGuide/RouteMgmt_Managing_Route_Executions_Mapref.md)

