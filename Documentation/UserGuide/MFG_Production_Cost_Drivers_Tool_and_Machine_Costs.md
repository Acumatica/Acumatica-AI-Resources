# Production Cost Drivers: Tool and Machine Costs {#_dd35eaba-13fc-4411-8b81-214aaa0e23d3 .concept}

In Acumatica ERP Manufacturing Edition, you can include costs of tools and machines in the cost of produced items, if any tools or machines are used in production. In this topic, you will read about tool and machine costs in production.

You can view tool and machine costs for each operation of a production order on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can find total tool and machine costs for a production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## Tool Costs { .section}

The system calculates planned tool cost for an operation of a production order as follows: `(Quantity to Produce) * (Required Tool Quantity) * (Tool Unit Cost)`. You can find the unit cost and the required quantity of the tool on the **Tools** tab on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form.

The actual tool cost for an operation is calculated by using the following formula: `(Completed Quantity + Scrapped Quantity) * (Tool Quantity Required) * (Tool Unit Cost)`

The system applies tool costs to a production order when a production employee records completed items for an operation in which the tools are used or for a subsequent operation; that is, tool costs are always backflushed.

To calculate the planned or actual tool cost for a production order, the system sums planned or actual tool costs for all operations included in the order.

## Machine Costs { .section}

The system uses the following formula to calculate the planned machine cost for an operation of a production order: `SUM(Machine Standard Cost)*((Machine Time)/(Machine Units)*(Quantity to Produce))`

You can find the list of machines and their costs on the **Machines** tab of the [Work Centers](AM_20_70_00.md) \(AM207000\) form for a work center that is assigned to the operation on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. Machine time and machine units are specified in the Operations table of the [Production Order Details](AM_20_90_00.md) form.

To calculate the actual machine cost for an operation, the system uses the following formula: `SUM(Machine Standard Cost)*((Machine Time)/(Machine Units)*(Completed Quantity + Scrapped Quantity))`

The system applies machine costs to a production order when a production employee records completed items for an operation in which the machines are used or for a subsequent operation; that is, machine costs are always backflushed.

To calculate the planned or actual machine cost for a production order, the system sums planned or actual machine costs for all operations included in the order.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

