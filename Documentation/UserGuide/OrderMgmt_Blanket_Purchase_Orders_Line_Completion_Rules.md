# Blanket Purchase Orders: Rules of Line Completion and Closure {#_0d6ed596-331e-4c67-a852-34d32ff26075 .concept}

Blanket purchase orders on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form have the following rules of line completion:

-   If the line has the *Goods for IN*, *Non-Stock*, *Goods for Drop-Ship*, or *Non-Stock for Drop-Ship* type and the item in the line has *By Quantity* selected in the **Close PO Line** box of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, completing and closing occur as follows:
    -   The blanket PO line is completed when all related lines in child orders are completed and **Qty. on Receipts** on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form for the blanket order line is greater than or equal to the results of the following calculation for the line: `Order Qty. * Complete On % / 100`.
    -   The blanket PO line is closed when the **Completed** check box on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form is selected and all related lines in child orders are closed.
-   If the line has the *Service* type and the item in the line has *By Quantity* selected in the **Close PO Line** box of the [Non-Stock Items](IN_20_20_00.md) form, the line is completed and closed when both of the following conditions are met:
    -   For the blanket order line, the quantity in the **Billed Qty.** column on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form is greater than or equal to the results of the following calculation: `Order Qty. * Complete On % / 100`.
    -   All related lines in child orders are completed and closed.
-   If the line has the *Non-Stock* or *Service* type and the item in the line has *By Amount* selected in the **Close PO Line** box of the [Non-Stock Items](IN_20_20_00.md) form, the line is completed and closed when both of the following conditions are met:
    -   For the blanket order line, the amount in the **Billed Amount** column of the **Details** tab of the [Purchase Orders](PO_30_10_00.md) form is greater than or equal to the amount in the **Amount** column in the same line.
    -   All related lines in child orders are completed and closed.

**Parent topic:**[Processing Blanket Purchase Orders](../UserGuide/OrderMgmt_Blanket_Purchase_Orders_Mapref.md)

