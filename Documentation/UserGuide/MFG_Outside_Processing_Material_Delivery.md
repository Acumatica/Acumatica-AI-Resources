# Outside Processing: Subcontractor's Storage of Materials {#_0d07692f-533f-4171-9328-384603b91a77 .concept}

If the subcontractor stores materials in one of its locations, you may want to track the movement of the stock items that represent the materials. Also, you may want to replenish the items or use inventory planning for them. To track the materials in the system, you may use either of the approaches described in the following sections.

## Tracking with a Warehouse Location { .section}

If you choose to use a specific location within an existing warehouse in the system for tracking subcontractor materials, consider the following:

-   You can issue or replenish items stored in a warehouse location.
-   You can include all items stored in the location in inventory planning or exclude all of them from inventory planning \(at the location level\).
-   If you create a purchase order to replenish the items stored by the subcontractor, you need to ensure that you specify the correct warehouse location for the purchase receipt.
-   You can use only single-step transfers between the locations of the same warehouse, which means that you cannot track items that are in transit.
-   You can use the standard inventory inquiries and reports to view the item availability.

## Tracking with a Specific Warehouse in the System { .section}

If you choose to use a dedicated warehouse in the system for subcontractor materials, consider the following:

-   You can use either single-step or two-step transfers for tracking item movement between warehouse locations or warehouses. By using a two-step transfer, you can track items in transit.
-   You can track movement of items by using the *Transfer* type of sales order. With this document, you can create shipments and the related documents and transactions, including carrier labels, and collect freight or landed costs.
-   You can manage inventory planning calculation by creating multiple locations with different inventory planning settings.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

