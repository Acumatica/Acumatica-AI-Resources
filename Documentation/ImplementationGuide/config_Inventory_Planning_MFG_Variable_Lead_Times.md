# Inventory Planning Configuration: Variable Manufacturing Lead Times {#_e88ea1e1-895a-4d01-adb1-8347dbad46a3 .concept}

When the system calculates demand for the materials used in production on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form, the system creates planning recommendations for materials that must be produced. For each planning recommendation, the system specifies the action date, which is the date when the production must start. To calculate the action dates, the system calculates the lead times required to produce the needed quantity of materials. The variable manufacturing lead time depends on the quantity of produced items in production orders for which inventory planning is performed. This lead lime consists of the lead times of operations in bills of material that provide the production routing for the materials. You specify the settings that determine the operation lead times on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form.

**Attention:** You can use production orders in inventory planning only if the *Manufacturing* and *Material Requirements Planning* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

In the following sections, you can find details about variable manufacturing lead times.

## Components of the Variable Manufacturing Lead Time {#_f391f98f-33a2-4c3b-acc9-6cbe9641235b .section}

For each operation of a bill of material, you specify the settings that determine variable lead times in the Operations table of the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form. The system uses the following factors that determine operation lead times while calculating the action dates of planning recommendations for materials to be produced:

-   Worker throughput: The quantity of item units produced during a certain period of time when machines are not involved in the operation. The system determines that machines are not involved when *Crew Size* is selected in the **Basis for Capacity** box on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form for the work center specified in the operation row. In the **Run Time** column of the row, you specify the period of time \(such as *01:00* for one hour\). In the **Run Units** column, you specify the quantity of item units that workers produce during this period of time \(such as *5*\).
-   Machine throughput: The quantity of item units produced during a certain period of time when machines are used in the operation. The system determines that machines are involved when *Machines* is selected in the **Basis for Capacity** box on the [Work Centers](../UserGuide/AM_20_70_00.md) form for the work center specified in the operation row. In the **Machine Time** column of the row, you specify the period of time. In the **Machine Units** column, you specify the quantity of item units that workers use this machine to produce during this period of time.
-   Setup time: The time it takes to prepare to start the operation, which is specified in the **Setup Time** column of the operation row. For example, to prepare for the operation, workers may need to print drawings or take parts from a stock room. Based on this value, the system adds a fixed labor cost to the cost of the produced item, regardless of the size of the order.

**Important:** The following factors that also determine variable manufacturing lead time are not considered during the calculation of action dates for planning recommendations in inventory planning:

-   Queue time, move time, and finish time, which you specify in the Operations table of the [Bill of Material](../UserGuide/AM_20_80_00.md) form
-   Work center capacity, which is calculated as `Crew Size * Efficiency`, both of which are specified on the **Shifts** tab of the [Work Centers](../UserGuide/AM_20_70_00.md) form

## Configuration of Variable Manufacturing Lead Time { .section}

You configure the variable manufacturing lead time to be used in inventory planning as follows:

1.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, you specify the following settings for each work center that will be specified in an operation of the bill of material:
    -   In the **Basis for Capacity** box on the **General** tab, you specify which throughput settings \(run units and time, or machine units and time\) the system will use for operations in this work center.
    -   In the **Calendar ID** column on the **Shifts** tab, you specify the work calendar the system will use for calculating lead times for operations performed in this work center.
2.  If machines are used in any work center, on the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form, make sure that the calendar specified for each machine has the same working hours as the work center to which the machine is assigned.
3.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, in the Operations table, you specify the lead time components for each operation when creating a bill of material.

## Calculation of the Manufacturing Lead Time { .section}

When calculating action dates for planning recommendations, the system calculates the time required for performing each operation in the routing by using one of the following formulas \(depending on whether run time or machine time is used\).

```
Setup Time + (Qty. to Produce * (Run Time / Run Units))
```

```
Setup Time + (Qty. to Produce * (Machine Time / Machine Units))
```

If the value of `Run Units` or `Machine Units` is *0*, then the parts of the formula that include the units are *0*.

For example, suppose that a bill of material for producing wooden chairs includes two operations with the settings specified in the following table. The throughput for the paint operation is one chair per hour, and the throughput for the assembly operation is five chairs per hour.

|Operation|Setup Time|Run Units|Run Time|
|---------|----------|---------|--------|
|*Paint*|*01:00*|*1*|*01:00*|
|*Assembly*|*00:00*|*5*|*01:00*|

Also suppose that the work centers where the operations take place have an eight-hour working day and Saturday and Sunday as the only non-working days. Further suppose that a sales manager created a sales order for the production of 10 chairs, with the customer requiring the order by January 30 \(which is a working day\). A production manager runs inventory planning to receive the list of planning recommendations to meet the date when the customer requires the chairs. To produce 10 chairs, it will take 11 hours for the paint operation and 2 hours for the assembly operation—13 hours in total. If production must end on January 30, then the start date of the planned recommendation for production will be January 29 if it is a working day according to the work calendar.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

