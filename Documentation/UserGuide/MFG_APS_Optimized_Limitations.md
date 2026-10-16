# Optimized APS: Limitations

Consider the following limitations when you use Optimized APS:

-   The engine schedules work centers rather than individual machines, tools, or material availability.
-   An operation can span multiple working periods and days, but the engine does not split the operation around capacity already reserved by another operation.
-   The system does not transfer a partially completed quantity to the next operation before the current operation is completed.
-   The engine does not use attribute values to determine the scheduling sequence of operations.
-   If backward multilevel scheduling places subassembly operations in the past, the engine does not rebuild the entire production structure forward from the lowest-level subassembly.
-   Forward infinite scheduling does not automatically schedule linked subassembly production orders.

The engine does not consider fixed manufacturing lead times during scheduling.

**Parent topic:**[Advanced Planning and Scheduling \(Optimized\)](../UserGuide/MFG_APS_Optimized_Mapref.md)

