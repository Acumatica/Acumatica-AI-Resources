# Route Management: Implementation Checklist {#_7de2ff31-18c0-43ce-a81d-59f94c34a325 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the management of routes and the processing of route service contracts in the system.

## Prerequisites { .section}

Before you start configuring route management, you should make sure that the needed configuration tasks have been performed, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings are specified, as described in [Company Without Branches](config_Basic_Company_Mapref.md), [Company with Branches that Do Not Require Balancing](config_Company_with_Branches_No_Balancing_Mapref.md), or [Company with Branches that Require Balancing](config_Company_with_Branches_with_Balacing_Mapref.md) \(depending on your company structure\).|
|Multiple forms|To offer the provision of inventory items as part of providing field services, make sure that the sales order management configuration has been implemented, as described in [Configuration of Order Management: Implementation Checklist](config_InvMgmt_Basic_Implem_Checklist.md) .|
|Multiple forms|Make sure that the service management configuration has been implemented, as described in [Basic Service Management Configuration](config_ServMgmt_with_Inventory_Mapref.md).|
|[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form|The numbering sequence for route executions has been created.|
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form|The employees that are drivers have been defined in the system.|

## Required Steps { .section}

To make it possible for users to execute routes and process route service contracts, you should navigate to the forms listed in the following table and perform the configuration actions that are described.

|Form|Action|
|----|------|
|[Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\)|Specify the **Map API Key**.|
|[Route Management Preferences](../UserGuide/FS_10_04_00.md) \(FS100400\) form|Specify the route numbering sequence and the billing settings for contracts with standardized billing.|
|[Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form|Create the service order type for route appointments, as described in [Service Order Types: To Create a Service Order Type for Route Appointments](config_Route_Service_Order_Types_Implem_Activity.md).|
|[Skills](../UserGuide/FS_20_06_00.md) \(FS206000\) form|Create the driver skills.|
|[Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form|Assign a driver skill to all the employees that are drivers.|
|[Vehicle Types](../UserGuide/FS_20_42_00.md) \(FS204200\) form|Create all the types of vehicles of the company.|
|[Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form|Create vehicle records.|
|[Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form|Modify the item classes to contain the default settings of the company's route services. Create at least one route service.|

## Additional Settings { .section}

For faster data entry, you can specify a route service order type that will be selected on the data entry forms in the **Default Service Order Type** box of the [Route Management Preferences](../UserGuide/FS_10_04_00.md) \(FS100400\) form.

You can also perform the following optional steps on the same form:

-   To set up the system to calculate route execution statistics using the Azure Maps service and display them on the [Route Document Details](../UserGuide/FS_30_40_00.md) \(FS304000\) form, select the **Calculate Route Statistics Automatically** check box.

    If this check box is cleared, to calculate route execution statistics, users will have to click the **Calculate Route Statistics** button on the [Route Document Details](../UserGuide/FS_30_40_00.md) form.

-   To enable the tracking of GPS locations at start and end point of the executed route, select the **Track Start and Complete Location of Route** check box. The GPS locations will be displayed on the **Location** tab of the [Route Document Details](../UserGuide/FS_30_40_00.md) form.
-   To set an appointment manually added to a route on the [Routes](../UserGuide/FS_20_37_00.md) \(FS203700\) form to appear first in the route, select the **Set Appointments Created Manually as First in Route** check box.

    If this check box is cleared, the added appointment will be placed last in the route.

-   To make it possible to specify months in route contract schedules when they are applicable, select the **Enable Seasons in Schedule Contracts** check box. The system will make the **Season Settings** section available on the **Recurrence** tab of the [Service Contract Schedules](../UserGuide/FS_30_51_00.md) \(FS305100\) and [Route Service Contract Schedules](../UserGuide/FS_30_56_00.md) \(FS305600\) forms.

**Parent topic:**[Configuring Route Management](../ImplementationGuide/config_RouteMgmt_Mapref.md)

