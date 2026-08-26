# Routes: Entry of a Route {#_248e8365-555e-4266-976a-2f6b0e511a9d .concept}

In this topic, you will read about entering a route into the system and specifying appropriate settings for the route.

## Entering a Route { .section}

You enter a route on the [Routes](FS_20_37_00.md) \(FS203700\) form. For the route, you specify an identifier and a description, along with the following information:

-   The starting and ending locations of the route
-   The schedule when the route can be executed
-   The drivers who can execute this route and their priority
-   Optionally, the attributes of the route

After you have created a route in the system, when you create route executions or schedules for the route service contracts and select the route, the system fills in appropriate settings. You can edit routes at any time; the edits will not affect route executions that have already been created based on the route.

## Specifying the Start and End Points of the Route { .section}

The start location of the route is a branch location form where a driver departs to execute a route. You specify the branch and its location in the **Branch** and **Branch Location** boxes of the **Start Location** section on the [Routes](FS_20_37_00.md) \(FS203700\) form.

The ending location of the route is a branch location to where a driver arrives when he or she finishes to execute a route. You specify the branch and its location in the **Branch** and **Branch Location** boxes of the **End Location** section on the [Routes](FS_20_37_00.md) form.

**Tip:** Make sure that the addresses have been specified correctly for the branch locations. Otherwise, the system will not be able to calculate the route statistics and show the route on a map.

For each route execution created in the system, the start and end locations are defined by the route specified for the route execution. You cannot change the locations for a particular route.

## Specifying a Schedule { .section}

For the route, you specify the possible schedule when the executions of this route can be performed on the **Execution Days** tab of the [Routes](FS_20_37_00.md) \(FS203700\) form. You define a schedule as follows:

1.  You specify the days of week when this route can be executed by selecting the appropriate check boxes.
2.  For each selected day of week, you specify the time when executions of the route can be started in the **Start Time** column.
3.  You specify the number of executions of this route that can be created per day in the **Nbr. Trip\(s\) per Day** column.

**Tip:** Route executions do not necessarily have to be generated or created for all the days specified for the route. But the route executions can be created for *only*the days specified for the route associated with the route execution.

## Adding Drivers to a Route { .section}

In the system, you create the general routes, and for each particular execution of the route, you create route executions.

For each route that you define in the system, you should include the drivers that can possibly execute this route. These drivers will be available for selection when you assign a driver to a route execution on a particular day.

When you define each route in the system on the [Routes](../Shared/../UserGuide/FS_20_37_00.md) \(FS203700\) form, you add possible drivers to the particular route on the **Route Employees**. For each driver you want to add, you click **Add Row** on the table toolbar and select a driver in the **Employee ID** column.

In the **Priority Preference** column, you can also specify the priority with which each assigned driver should be selected to perform services for the route. For example, if one driver has performed the services of this route and knows it well, he or she might have higher priority than a driver who is new and is not familiar with the route or who has served a different geographical area.

The lower the digit you specify in this column, the higher the priority for a driver to be selected for a route service. When you later select drivers for a particular execution of this route, the drivers are listed according to the priority specified for them for this route. If the drivers have the same priority, they are listed according their reference number in the system.

**Tip:** If you do not assign any drivers to a route, you will not be able to select a driver when you create a route execution based on this route.

## Specifying Attributes for Routes { .section}

An attribute is a site-defined property \(for instance, area or problem type\) that gives users the ability to specify information for objects in the system beyond the preconfigured settings on the data entry forms. You can specify attributes for the classification of route executions by defining them for a particular route on the **Attributes** tab of the [Routes](FS_20_37_00.md) \(FS203700\) form.

On this tab, you can select attributes only if they have already been defined in the system. If you need an attribute that has not been defined in the system, you can use the [Attributes](CS_20_50_00.md) \(CS205000\) form to create the attribute. Then you will be able to select the new attribute for any route.

The active attributes you specify on this tab will be listed for executions of this route on the **Attributes** tab of the [Route Document Details](FS_30_40_00.md) \(FS304000\) form.

On the [Routes](FS_20_37_00.md) \(FS203700\) form, you can specify whether each attribute of the route is required. When creating a route execution, the user must specify values for all the required attributes. Also, you can specify default values for any attributes of the route; users can overwrite these values for a particular route execution.

You can deactivate an obsolete attribute for executions of a particular route by clearing the **Active** check box. If you do, the deactivated attribute will no longer be displayed for the executions of the route, but all attribute values that have already been specified for existing route executions will still be stored in the database. If you reactivate the attribute, its values \(where specified\) will become visible in the system again.

However, if it is not necessary to preserve the data related to an obsolete attribute, you can deactivate the attribute and then delete it by using the **Delete Row** button on the table toolbar. In this case, the attribute will be permanently deleted from the route and all attribute values will bedeleted from the database.

**Parent topic:**[Managing Routes](../UserGuide/RouteMgmt_Managing_Routes_Mapref.md)

