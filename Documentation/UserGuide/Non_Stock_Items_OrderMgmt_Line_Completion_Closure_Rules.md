# Non-Stock Items: Rules of Line Completion and Closure {#_3165177a-1ede-43da-b108-733e7173bab9 .concept}

Lines of the *Non-Stock* type on the **Details** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form are completed and closed based on the completion rule specified for the applicable non-stock item in the **Close PO Line** box. The system determines if a line of the *Non-Stock* type should be closed and completed by using the following rules:

-   If *By Quantity* is selected in the **Close PO Line** box for the item, the purchase order line is considered completed and closed \(that is, the **Closed** check box is selected for the line of the purchase order\) if the sum of the received quantity for the released purchase receipts prepared for the line is greater than or equal to the following: *The quantity of the purchase order line \* \(__Complete On \(%\)__/100\)*. The value of the **Complete On \(%\)** is defined for each line of the purchase order.
-   If *By Amount* is selected in the **Close PO Line** box for the item, the purchase order line is automatically considered completed and closed \(that is, the **Completed** and **Closed** check boxes are selected for the line of the purchase order\), when the amount of all the AP bills for that line is greater than or equal to the amount of the line.

Regardless of the option selected in the **Close PO Line** box, a line of the *Non-Stock* type is also considered completed on release of the purchase receipt prepared for the line if the you have selected the **Completed** check box manually in the non-stock line on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

If you process the lines of a purchase order partially, multiple related purchase receipts and AP bills can be prepared for a single purchase order. The system determines which purchase order lines should be added to the prepared purchase receipt or AP bill depending on the state of the **Completed** and **Closed** check boxes in each line, as follows:

-   Completed purchase order lines are not added to the purchase receipt corresponding to the purchase order.
-   Closed lines are added to neither purchase receipts nor AP bills corresponding to the purchase order.

If all purchase order lines have the **Completed** check box selected, and at least one line still has the **Closed** check box cleared, the purchase order is assigned the *Completed* status. If all purchase order lines have the **Completed** and **Closed** check boxes selected, the purchase order is assigned the *Closed* status.

**Attention:** You cannot delete a non-stock item from the system if there are any complete or incomplete transactions with the item or any unreleased documents that include this item.

**Parent topic:**[Creating Non-Stock Items](../UserGuide/Non_Stock_Items_OrderMgmt_Mapref.md)

