# Inventory Planning Configuration: Exceptions {#_647253e1-71c0-46a7-b55a-026482ab465a .concept}

When the system performs inventory planning, it uses the requested dates specified in demand orders and checks whether these dates satisfy your lead times. During the most recent execution of inventory requirements planning on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form, the system generates exceptions on the [Inventory Planning Exceptions](../UserGuide/AM_40_30_00.md) \(AM403000\) form for orders with items that can be delivered too early or too late. This helps you decide if you need to change order dates \(either the shipping date for the customer or the promised date for suppliers\).

## Exception Management {#_79865585-2050-4f1a-9207-8c8c4638a01b .section}

To manage the generation of exceptions, you specify the **Days Before** and **Days After** settings of the **Exceptions** section on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. The **Days After** value must be less than or equal to the value in the **Grace Period** box in the **General** section. With greater values, fewer exceptions are generated. If both values are *0*, then exceptions are generated whenever a supply date does not cover the demand.

The **Days Before** value represents the number of days that are acceptable for items to be supplied before the date requested by a customer. If the items in the order can be supplied earlier than the requested date minus the **Days Before** value, the system generates the *Defer* exception on the [Inventory Planning Exceptions](../UserGuide/AM_40_30_00.md) \(AM403000\) form. If most of the lead times of your vendors are a week or less, then you can specify *7* as the **Days Before** setting. When demand changes, you may want your vendor to defer a delivery to a later date. If the lead times of the vendors are greater than *7*, then you need to consider how often you want to ask your vendors to adjust their promised dates.

The **Days After** setting represents the number of days that are acceptable for items to be supplied after the date requested by a customer. If the items in the order will be supplied later than the requested date plus the **Days After** value, the system will generate an *Expedite* exception. This value is more critical than the **Days Before** value because a late delivery from a supplier affects your ability to ship \(or manufacture and ship\) goods to customers. We recommend that you specify a number between *2* and *5*.

Inventory planning will not create a planning recommendation to cover demand if the supply order is due within the grace period, but an *Expedite* exception is generated to let the planner know that the supply order needs to be expedited so the inventory item is available when it is needed. If the order cannot be expedited, then the orders that require the inventory item may need to be rescheduled to a later date.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

