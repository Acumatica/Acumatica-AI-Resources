# Routes: Sequence Definition {#_a28816ec-aa7e-4430-95db-23ef5bc32e0f .concept}

The appointments for different contracts with the same route are generated automatically in one route execution for a specific date. Thus, you may need to define the order of appointments for each route execution.

In this topic, you will read about how to define a route sequence in the system and how to reset the route order numbers of a sequence.

## Route Sequence Definition {#_1ba16245-71ba-4a46-9793-51ac5b4237b8 .section}

When you create a schedule on the [Route Service Contract Schedules](../Shared/../UserGuide/FS_30_56_00.md) \(FS305600\) form, the system assigns the order number to the schedule in the **Order** box of the **Routes** tab. You can change the order number as follows:

-   You can change the number that defines the order of appointments of a particular route service contract in the **Order** box on the **Routes** tab of the [Route Service Contract Schedules](../Shared/../UserGuide/FS_30_56_00.md) form.
-   You can define the sequence in which appointments are generated in a route execution on the [Route Sequences](../Shared/../UserGuide/FS_30_38_00.md) \(FS303800\) form, which displays the appointments and includes the **Order** column.

The number that defines the order of the appointment \(that is, the **Order** value\) can contain up to five digits. To define the sequence, the system uses numbers that go up in increments of 10, such as 00010, 00020, 00030, and so on. You can change the order values to change the order of the appointments. You can use any number, such as 00008 or 00012. After you change the order number, the system changes the order of the appointments as follows: The appointment for a schedule with a lower number takes place earlier than an appointment for a schedule with a higher number.

Based on the sequence settings you specify, a route execution will be built and the route distances and travel time will be calculated. For a particular route execution, you can change the order of appointments manually.

## Order Number Reset { .section}

You can reset the order numbers to the numbering defined by default by the system \(that is, 00010, 00020, 00030, and so on\) by clicking **Reset Sequence** on the form toolbar. The order of appointments will not be changed \(only the numbering sequence\).

Consider the following example. Suppose that the order 00010, 00020, and 00030 is set by default as order of the appointments for the schedules of Customer 1, Customer 2, and Customer 3, respectively. You then decide to change the order in which the customers are visited during a route execution; you want Customer 3 to be visited first, and then Customer 1 and Customer 2. To do this, you change the order number of the schedule of Customer 3 to a lower number, such as 00001. Now you have the following order:

-   00001 for the schedules of Customer 3
-   00010 for the schedules of Customer 1
-   00020 for the schedules of Customer 2

Suppose that you then learn that the new order will not work for one of the customers. To revert to the system-assigned order, click **Reset Sequence**. The system updates the order numbers as follows:

-   00010 for the schedules of Customer 3
-   00020 for the schedules of Customer 1
-   00030 for the schedules of Customer 2

**Parent topic:**[Managing Routes](../UserGuide/RouteMgmt_Managing_Routes_Mapref.md)

