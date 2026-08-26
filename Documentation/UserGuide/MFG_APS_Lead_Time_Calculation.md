# Advanced Planning and Scheduling: Operation Lead Time {#_ae593b8e-1806-4441-b872-014b72f8cd52 .concept}

When the system schedules production orders by using advanced planning and scheduling on the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form, it calculates the duration of each operation \(that is, the operation lead time\). These calculations determine the start and end dates and times of the operation and the whole production order.

**Attention:** In advanced planning and scheduling, the system does not use fixed manufacturing lead times.

In the following sections, you will find details about the calculation of the operation lead time.

## Components of the Operation Lead Time { .section}

The lead time of an operation of a production order is based on the settings in the Operations table of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. The lead time of each operation consists of the following components:

-   Worker throughput: The quantity of item units produced during a certain period of time when machines are not involved in the operation. The system determines that machines are not involved when *Crew Size* is selected in the **Basis for Capacity** box on the [Work Centers](../Shared/../UserGuide/AM_20_70_00.md) \(AM207000\) form for the work center specified in the operation row. In the **Run Time** column of the row, you specify the period of time \(such as *01:00* for one hour\), and in the **Run Units** column, you specify the quantity of item units that workers produce during this period of time \(such as *5*\).
-   Machine throughput: The quantity of item units produced during a certain period of time when machines are used in the operation. The system determines that machines are involved when *Machines* is selected in the **Basis for Capacity** box on the [Work Centers](../Shared/../UserGuide/AM_20_70_00.md) form for the work center specified in the operation row. In the **Machine Time** column of the row, you specify the period of time, and in the **Machine Units** column, you specify the quantity of item units that workers produce during this period of time by using the machine.
-   Setup time: The time it takes to prepare to start the operation, which is specified in the **Setup Time** column of the operation row. For example, to prepare for the operation, workers may need to print drawings or take parts from a stock room. Based on this value, the system adds a fixed labor cost to the cost of the produced item, regardless of the size of the order.
-   Queue time: The time a semi-finished item has to wait in the work center before workers can start processing the item. For example, the previous operation may take less time than the current operation, so the item needs to be stacked before the current operation is started. This time is specified in the **Queue Time** column of the operation row. The system extends the operation's lead time and the production order's lead time by the queue time.
-   Move time: The time for a semi-finished item to be moved from the work center where the current operation is performed to the work center where the next operation will be performed. For example, the work centers may be located in different buildings, and it may take significant time to move the items from one building to the other. This time is specified in the **Move Time** column of the operation row. The system delays the start of the next operation and extends the production order lead time by the move time.
-   Finish time: The time required for the semi-finished item to be prepared for the next operation when the current operation has been finished. For example, the item being produced may need time to dry, cure, or age. This time is specified in the **Finish Time** column of the operation row. The system extends the operation's lead time and the production order lead time by the finish time.

Further in the topic, you can find details about the queue time, move time, and finish time.

## Calculation of the Operation Lead Time { .section}

The system uses the following formula for calculating the lead time of each operation during scheduling production orders the [Rough Cut Planning](AM_50_10_00.md) \(AM501000\) form.

```
Setup Time + (Qty. to Produce * (Run Time / (Run Units * Work Center Capacity))) + Move Time + Queue Time + Finish Time
```

*Work Center Capacity* is calculated as follows: `Crew Size * Efficiency`. The crew size and efficiency are specified on the [Work Centers](AM_20_70_00.md) \(AM207000\) form.

For example, suppose that the operation of sticking labels on jam jars is performed in the *WC10* work center, and the throughput of the operation is 10 jars per hour \(that is, run time is 1 hour, and run units are 10\). Also suppose that *0* is specified for all additional times \(such as queue time or move time\) that make up the lead time of the operation. Further suppose that one employee, Martha, works in the *WC10* work center with 100% efficiency. If a production order for 20 jars has been created in the system, by the system's calculations, Martha will be able to process this number of jars in 2 hours.

Then suppose that Martha has been moved to another operation, and a new employee, Kim, has started to stick labels. Because Kim is not yet familiar with this operation, a planning manager sets the efficiency to 80%. With this setting, by the system's calculations, the sticking operation for the production order with 20 jars is expected to take 2.5 hours.

