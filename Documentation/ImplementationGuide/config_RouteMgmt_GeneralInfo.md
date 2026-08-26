# Route Management: General Information {#_c3a41bc0-9a48-47d7-93c3-9b0c182b7423 .concept}

If your company performs scheduled routes and provides services, you can set up the route management functionality.

## Learning Objectives {#section_ex2_jq1_ldc .section}

In this chapter, you will learn how to do the following:

-   Enable the *Route Management* feature
-   Review the minimum required configuration for the route management functionality
-   Review a service order type with the *Route* behavior
-   Create a driver skill and assign it to staff members
-   Create a vehicle type
-   Create vehicles
-   Create an item class for route services and then create a route service
-   Create routes

## Applicable Scenarios {#section_zxg_gq1_ldc .section}

You use the route management functionality in the following cases:

-   Your company provides on-site services or deliveries that require optimized route planning to minimize travel time and improve operational efficiency.
-   Your company provides recurring services, such as subscription deliveries or regular maintenance visits, and needs automated route generation based on its service contracts and schedules.
-   Your company needs to track the vehicles and drivers assigned to specific routes to ensure timely service delivery and optimal resource utilization.
-   You need to respond to urgent appointments or deliveries, and the system must dynamically adjust the route to meet customer expectations.

## Setting Up Route Management in Acumatica ERP {#section_rpn_pq1_ldc .section}

To use the route management functionality in Acumatica ERP, you need to create the following records in the system:

-   A dedicated service order type: You create a service order type with the *Route* behavior to manage service documents associated with route-based services.
-   Drivers: You configure staff members as drivers in the system so that you can track these drivers, assign them to routes, and authorize them to perform route-related services. With this configuration completed, the most suitable person can be quickly selected to deliver your services.
-   Vehicles: You enter and store details about each vehicle your company uses for routes. Vehicles can be selected from this pool when routes are planned and executed.
-   Routes and route executions: You can create and process routes and route executions efficiently, optimizing them to reduce fuel consumption and travel time. With the Azure Maps service integrated in Acumatica ERP, the system calculates route distances and times. If you rearrange the order of the appointments in a route, Azure Maps will recalculate and plot the updated route. By using Azure Maps, you can track executed routes and appointments for specific days and staff members.
-   Route service contracts: To simplify the management of recurring customer appointments that require route planning, you can create service contracts and generate schedules for regular services. The system will automatically generate routes and assign appointments based on these schedules. This eliminates errors and reduces the time that users would spend entering the necessary routes into the system.

**Parent topic:**[Configuring Route Management](../ImplementationGuide/config_RouteMgmt_Mapref.md)

