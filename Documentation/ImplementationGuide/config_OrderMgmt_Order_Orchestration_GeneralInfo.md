# Order Orchestration: General Information {#_9dc93ac5-8a77-4640-b872-9c9526683f38 .concept}

With order orchestration in Acumatica ERP, your company can optimize the fulfillment of sales orders and transform the daily fulfillment routine by:

-   Reducing manual intervention when the users are fulfilling sales orders
-   Optimizing fulfillment efficiency
-   Reducing time spent on order fulfillment

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the required features
-   Determine your fulfillment strategy for order orchestration
-   Set up shipping zones for order orchestration
-   Create orchestration plans
-   Set up types of sales orders for order orchestration
-   Orchestrate sales orders

## Applicable Scenarios { .section}

You may need to learn how to configure order orchestration if your organization wants to optimize the process of sales order fulfillment.

## Basic Setup { .section}

To start using order orchestration, make sure that the *Order Orchestration* and *Inter-Branch Transactions* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. Next, choose the *fulfillment strategy* for your shipping process. A fulfillment strategy determines how the system decides which warehouse to ship items from:

-   **Destination priority**: The system uses the customer's shipping address and predefined shipping zones to select the best warehouse or warehouses for fulfillment. Choose this strategy if your company has similar inventory across warehouses.
-   **Warehouse priority**: The system uses the warehouse specified in each sales order line on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form as the source. Based on the priority list of warehouses you set up, the system selects the most appropriate one for fulfillment. Choose this strategy if your company stocks different amounts of items in different warehouses or sells perishable goods.

Once you’ve chosen your strategy, you will use it to create the following records in Acumatica ERP:

-   *Types of sales orders*: You can select fulfillment strategies for types of sales orders your organization uses. You can use a different strategy for each type.
-   *Orchestration plans*: An orchestration plan is a template for order fulfillment. You define multiple orchestration plans and assign a fulfillment strategy to each of them.

## Configuration Workflow for Order Orchestration { .section}

To configure order orchestration in Acumatica ERP, you generally follow these steps:

1.  **Define shipping zones** \(Optional\): First, you add or modify shipping zones on the [Shipping Zones](../UserGuide/CS_20_95_00.md) \(CS209500\) form. You perform this step only if you plan to use the destination priority to orchestrate sales orders.

    **Attention:** If you’ve enabled the *Order Orchestration* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the [Shipping Zones](../UserGuide/CS_20_95_00.md) \(CS209500\) form replaces the previous [Shipping Zones](../UserGuide/CS_20_75_10.md) \(CS207510\) form. Any shipping zones you’ve defined before enabling this feature are transferred to the new form.

2.  **Define orchestration plans**: Next, you add each orchestration plan you want to use on the [Orchestration Plans](../UserGuide/SO_30_46_00.md) \(SO304600\) form.
3.  **Set up types of sales orders**: Finally, you need to set up the order types of the sales orders you’re going to orchestrate on the [Order Types](../UserGuide/SO_20_10_00.md) form.

## Defining Shipping Zones { .section}

A shipping zone for order orchestration is a geographic area that contains a list of countries and states. You create shipping zones on the [Shipping Zones](../UserGuide/CS_20_95_00.md) \(CS209500\) form. You can then assign a shipping zone to each customer or customer location on the **Shipping** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) or [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) form. When you create a sales order on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, the system copies this shipping zone to the **Shipping Zone** box on the **Shipping** tab of that form.

During order orchestration, the system uses the shipping zone in the sales order to select an associated orchestration plan. If no shipping zone is specified, the system determines it by using the shipping address of the customer or customer location .

To create a shipping zone for order orchestration on the [Shipping Zones](../UserGuide/CS_20_95_00.md) form, do the following:

1.  Click **Add New Record** on the form toolbar.
2.  Specify the shipping zone's ID and description.
3.  Click **Add Country/State** on the form toolbar.
4.  In the **Add Country/State** dialog box, specify a country in the **Country ID** box.

    The system lists the states for that country.

5.  For each state that belongs to the current shipping zone, select the check box in the **Selected** column.
6.  Click **Add &amp; Close**.

## Defining Orchestration Plans { .section}

You use orchestration plans to make the system fulfill orders according to your specifications. You create plans on the [Orchestration Plans](../UserGuide/SO_30_46_00.md) \(SO304600\) form as follows:

1.  Click **Add New Record** on the form toolbar.
2.  Specify the orchestration plan's ID and description.
3.  Select a strategy in the **Fulfillment Strategy** box. During orchestration, the system matches the type of the sales order with an orchestration plan based on its strategy and additional settings. The additional settings depend on the selected strategy:
    -   For *Destination Priority*, you select the shipping zone this orchestration plan covers in the **Shipping Zone** box. You can have only one active orchestration plan for each shipping zone.
    -   For *Warehouse Priority*, you select a warehouse in the **Source Warehouse** box, which the system shows instead of the **Shipping Zone** box for this fulfillment strategy. Additionally, you can select the **Include Source Warehouse** check box that also becomes available. If you do, the system adds the source warehouse to the table with priority *0*—the highest priority level.
4.  Add the list of warehouses and their priority rankings to the table. You can manually change the priority of any warehouse except for the source warehouse.

## Setting Up Sales Order Types { .section}

To complete the implementation of order orchestration, you need to set up the order types of the sales orders you’re going to orchestrate. The order orchestration settings appear for only order types with the following settings on the **Template** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form:

-   **Automation Behavior**: *Sales Order* or *RMA Order*
-   **Process Shipment**: Selected
-   **Default Operation**: *Issue*

For each order type you plan to orchestrate, specify these settings on the **General** tab \(**Orchestration Settings** section\) of the [Order Types](../UserGuide/SO_20_10_00.md) form:

-   **Fulfillment Strategy**: Select the strategy of orchestration plans the system will use for fulfilling orders of this type:
    -   *Destination Priority*: The system uses plans with the *Destination Priority* strategy specified and orchestrates sales orders by the customer's shipping zone.
    -   *Warehouse Priority*: The system uses plans with the *Warehouse Priority* strategy specified and orchestrates sales orders by the source warehouse in the lines of the order.
    -   *Do Not Orchestrate* \(default\): The system doesn’t orchestrate orders of this type.
-   **Limit Number of Fulfillment Warehouses**: Select this check box if you want to specify the maximum number of fulfillment warehouses.
-   **Number of Fulfillment Warehouses**: Enter the maximum number of warehouses the system can use to fulfill a single sales order. This box becomes available for editing only if you’ve selected the **Limit Number of Fulfillment Warehouses** check box.

**Parent topic:**[Order Orchestration](../ImplementationGuide/config_OrderMgmt_Order_Orchestration_Mapref.md)