Further suppose that a packing operation is performed after the sticking operation. Also, the work center where the packing operation takes place is idle, so to reduce the idle time, the planning manager decides to involve a second employee, Ben, in sticking labels in the *WC10* work center. Because Ben and Kim are new to the sticking operation, their efficiency is still set to 80%. By the system's calculations, the sticking operation for 20 jars will now take 1.25 hours.

## Settings of Operation Lead Time { .section}

You specify the following settings to configure the calculation of operation lead time of a production order as follows:

1.  On the [Production Preferences](../Shared/../UserGuide/AM_10_20_00.md) \(AM102000\) form, in the corresponding boxes of the **Scheduling** section, you specify the default values for the queue time, finish time, and move time, which the system will use as the default times for new work centers.
2.  On the [Work Centers](../Shared/../UserGuide/AM_20_70_00.md) \(AM207000\) form, you specify the following settings for each work center:
    -   In the **Basis for Capacity** box on the **General** tab, you specify which throughput settings \(run units and time, or machine units and time\) the system will use for operations in this work center.
    -   On the same tab, you specify the values for the queue time, finish time, and move time that the system will use as the default times when the work center is selected in newly added operations of bills of material or production orders.
    -   In the **Calendar ID** column on the **Shifts** tab, you specify the work calendar the system will use for calculating lead times for operations performed in this work center.
    -   In the **Crew Size** and **Efficiency** columns of the same tab, you specify the needed values if the basis for capacity is the crew size.
3.  On the [Bill of Material](../Shared/../UserGuide/AM_20_80_00.md) \(AM208000\) form, in the Operations table, you specify the lead time components for each operation when you create a bill of material.

## Queue Time { .section}

You can specify the queue time of an operation to account for potential delays in the start of the operation, which can be useful if these delays are planned or regular. During scheduling, the system extends the operation's lead time and the production order's lead time by the queue time. During advanced planning and scheduling, the system also does the following when a nonzero queue time is specified for a particular operation:

-   Delays the start time of the operation.
-   If the queue time is specified for the first operation in the routing, does one of the following with the production order, depending on the value in the **Scheduling Method** box on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form:
    -   *Start On*: Delays the start time of the first operation and therefore delays the finish time \(and possibly date\) of the production order. For example, suppose that the initial start date of a production order is January 5, the finish date is January 6, and a queue time of one day is specified for the first operation. When the system schedules the production order, it keeps January 5 as the start date of the production order and changes the finish date to January 7 to account for the queue time.
    -   *Finish On*: Moves the start date of the entire production order to the earlier date. For example, suppose that the initial start date of a production order is January 5, the finish date is January 6, and a queue time of one day is specified for the first operation. When the system schedules the production order, it keeps January 6 as the finish date and changes the start date to January 4 to account for the queue time.

The system does not increase the occupation time of the crew, machine, tool, or work center resources by the value of the queue time.

## Finish Time { .section}

You can specify the finish time for an operation to account for the time needed to finalize the operation before workers can move the items to the next operation. During scheduling, the system extends the operation's lead time and the production order's lead time by the finish time. During advanced planning and scheduling, the system also does the following when a nonzero finish time is specified for a particular operation:

-   Increases the occupation time of the work center resource where the operation takes place
-   Starts counting the finish time when a user records an operation as completed

The system does not increase the occupation time of the crew, machine, or tool resources by the value of the finish time.

## Move Time { .section}

You can specify the move time for an operation so that the system considers the time needed to move items in production between the work center where the current operation was performed and the work center where the next operation will be performed. During scheduling, the system delays the start of the next operation and extends the production order lead time by the move time.

During advanced planning and scheduling, when a nonzero move time is specified for the last operation in the routing, the system also does the following with the production order, depending on the value in the **Scheduling Method** box on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form:

-   *Start On*: Delays the finish time \(and possibly date\) of the entire production order. For example, suppose that the initial start date of a production order is January 5, the finish date is January 6, and a move time of one day is specified for the last operation. When the system schedules the production order, it keeps January 5 as the start date of the production order and changes the finish date to January 7 to account for the move time.
-   *Finish On*: Moves the scheduled start date of the production order to the earlier date. For example, suppose that the initial start date of a production order is January 5, the finish date is January 6, and a move time of one day is specified for the last operation. When the system schedules the production order, it keeps January 6 as the finish date and changes the start date to January 4 to account for the move time.

The system does not increase the occupation time of the crew, machine, tool, or work center resources by the value of the move time.

**Parent topic:**[Advanced Planning and Scheduling](../UserGuide/MFG_APS_Mapref.md)

