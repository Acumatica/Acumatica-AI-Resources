# To Configure a Stock Item for Automatic Packaging {#_8345f485-2d64-44ee-b87a-2bb035ac1335 .task}

To enable the system to determine optimal packages for any sales order or shipment, you must specify packaging settings for each stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. If the *Automatic Packaging* feature is not enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can use these settings for the calculation of weight and volume of each sales order and shipment, and users will be able to select the boxes for each order manually.

## Before You Proceed { .section}

1.  On the [Companies](CS_10_15_00.md) \(CS101500\) form, make sure that the base weight UOM is selected in the **Weight UOM** box and that the base volume UOM is selected in the **Volume UOM** box.
2.  On the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, make sure that the UOM to measure the weight of the item's base unit is defined and that a conversion factor to convert this UOM to the base weight UOM is specified. Also, make sure that the UOM to measure the volume of the item's base unit is defined and that the conversion factor to convert this UOM to the base volume UOM is specified.

## To Configure a Stock Item for Automatic Packaging { .section}

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
2.  In the **Inventory ID** box, select a stock item.
3.  On the **Packages** tab, in the **Weight** box, type the weight of the base unit of the item.
4.  In the **Weight UOM** box, select the UOM used to measure the weight.
5.  In the **Volume** box, type the volume of the base unit of the item.
6.  In the **Volume UOM** box, select the UOM used to measure the volume.
7.  If this item should always be packed separately from other items, select the **Pack Separately** check box.
8.  If the *Automatic Packaging* feature is not enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, proceed to Step 10.
9.  In the **Packaging Option** box, select one of the available options:
    -   *Manual*: If the item should always be packed manually.
    -   *By Weight*: If the item should be packed by weight. In the **Boxes** table \(which appears\), create a list of boxes that can be used for this item.
    -   *By Quantity*: If the item should always be packed by quantity. An item to be packed by quantity is always packed separately from other items. \(When you select this option, the **Pack Separately** check box is selected and unavailable for editing.\)

        In the **Boxes** table \(which appears when you select this option\), create the list of boxes, and for each box, specify the maximum quantity of the base units of this item that this box can hold.

    -   *By Weight and Volume*: If the item can be packed by weight or volume jointly with other items from a sales order.

        In the **Boxes** table \(which appears when you select this option\), create the list of boxes that can be used for this item.

10. Click **Save** on the form toolbar.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

