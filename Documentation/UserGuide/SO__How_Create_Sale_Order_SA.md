# To Create a Sales Order with Automatic Allocation \(SA\) {#_691db6ab-1bb5-4a14-8963-2f0707b1a329 .task}

You create a sales order of the predefined *SA* type with automatic stock reservation by using the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## To Create a Sales Order with Allocations { .section}

1.  Open the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Order Type** box in the Summary area, select *SA \(Sales Order With Allocation\)*.
4.  In the **Customer** box, select the customer.
5.  If needed, in the **Location** box, change the default location of the customer.
6.  If this sales order is associated with a particular project, in the **Project** box, select the project. Otherwise, leave *X \(Non-Project Code\)* specified by default.
7.  In the **Date** box, change the date of the order \(which by default is the current business date\) if needed.
8.  In the **Requested On** box, specify the date when the customer wants to receive the order.
9.  If needed, in the **Customer Order** box, enter the reference number of the original customer document the sales order is based on.
10. If needed, in the **Description** box, enter a brief description for this sales order.
11. On the **Shipping** tab, in the **Sched. Shipment** box, review the date when the shipment of this order is scheduled. By default, it is the **Requested On** date minus the lead days for this customer. Change the date, if needed.
12. In the **Shipping Rule** box, notice the default shipping rule used for this customer. Select another rule, if needed.
13. On the **Details** tab, perform the following steps to add one item or multiple items to the sales order with allocation:
    1.  Click **Add Items** on the table toolbar. The **Inventory Lookup** dialog box appears with the list of active inventory items. You can use the selection criteria at the top of the dialog box to narrow the list of items.
    2.  In the line or lines with the items that you want to add, in the **Qty. Selected** column, specify the requested quantity of the items \(measured in the default unit of measure shown in the **UOM** column\). Notice the item availability data for the selected warehouse, which appears in the columns to the right.
    3.  Click **Add &amp; Close** at the bottom of the dialog box.
    4.  In the added line or lines, review the **Shipping Rule**, **Requested On**, and **Ship On** columns. Change any of these, if needed.
    5.  Click **Save** on the form toolbar.
14. If needed, on the **Details** tab, select the needed order line, and click **Line Details** on the table toolbar to review how the system has allocated the quantities of the items for the order.
15. On the form toolbar, click **Save**.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about this procedure:

-   If *SA* is not available for selection in the **Order Type** box, select the **Active** check box for the *SA* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   The functionality of stock allocation \(reservation\) is available only if any of the following features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form: *Multiple Warehouses*, *Sales Order to Purchase Order Link*, and *Lot and Serial Tracking*.
-   To facilitate order processing and tracking, you can attach scanned images or electronic versions of original customer orders to sales orders.
-   To limit the range of items in the **Inventory Lookup** dialog box, you can do any of the following:
    -   Type a string in the **Inventory** box to find the item by this string in its inventory ID, description, or alternate ID type.
    -   Click the **Sold Since** option button if the item has been sold recently. When you do, the **Sold Since** box appears with a date that is three months earlier than the current business date; select another date if needed. The list of items is populated with the items that have been sold in this date range.
    -   Select the **Show Available Items Only** check box to review only items whose available quantities are greater than 0. Clear this check box to see all items.
    -   If subitems are used in your system, to narrow the resulting list to a particular subitem of the item, select the needed subitem in the **Subitem** box.
    -   To narrow the list to items located in a particular warehouse, select the warehouse in the **Warehouse** box.
-   If the reserved quantity is split between multiple warehouses, the appropriate allocations will be visible on the [Create Transfer Orders](SO_50_90_00.md) \(SO509000\) form, and you can generate transfer orders for the allocations you select or for all listed allocations.


**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

