# Production Processing: Nonsequential Reporting of Quantities {#_d3ae423c-6ebc-4969-aa68-3fe956d74747 .concept}

You may want to permit out-of-sequence reporting on production order operations for various reasons. For example, certain production steps can be completed nonsequentially, either in parallel or in any order, so reporting on them in a particular sequence may not be practical. In other cases, even though production steps are required to follow a specified sequence, the immediate entry of data for one step might not be feasible, which can lead to delays in subsequent production steps. For instance, the use of computers may be restricted in a work center because static electricity could interfere with volatile materials, or internet access may not be readily available to workers. To allow nonsequential reporting on production operations, you disable automatic backward reporting, in which quantities completed in an operation are reported back to prior operations. To do so, you clear the **Automatic Backward Reporting** check box on the **General** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

If this check box is cleared, when a worker reports the quantity of completed items for an operation, the system records it for the selected operation and not for the preceding operations. This quantity can be entered on of the following forms:

-   [Labor](AM_30_10_00.md) \(AM301000\)
-   [Scan Labor](AM_30_20_20.md) \(AM302020\)
-   [Move](AM_30_20_00.md) \(AM302000\)
-   [Scan Move](AM_30_20_10.md) \(AM302010\)
-   [Approve Clock Entries](AM_51_60_00.md) \(AM516000\)

## Reporting of Item Quantities { .section}

With automatic backward reporting turned off, when a worker enters the quantity of completed items for an operation that is a non-control point operation or a non-last control point operation, the system does not verify the quantity entered for the current operation against the quantity recorded for the preceding operation.

For the last operation of a production order, which is a control point operation, a worker can report a quantity only if it is less than or equal to the minimum quantity reported on preceding control point operations. If this condition is not met, the system displays an error message and does not release the labor or move transaction until the worker enters the correct item quantity.

For example, suppose that a production order for producing a base unit contains the following operations:

-   *0010 - Cutting* \(control point\)
-   *0020 - Sanding*
-   *0030 - Polishing*
-   *0040 - Inspection*
-   *0050 - Staging* \(control point\)

Operations *0010* and *0050* are control points, and the quantity complete is *0* for all operations. Further suppose that on the [Move](AM_30_20_00.md) \(AM302000\) form, a worker creates a move transaction for operation *0010* and enters `7` as the completed quantity. When specifying the completed quantity of the item for operation *0040*, another worker enters `8`. Because automatic backward reporting is turned off, the system accepts the entered quantity and does not report quantity completion in preceding operations *0030* and *0020*. However, when another worker enters `8` for the last operation, *0050*, the system does not release the move transaction until the worker enters a quantity of `7` or less.

## Reversal of Reported Item Quantities { .section}

Suppose that out-of-sequence reporting of quantities is allowed for the operations of a production order and a worker enters a negative quantity on the [Move](AM_30_20_00.md) \(AM302000\) form to revert the quantity of completed items for an operation. The system verifies that the completed quantity after the reversal is greater than or equal to the completed quantity recorded for the last operation. If the validation fails, the system displays an error message and does not release the transaction until the worker enters the correct quantity to be reversed.

In the previous example, suppose that a worker reports a completed quantity of *7* for operation *0010* and another worker reports `8` for operation *0040*. Then the first worker realizes that incorrect materials have been issued in operation *0010*. To fix the data, they create a move transaction with a quantity of –3. Because automatic backward reporting is turned off, the system accepts the entered quantity of –3 and does not report it to succeeding operations.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

