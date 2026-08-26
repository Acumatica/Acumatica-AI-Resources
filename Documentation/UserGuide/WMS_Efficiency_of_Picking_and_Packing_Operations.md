# Picking and Packing Operations: Efficiency of Warehouse Workers {#_17e7be69-e054-40e5-a30c-965884e73d74 .concept}

To build a seamless fulfillment process with swift deliveries, a company needs the ability to assess the productivity of warehouse workers. In Acumatica ERP, the [Efficiency of Picking and Packing](SO_40_20_20.md) \(SO402020\) inquiry form provides picking and packing statistics that can help warehouse managers build a well-coordinated process of picking and packing.

## Picking and Packing Statistics { .section}

On the [Efficiency of Picking and Packing](SO_40_20_20.md) \(SO402020\) form, you can view the following statistics of picking and packing operations for a selected warehouse and period:

-   The total time spent on the picking or packing operations.
-   The number of processed shipments, lines, and packages.
-   The total quantity of picked or packed items.
-   The number of useful operations.
-   The number of all the picking and packing operations.
-   The number of operations per pick list that have resulted in an error.
-   The actual time spent on the picking or packing operations.
-   The links to the following documents:
    -   The shipment for a single-shipment pick list
    -   The picking worksheet for a wave pick list
    -   The picking worksheet for a batch pick list
-   The overall efficiency in Pick and Pack modes or in Pack-only mode of shipment processing on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form.

    The overall efficiency is calculated as the number of useful operations divided by the number of minutes of the actual time.


To review the picking and packing statistics, you need to specify at least the first date of the period for which the statistics are required in the **Date Range** box of the Selection area. By default, the inquiry shows combined information on picking and packing operations in separate lines. You can view the statistics for all warehouses or narrow the inquiry results to a specific warehouse by selecting it in the **Warehouse** box in the Selection area.

You can expand the inquiry data by selecting any of the following check boxes in the Selection area of the form:

-   **Expand by User**: If this check box is selected, the table displays a separate row for each user within the specified period. When this check box is selected, you can also narrow the inquiry results to a single user by specifying a username in the **User** box.
-   **Expand by Pick List**: If this check box is selected, the table shows a separate row for each pick list within the specified period. When this check box is selected, you can also narrow the inquiry results as follows:
    -   To view the statistics for a single-shipment pick list, specify the shipment number in the **Shipment Nbr.** box.
    -   To view the statistics for the pick lists of a picking worksheet, specify the worksheet number in the **Worksheet Nbr.** box.
-   **Expand by Day**: With this check box selected, the table shows a separate row for each day within the specified period.

The inquiry form tracks both paper-based and paperless picking and packing.

## Known Limitations { .section}

The picking and packing process has the following limitations:

-   For wave and batch pick lists, the inquiry form does not show the picking time; only the packing time is shown.
-   If the **Shipment Nbr.** option button is selected on the [Efficiency of Picking and Packing](SO_40_20_20.md) \(SO402020\) form, the lookup table for the box shows only shipments for single-shipment pick lists. The following shipments are not shown:
    -   For a wave pick list, shipments included in the wave
    -   For a batch pick list, shipments included in the batch

**Parent topic:**[Automated Picking and Packing Operations](../UserGuide/WMS_Pick_Pack_Mapref.md)

