# To Create ABC Codes {#_4392b9b3-5aa7-471f-bc11-293ec8673874 .task}

In Acumatica ERP, you can use ABC codes to group inventory items based on their stock value and configure physical inventory by ABC codes. You create ABC codes by using the [ABC Codes](IN_20_85_00.md) \(IN208500\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

Make sure that the *Advanced Physical Counts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Create ABC Codes { .section}

1.  Open the [ABC Codes](../Shared/../UserGuide/IN_20_85_00.md) \(IN208500\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the **ABC Code** column, specify the code identifier.
4.  In the **Description** column, specify a brief description of the code.
5.  In the **Counts per Year** column, specify the number of physical inventory counts during the year.
6.  In the **ABC Code %** column, specify the threshold value \(%\) of the criteria to be used to assign the inventory items to this code.
7.  On the form toolbar, click **Save**.
8.  Repeat the previous steps for each ABC code you want to create in the system. In the **Total ABC Code %** column, make sure that the threshold for all ABC codes adds up to 100%.

**Parent topic:**[Configuration of Physical Inventory Counts by ABC Codes](../UserGuide/IN__con_Configuration_of_PI_Counts_by_ABC_Codes.md)

