# Blanket Sales Orders: General Information {#_cbe877b1-188b-42b8-bf94-4b3140f10025 .concept}

In Acumatica ERP, a blanket sales order is an order with large item quantities that you enter to reflect a customer's plans to buy this quantity over a period of time. The quantities in a blanket sales order are used for planning purposes and do not affect the item availability in the warehouse, unlike the quantities in regular sales orders. The blanket sales order will be used as a framework from which multiple child orders will be created. These orders may involve delivery to multiple locations of the customer.

## Learning Objectives {#section_rwj_zd4_rvb .section}

In this chapter, you will learn how to do the following:

-   Activate an order type with the minimum required settings
-   Create a blanket sales order
-   Generate child orders for a blanket sales order
-   Perform quick processing of the child orders

## Applicable Scenarios {#section_rvs_dck_xvb .section}

You use blanket sales orders in the following cases:

-   When you need to record the sales of large quantities of items to the same customer over a specified period
-   When you need to plan, monitor, or forecast sales to a customer without affecting the availability of the included items in stock

## Sales with Blanket Sales Orders { .section}

A blanket sales order in Acumatica ERP has an order type for which the *Blanket Order* automation behavior is specified on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form. You can use the predefined *BL* order type, which has this automation behavior, for the processing of blanket sales orders. For details, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).

You create a blanket sales order of the *BL* order type on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. In the Summary area, you select a customer, and then on the **Details** tab, you add the items expected to be ordered by the customer.

For each line of the blanket sales order, you create line splits for each planned sale of the line item by selecting the line and clicking the **Line Details** button on the table toolbar. In the **Line Details** dialog box, which opens, you change the quantity in the **Quantity** column for the only line to the quantity of the first sale; the system automatically creates another line split with the remaining quantity of the original line on the **Details** tab. You create line splits for each item in each sale planned for this blanket sales order. Then in the **Sched. Order Date** column, you specify the date of shipping for each line split.

Line splits of the blanket sales order are converted to child orders when it is time to ship the items to a customer location. A child order is a regular sales order with the *Sales Order* automation behavior, which has a link to the blanket sales order.

You create child orders for a blanket sales order in one of the following ways:

-   By doing either of the following on the [Sales Orders](SO_30_10_00.md) form:
    -   Clicking **Create Child Orders** on the form toolbar or the More menu while you are viewing a blanket sales order with the *Open* status.
    -   Clicking **Add Blanket SO Line** on the table toolbar of the **Details** tab while you are creating a child sales order. In the **Add Blanket Sales Order Line** dialog box, which opens, you select the needed blanket order line and click **Add &amp; Close**. This links the selected sales order to the blanket order.
-   On the [Process Orders](SO_50_10_00.md) \(SO501000\) form: You select *Create Child Orders* in the **Actions** box of the Selection area, select the blanket sales orders for which child orders should be created in the table, and click **Process** on the form toolbar.

Then you use the [Shipments](SO_30_20_00.md) \(SO302000\) form to prepare and confirm the shipment or shipments related to the child sales order whose items you want to ship. The system changes the status of the blanket sales order to *Completed* when all child orders are shipped.

When a shipment for a child order is confirmed, you need to bill the customer for the shipped items by preparing a sales invoice, which is a financial document in the system that contains links to the applicable shipments and sales orders. You can review the prepared sales invoice on the [Invoices](SO_30_30_00.md) \(SO303000\) form and then you release it. When the sales invoice is released, it becomes visible on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form as an AR invoice.

## Splitting of Lines in the Line Details Dialog Box {#section_ujs_nz4_rvb .section}

By default, when you add a line with an item to the blanket sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the system displays only one line in the **Line Details** dialog box. You open this dialog box on the **Details** tab by clicking the line and then clicking **Line Details** on the table toolbar. In blanket sales orders, you can split the line in the **Line Details** dialog box into multiple lines and enter different data for each of the lines in the following columns: **Sched. Order Date**, **Customer Order Nbr.**, **Allocated**, and **PO Creation Date**. The editing of the **Alloc. Warehouse** column is disabled because transfers between warehouses are not supported for blanket sales order processing.

You can create a new line in the **Line Details** box by reducing the value in the **Quantity** column and pressing Enter. The system automatically creates a new line with the remaining quantity of the item.

By default, the current business date is automatically inserted in the **Sched. Order Date** column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form for each line of the blanket sales order. When you create multiple lines with different scheduled order dates in the **Line Details** dialog box for a blanket order line, the system changes the value in the **Sched. Order Date** column on the **Details** tab to *&lt;SPLIT&gt;* for this line.

When you create child orders, the system generates a separate child order on the [Sales Orders](SO_30_10_00.md) form for each line split with a different scheduled order date if the scheduled order date is earlier than or the same as the current business date. If the **Sched. Order Date** column is empty in a line split of a blanket sales order in the **Line Details** dialog box, the system does not add this line split to the generated child orders. If the blanket sales order has only line splits with the empty **Sched. Order Date** column in the **Line Details** dialog box, the system does not generate any child orders.

