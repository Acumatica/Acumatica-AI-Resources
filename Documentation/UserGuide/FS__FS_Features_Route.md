# Overview of Route Management Processes {#_c200569a-897b-4c2d-b73a-496142a6c38a .concept}

You use the route management functionality to plan and manage your organization's routes and the route services \(that is, the services provided when each route is executed\), along with processing the contracts related to the routes. In the system, you create the general routes, and for each particular execution of the route, you create route executions. Each stop in the route execution is a route appointment—that is, an appointment with a service order type of the *Route* behavior. Each route execution is based on a particular route and inherits some of its settings.

You can track your executed routes by using the Azure Maps service and get the statistics on each execution of a route, such as the distance and the time needed to execute the route. With the integration between the route management and the service management of Acumatica ERP, you can create appointments related to route executions and generate invoices for services that have been provided.

You use the route management forms to perform a variety of procedures related to processing routes and related documents and entities. These procedures are briefly described in the following sections of this topic.

## Route Management Documents { .section}

Each route execution created through the route management functionality includes appointments linked to service orders. Once the appointments and route execution are completed or closed, you can generate the appropriate billing documents.

In addition to billing documents, you can generate inventory documents, such as issues and receipts \(the *Inventory Management* feature should be additionally enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form\).

These documents are further processed, and the corresponding financial transactions are posted to the General Ledger.

## Managing Staff Members \(Drivers\) { .section}

The integration of route management with service management allows you to define drivers in the system, enabling you to track and assign them to routes. A driver is a staff member who can perform services associated with routes. With this integration, you can quickly and easily select the most suitable available person to deliver your services.

## Managing Vehicles { .section}

You can enter and store detailed information about each company vehicle. Since route management is integrated with equipment management, each vehicle can also be tracked within the equipment management system. Using route management, you can efficiently select a vehicle from the available options to execute a specific route.

## Managing and Processing Routes { .section}

Acumatica ERP offers tools to quickly create and process routes while optimizing them to reduce fuel consumption and travel time. With the Azure Maps service integrated into route management, the system calculates the distances and travel times for executed routes. If you rearrange the order of appointments within a route, Azure Maps automatically replots and recalculates the route. Additionally, you can use the Azure Maps service to easily track executed routes, their appointments, and the staff members assigned to them for specific days.

## Processing Route Service Contracts { .section}

Route service contracts simplify the processing of recurring customer appointments that require route planning. You can define schedules for performing services, and the system will use these schedules to create routes with appointments automatically assigned to them. This functionality saves time and reduces errors by streamlining the process of entering required routes into the system.

**Parent topic:**[Route Management](../UserGuide/FS_00_00_03.md)

