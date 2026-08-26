# Production Processing: Production for Sales {#_7b32ce2a-0c3e-4f90-82e6-90146eab53ae .concept}

When you produce items that will be sold to customers, you may need to link a production order for producing an item and a sales order line for the item. When the link is created, the system allocates the produced items for the sales order, and the items become unavailable for sales operations that are not related to the sales order.

You can link the existing production order to the sales order line either by specifying the production order for the sales order line on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form or by specifying a sales order line for the production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. Additionally, you can remove the link between a sales order line and a production order.

In this topic, you will read about production orders related to sales order lines in Acumatica ERP Manufacturing Edition.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a production order assigned to a sales order
-   View allocation of items to sales and production orders
-   View the list of components that are out of stock and create documents for purchasing the components
-   Issue the components required to produce the item
-   Track the produced quantity of items and the employee time spent on producing the items
-   Record the movement of items from a work center to a warehouse

## Applicable Scenarios { .section}

You assign production orders to sales orders when customers order items that are not in stock and must be produced.

## Production Process with a Sales Order { .section}

When you create a sales order that contains an item to be produced, the production process is the following:

1.  You create the sales order by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and add the line for the item to be produced to the order.
2.  You create a production order for the line by using the **Create Production Orders** command. The system allocates the quantity of the item to be produced for the sales order and adds the link to the production order to the line. The created production order has the *Planned* status.
3.  On the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, you view the created production order and release it. The order status changes to *Released*.
4.  If you would like to give the printed production ticket to the workers who will produce the item, you print the ticket by using [Production Ticket](AM_62_50_00.md) \(AM625000\) report.
5.  You make sure that the quantity of materials required to produce the item is available on hand by using the [Critical Materials](AM_40_10_00.md) \(AM401000\) form. If you find a shortage of any materials, you create a purchase order to purchase the required materials from a vendor.
6.  You issue the materials required to produce the item by using the [Materials](AM_30_00_00.md) \(AM300000\) form. You either enter the materials manually or use the [Select Production Orders](AM_30_00_10.md) \(AM300010\) form.

    During the release of materials, the system creates and releases an inventory issue on the [Issues](IN_30_20_00.md) \(IN302000\) form. The system also updates the production order's details and costs, and the balance of the WIP account. Also, the status of the production order is changed to *In Process*.

7.  When each operation is completed, you create a labor transaction by using the [Labor](AM_30_10_00.md) \(AM301000\) form to report the time that employees spent on the operation. The system also creates a cost transaction on the [Cost Transactions](AM_30_90_00.md) \(AM309000\) form to record the cost of employees' work.
8.  When the finished item is ready to be moved to stock \(usually when the last operation in the production process is completed\), you create a move transaction by using the [Move](AM_30_20_00.md) \(AM302000\) form. The system also creates an inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form and a cost transaction on the [Cost Transactions](AM_30_90_00.md) form. If the total quantity completed is greater than or equal to the quantity of the item to be produced, the system changes the status of the production order to *Complete*.
9.  You close the production order by using the [Close Production Orders](AM_50_60_00.md) \(AM506000\) form. The system creates the final adjustment to set the balance of the WIP account to zero by creating a cost transaction on the [Cost Transactions](AM_30_90_00.md) form and a GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. The offset is added to the WIP Variance account.
10. You process the sales order according to the sales process of your organization and ship the items to the customer.

## Criteria to Create a Production Order for a Sales Order Line { .section}

For you to be able to create a production order for a sales order line on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the following conditions must be met:

-   The status of the sales order must be other than *Pending Approval*.
-   The **Mark for Production** check box must be selected in the sales order line.

    **Tip:** You can select the **Make-to-Order Item** check box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form to make the system select the **Mark for Production** check box on the sales order line by default.

-   For the sales order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form, the **Enable Linking to Production Orders** check box is selected and the sales order statuses that permit linking to production are specified in the **Linkable Sales Order Statuses** list.
-   The **MTO Order** check box is selected for the sales order type, which makes the **Mark for Production** check box appear on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form, so that it can be selected in the sales order line.

## Linking of an Existing Production Order to a Sales Order Line { .section}

In some situations, the sales order and the production order to be associated with the sales order line already exist; for example, the production order may have been created during inventory planning. You can link the applicable sales order line to the production order in either of the following ways:

-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can do the following:
    1.  Click the line on the **Details** tab.
    2.  On the table toolbar, click **Link Prod. Order** to open the **Production Details** dialog box.
    3.  In the dialog box, select the check box in the **Selected** column in the row with the production order to be linked to the sales order line; you then click **Save**.

        When the dialog box closes, you can see the identifier of the production order in the **Production Nbr.** column of the linked sales order line.

-   On the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form \(in the **SO References** section of the **References** tab\), you can do the following:
    1.  At the bottom of the section, click the **Link Sales Order** button, which is displayed only if no sales order line has been linked to the production order, to open the **SO Line Details** dialog box.
    2.  In the dialog box, select the check box in the **Selected** column for the sales order line to be linked to the production order; you then click **Save**.

        When the dialog box closes, the boxes of the **SO References** section are filled in with the customer, sales order type, sales order, and sales order line.


You can link a production order to a sales order line if all of the conditions specified in the following table are met.

|Entity|Requirements|
|------|------------|
|Sales order|The sales order is not assigned the *Canceled*, *Back Order*, or *Completed* status.|
|Production order|-   The production order is not linked to a sales order line.
-   The order is not assigned the *Completed*, *Canceled*, or *Closed* status.

|
|Stock item|-   The same stock item is specified in the production order and in the sales order line.
-   The stock item is not a configured item. \(That is, the **Configurable** check box is cleared for the sales order line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form.\)

|
|Sales order line|-   The **Mark for Production** check box is selected for the sales order line on the [Sales Orders](SO_30_10_00.md) form.
-   No production order is linked to the sales order line.
-   The sales order line has not been canceled.

|

When you create the link between a sales order line and a production order, the following changes occur in the system:

-   The type and number of the production order are displayed in the sales order line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) form.
-   The customer, sales order type, sales order number, and sales order line are displayed in the **SO References** section of the **References** tab on the [Production Order Maintenance](AM_20_15_00.md) form.
-   The item quantity is allocated for production; the item plan can be viewed on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.

**Attention:** When you link a production order to a sales order line manually, note the following:

-   One production order can be linked to only one sales order line, and a sales order line can be linked to only one production order.
-   If the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the same warehouse must be specified in the production order and the sales order line.

## Changes to a Link Between a Sales Order Line and a Production Order { .section}

You can change or remove the link between a sales order line and a production order only on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form because it is usually a production manager who is responsible for changes to production orders. To remove the link, you do the following in the **SO References** section of the **References** tab:

1.  Click the **Remove Link** button \(which is displayed only if the link has been added previously\).
2.  Confirm the removal in the **Confirm** dialog box, which is opened.

When the link between a sales order line and a production order is removed, the following changes occur in the system:

-   The type and number of the production order are removed from the sales order line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
-   The customer, sales order type, sales order number, and sales order line are removed from the **SO References** section of the **References** tab on the [Production Order Maintenance](AM_20_15_00.md) form.
-   The allocation of the item quantity for production is removed. That is, the item plan is removed on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.

When the link to the sales order line is removed, you can add the link to another sales order line.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

