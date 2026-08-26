# Outside Processing: Automatic Move Transaction {#_276ce238-5676-42e7-847b-bafb7e17889c .concept}

You can set up an outside operation in such a way that the system will automatically generate a move transaction for the completed items when the related purchase receipt is released. To do this, you add a material line for subcontractor charges with the *Subcontract* material type and the *Purchase and Move* subcontract source on the [Production Order Details](AM_20_90_00.md), [Bill of Material](AM_20_80_00.md) \(AM208000\), [Engineering Change Request](AM_21_00_00.md) \(AM210000\), [Engineering Change Order](AM_21_50_00.md) \(AM215000\), or [Estimate Operation](AM_30_40_00.md) \(AM304000\) form.

**Attention:** You can add only one material line with the *Purchase and Move* subcontract source to each outside operation.

## Automatic Generation and Release of the Move Transaction { .section}

When a purchase receipt is released on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) or [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form, a move transaction is automatically created and released if all of the following conditions are met:

-   The purchase receipt has the *Receipt* type.
-   A purchase receipt line is linked to a purchase order line associated with a production order's material line with the *Subcontract* material type and *Purchase and Move* subcontract source.
-   The status of the linked production order’s material line is *Released* or *In Process*.
-   The status of the material line's operation is *Completed* but *Warn* or *Allow* is selected in the **Move on Completed Operation** box on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form for the order type of the linked production order.
-   The **Qty Remaining** of the production order's outside operation equals or exceeds the **Receipt Qty** of the linked purchase receipt line.

A move transaction with the *On Hold* status is automatically created on release of a purchase receipt if all of the following conditions are met:

-   The purchase receipt has the *Receipt* type.
-   A purchase receipt line is linked to a purchase order line associated with a production order's material line with the *Subcontract* material type and *Purchase and Move* subcontract source.
-   The **Qty Remaining** of the production order's outside operation is less than the **Receipt Qty** of the linked purchase receipt line.

No move transactions will be created automatically if any of the following conditions are met:

-   The status of the linked production order’s material line is *Canceled*, *Closed*, *Completed*, *Planned*, or *Locked*.
-   The **Release IN Documents Automatically** check box on the **General** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form is cleared, and *Allow* is selected in the **Under Issue Backflush Material** box on the [Production Order Types](AM_20_11_00.md) form for the order type of the linked production order.

Information about the automatically generated move transaction is displayed on the **Move** tab of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

## Setup Recommendations for the Purchase and Move Subcontract Source { .section}

To avoid issues with automatic release of the move transactions for an outside service operation with the *Purchase and Move* subcontract source, observe the following recommendations:

-   If a production order is lot- or serial-tracked, do not set an outside service operation as the last operation if the lot or serial class of the stock item has the *User-Enterable* issue method with the automatic number generation disabled and if the lot or serial numbers are not preassigned or involve more than one record.

    For example, suppose that the **Allow Preassigning Lot/Serial Numbers** check box is cleared for the production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form; also suppose that the *User-Enterable* issue method is selected and the **Auto-Generate Next Number** check box is cleared for the stock item's lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form. The system will require you to manually enter the lot or serial number. In this scenario, the move transaction cannot be automatically released.

-   Do not use the *Purchase and Move* subcontract source if the production order has attributes with the **Transaction Required** check box selected and a value specified in the **Value** box on the **Attributes** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The transaction requires manual input of the attribute values, so the automatic release of the move transaction will fail.
-   Do not create a purchase order on the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form for a material line with the *Purchase and Move* subcontract source. This form does not support the assignment of purchase orders to production order material lines, so the system will not generate an automatic move transaction for such a purchase order.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