The customer order number in the **Line Details** dialog box is empty by default. If you specify the customer order number, the system inserts it into the **Customer Order Nbr.** box in the Summary area of the [Sales Orders](SO_30_10_00.md) form for the generated child order.

## Expiration of a Blanket Sales Order {#section_g4w_4nk_xvb .section}

You can specify an expiration date for a blanket sales order in the **Expires On** box in the Summary area of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. This box is empty by default, and you can leave it empty if no expiration date is known.

When the current business date is later than the expiration date of the blanket sales order, the system displays a warning message in the Summary area. The order maintains the *Open* status. If you try to make changes in the order, you will not be able to save those changes in the expired blanket sales order until the expiration date is changed to a later date.

If you don't want to extend the expiration date of the blanket sales order, you can assign the *Expired* status to it in one of the following ways:

-   Click **Process Expired Order** on the More menu of the [Sales Orders](SO_30_10_00.md) form for the blanket sales order.
-   Select the *Process Expired Order* action in the Summary area of the [Process Orders](SO_50_10_00.md) \(SO501000\) form, select the unlabeled check box for the order in the table, and click **Process** on the form toolbar.

You can also create a schedule for the system to regularly process expired orders on the [Process Orders](SO_50_10_00.md) form for all listed blanket sales orders.

**Important:** If the blanket sales order has any payment applications, allocations of items, or links to purchase orders, they are not removed when the order is assigned the *Expired* status. Instead, the system displays warning messages about the lines with payment methods, allocations, or links to purchase orders, which you can review and manually remove. Alternatively, you can extend the expiration date if the agreement with the customer will continue. If you cancel a blanket sales order with the *Expired* status by clicking **Cancel Order** on the More menu, the allocations and the links to purchase orders are removed automatically.

## Shipping Location in Blanket Sales Orders {#section_u3d_4z4_rvb .section}

The **Ship-To Location** on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form is mandatory for each line of the blanket sales order. By default, the system copies this value from the customer location specified in the **Location** box in the Summary area of the [Sales Orders](SO_30_10_00.md) form. You can manually change the value in any line.

In child orders, the value of the **Location** box in the Summary area is copied from the **Ship-To Location** column of the blanket sales order line. When you create child orders, the system generates a separate child order for each location and groups lines with the same location within one child order.

## Transfer of a Payment or Prepayment Application from a Blanket Sales Order to a Child Order { .section}

You can apply a payment or prepayment from a blanket sales order to one of its child orders. A payment or prepayment can be transferred from a blanket sales order to one of its child orders in either of the following ways:

-   If the child order is created from a blanket order, the payment is automatically transferred from the blanket order to the child order.
-   If the selected child order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form has been linked to the blanket order through the **Add Blanket Sales Order Line** dialog box \(as described in the *Sales with Blanket Sales Orders* section\), you can manually add the payment or prepayment. To do this, on the **Payments** tab, you add a row for the payment or prepayment that is applied to the blanket order. In the **Applied to Order** column, you specify the amount that the system will transfer from the blanket order to the child order.

Regardless of how the payment or prepayment application was transferred to the child order, while you are viewing the child order, you can view the reference number of the blanket order in the **Blanket SO Ref. Nbr.** column on the **Payments** tab. \(By default, the column is hidden.\)

On the **Payments** tab for the blanket order, the system does the following:

-   Updates the amount in the **Applied to Order** column for the payment.
-   Updates the payment amount that is applied to child orders in the **Transferred to Child Orders** column.

Suppose that a payment is applied to multiple blanket orders, and a child order has lines from these multiple blanket orders. The system will use the payment application from only the blanket order that is listed first on the **Details** tab for the child order at the time a user adds the payment on the **Payments** tab for the child order. \(The blanket order listed first is the first one for which the **Blanket SO Ref. Nbr.** column is filled in.\) You can apply to the child order a payment application amount that is equal to the payment application amount in the blanket order plus the available payment balance, which is the **Available Balance** amount on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form for the payment.

If a nonzero payment application has been transferred from a blanket order to a child order, and you delete the blanket order line from the **Details** tab of the [Sales Orders](SO_30_10_00.md) form for the child order, the system updates these orders as follows:

-   For the child order, leaves only the available payment balance of the applied payment in the **Applied to Order** column on the **Payments** tab.
-   For the child order, deletes the blanket order number from the **Blanket SO Ref. Nbr.** column on the **Payments** tab for the child order.
-   Transfers the payment application amount back to the blanket sales order. This amount is shown in the **Applied to Order** column of the **Payments** tab for the blanket order.

**Parent topic:**[Processing Blanket Sales Orders](../UserGuide/OrderMgmt_Blanket_Sales_Orders_Mapref.md)

