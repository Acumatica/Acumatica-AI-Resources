# Sales Order Cancellation: Reopening of a Sales Order {#_d0879504-5826-4f75-876a-f084ac9d9b16 .concept}

You can reopen a sales order with the *Completed* or *Canceled* status by clicking **Reopen Order** on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. When you reopen the sales order, the system does the following:

-   If the sales order has the *Completed* status, checks whether the credit terms requiring prepayments have been satisfied and whether the order has been partially shipped. Depending on the sales order's workflow, the system changes the order status to one of the following: *Open*, *Awaiting Payment*, or *Back Order*.

    If a user completed the sales order by using the **Complete Order** command on the More menu, the check box in the **Completed** column remains selected after the order’s reopening for all the lines on the **Details** tab. You can manually clear this check box.

-   If the sales order has the *Canceled* status, checks whether the credit terms requiring prepayments have been satisfied, the customer's credit limit has been exceeded, and the *Credit Hold* status was previously assigned to the order. Based on the sales order's workflow, the system changes the order status to one of the following: *Open*, *Awaiting Payment*, or *Credit Hold*.

    After the order’s reopening, the check box in the **Completed** column on the **Details** tab remains selected for the lines of the *Misc. Charge* type that had been completed before the cancellation. For lines of other types, the check box becomes cleared if these lines were not fully shipped before the cancellation.


**Parent topic:**[Canceling Sales Orders](../UserGuide/OrderMgmt_Sales_Order_Cancellation_Mapref.md)

