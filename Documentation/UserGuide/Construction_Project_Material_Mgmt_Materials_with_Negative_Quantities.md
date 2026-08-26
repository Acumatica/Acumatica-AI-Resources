# Project Material Management: Issuing Materials with Insufficient Quantity on Hand {#_c9fdb8b0-6ffd-4038-b05a-ce3e00141cfd .concept}

This topic describes how the system processes lines on the [Project Materials](PM_30_65_00.md) \(PM306500\) form when you initiate a material issue creation and the required quantity exceeds the quantity on hand.

## Issuing Materials with a Negative Quantity Allowed { .section}

A stock item may belong to an item class for which the **Allow Negative Quantity** check box is selected on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. In this case, when you click **Create Material Issue** on the [Project Materials](PM_30_65_00.md) \(PM306500\) form, the full required quantity is added to the material issue even if it exceeds the quantity on hand. The settings in the **Shipment Settings** section on the **General** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form aren't used.

When you confirm the material issue and the generated inventory issue is released, the system creates a new cost layer for the quantity that exceeds the quantity on hand.

## Issuing Materials with a Negative Quantity Not Allowed { .section}

A stock item may belong to an item class for which the **Allow Negative Quantity** check box is cleared on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. In this case, if the required quantity exceeds the quantity on hand when you create a material issue, the system checks the settings in the **Shipment Settings** section on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form as described below.

**Material Issue for a Single Line**. Suppose that you select only a line for an item whose quantity on hand is *0* and click **Create Material Issue** on the [Project Materials](PM_30_65_00.md) \(PM306500\) form. The system checks the state of the **Create Zero Shipments** check box on the [Sales Orders Preferences](SO_10_10_00.md) form:

-   Cleared: No material issue is created.
-   Selected: The material issue is created and includes a single line with a quantity of *0*. You can't confirm the material issue when the item's quantity on hand is *0*.

**Material Issue for Multiple Lines**. Suppose that you select a material line whose quantity on hand is *0* and at least one line that can be issued, and then click **Create Material Issue** on the [Project Materials](PM_30_65_00.md) form. The system checks the state of the **Add Zero Lines for Items Not in Stock** check box on the [Sales Orders Preferences](SO_10_10_00.md) form:

-   Cleared: The material issue is created and includes only the items that can be issued. The material issue has no lines for items whose quantity on hand is *0* and for which negative quantity isn't allowed.
-   Selected: The material issue is created. It includes all the selected lines. You can't confirm the material issue when at least one item's quantity on hand is *0*.

For details about issuing stock items when a negative quantity is allowed, see [Item Costs and Valuation Methods: Items with a Negative On-Hand Quantity](Item_Costs_Valuation_Methods_Items_Negative_Qty_On_Hand.md).

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

