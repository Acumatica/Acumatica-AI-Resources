# Production Processing: Mass Processing {#_119dafc3-0e90-4e26-871f-321bfb262ba3 .concept}

The following sections explain how to process multiple documents and transactions related to production process, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Closing Production Orders { .section}

You close production orders by using the [Close Production Orders](AM_50_60_00.md) \(AM506000\). You can close one order or multiple orders at a time. On this form, you specify the period within which the production orders were created, select the unlabeled check box in each row with a production order to be closed, and click **Process** on the form toolbar. The system closes the selected production orders.

## Mass-Creating Production Orders { .section}

You can mass-create production orders for sales order lines with the **Mark for Production** check box selected by using the [Create Production Orders](AM_51_00_00.md) \(AM510000\) form. To create multiple production orders related to sales order lines, on the form, you specify the selection criteria, select the unlabeled check box in each row for which a production order will be created, and click **Process** on the form toolbar. The system creates a production order for each line and links the production order to the sales order.

## Mass-Printing Production Tickets { .section}

For any number of production orders, you can print production tickets for workers by using the [Print Production Orders](AM_51_10_00.md) \(AM511000\) form. On this form, you specify the selection criteria to filter production orders, select the unlabeled check box in each row of a production order for which you need to print tickets, and click **Process** on the form toolbar.

## Mass-Releasing Production Orders { .section}

Production orders that have the *Planned* status can be mass-released. To release multiple production orders, you open the [Release Production Orders](AM_50_00_00.md) \(AM500000\) form, select the check box in the **Selected** column for each row of a production order to be released, and click **Process** on the form toolbar. The system releases the production orders and changes their status to *Released*.

## Mass-Releasing Production-Related Transactions { .section}

Production-related transactions—such as material, labor, move, or WIP adjustment transactions—can be mass-released. To release multiple production-related transactions, you open the [Release AM Documents](AM_50_30_00.md) \(AM503000\) form, select the unlabeled check box in each row of a transaction to be released, and click **Process** on the form toolbar. The system releases the transactions and changes their status to *Released*.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

