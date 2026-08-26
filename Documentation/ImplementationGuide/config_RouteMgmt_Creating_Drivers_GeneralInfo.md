# Drivers: General Information {#_addba304-2ece-45f3-956b-3524c6942213 .concept}

A driver is an employee of your company who has a driving skill assigned and who is responsible for delivering the route services that your company offers to customers.

In this topic, you will read about adding drivers to the system and assigning drivers to routes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Add drivers to the system
-   Assign a skill to a staff member

## Applicable Scenarios { .section}

You add drivers to the system when you need to assign employees with driving skills to route services within your company. This is particularly useful when organizing the execution of deliveries or services, ensuring that the right person is assigned to each route.

## Adding Drivers {#section_ug3_h5l_d2c .section}

Before you add drivers to the system, you should add to the system the driving skills that apply to the drivers of your company on the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form. You might add just one driving skill if in your company all drivers require the same skill, or you might have multiple driving skills if you need to assign drivers with somewhat different skills to different routes.

If the staff members who will be designated as drivers have not been added to the system, you should add drivers on the [Staff](../UserGuide/FS_20_55_00.md) \(FS205500\) form as follows:

1.  Add a staff member of the *Employee* type.
2.  Assign a driving skill to the staff member.

You can also define an existing staff member of the *Employee* type as a driver by assigning a driver skill to the staff member on the **Skills** tab of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form. When you assign a driving skill to the staff member, the system selects the **Driver** check box for the staff member on the **General Info** tab of the form.

## Adding Drivers to a Route {#section_nt5_h5l_d2c .section}

In the system, you create the general routes, and for each particular execution of the route, you create route executions.

For each route that you define in the system, you should include the drivers that can possibly execute this route. These drivers will be available for selection when you assign a driver to a route execution on a particular day.

When you define each route in the system on the [Routes](../Shared/../UserGuide/FS_20_37_00.md) \(FS203700\) form, you add possible drivers to the particular route on the **Route Employees**. For each driver you want to add, you click **Add Row** on the table toolbar and select a driver in the **Employee ID** column.

In the **Priority Preference** column, you can also specify the priority with which each assigned driver should be selected to perform services for the route. For example, if one driver has performed the services of this route and knows it well, he or she might have higher priority than a driver who is new and is not familiar with the route or who has served a different geographical area.

The lower the digit you specify in this column, the higher the priority for a driver to be selected for a route service. When you later select drivers for a particular execution of this route, the drivers are listed according to the priority specified for them for this route. If the drivers have the same priority, they are listed according their reference number in the system.

**Tip:** If you do not assign any drivers to a route, you will not be able to select a driver when you create a route execution based on this route.

## Assigning Drivers to Execute a Route {#_09d0d223-82ee-401a-8e1e-ecb49752a4df .section}

For each route execution defined in the system, you should select at least one driver as follows:

-   To assign a driver to a particular execution of a route, you use the [Route Document Details](../UserGuide/FS_30_40_00.md) \(FS304000\) form. On this form, you enter or select the route execution to which you want to assign the driver, and you click the **Driver Selector** button. You then select the driver in the **Driver Selector** dialog box, which opens.

    **Tip:** Alternatively, you can select a driver by clicking the magnifier icon in the **Driver** box and selecting the driver in the **Driver** lookup table.

-   To assign drivers to multiple route executions for a specific date range, you use the [Route Document Worksheets](../UserGuide/FS_40_39_00.md) \(FS403900\) form. On this form, for each route to which you want to assign a driver, you click the line with the needed route and then click **Assign Driver** on the table toolbar. You then select the driver in the **Driver Selector** dialog box, which opens.

    **Tip:** Alternatively, you can select a driver by clicking the magnifier icon in the **Driver** column and selecting the driver in the **Driver** lookup table.


In the **Driver Selector** dialog box, you select the driver to execute the route from the list of available drivers. This list contains the drivers that have been specified for the route on the **Route Employees** tab of the [Routes](../UserGuide/FS_20_37_00.md) \(FS203700\) form and have not yet been assigned to any route on the day of the route execution. To select a particular driver, you click the line with the needed driver in the table, and click **Select Driver**.

If it is necessary for two drivers to perform the route service, you can assign an additional driver as follows:

-   To assign an additional driver to a particular route execution on the [Route Document Details](../UserGuide/FS_30_40_00.md) form, you select the driver in the **Additional Driver** box.
-   To assign additional drivers to multiple route executions that are listed on the [Route Document Worksheets](../UserGuide/FS_40_39_00.md) form, you select the additional driver for each needed route execution in the **Additional Driver** column.

**Parent topic:**[Drivers](../ImplementationGuide/config_RouteMgmt_Drivers_Mapref.md)

