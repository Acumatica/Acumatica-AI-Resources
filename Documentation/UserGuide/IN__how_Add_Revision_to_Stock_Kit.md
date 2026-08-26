# To Add a Revision to a Stock Kit {#_4758871e-1578-45bb-894f-500bf0e221ee .task}

If you need to make minor changes in a stock kit specification \(for example, if the list of components changes slightly\), you can add a new revision to an existing specification by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Add a Revision to a Stock Kit { .section}

1.  Open the [Kit Specifications](../Shared/../UserGuide/IN_20_95_00.md) \(IN209500\) form.
2.  In the **Kit Inventory ID** box of the Summary area, select the stock kit for which you want to add a new revision.
3.  In the **Revision** box of the Summary area, type the revision identifier, which is unique for the stock kit.
4.  If needed, in the **Description** box, type a description of the revision that will help users to identify it.
5.  Make sure that the **Active** check box is selected.
6.  Select the **Allow Component Addition** check box to allow users to add components to the kit during assembly or shipping.
7.  On the **Stock Components** tab, do the following for each stock item you want to add to the kit:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Component ID** column, select the stock item to be added to the kit.
    3.  In the **UOM** column, make sure that the correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the stock item to be added to the kit.
    5.  If needed, select the **Allow Component Qty. Variance** check box, and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns, respectively, to allow the quantity of the stock item to vary in the kit.
    6.  If needed, in the **Disassembly Coeff.** column, specify a decimal value between 0 and 1.
    7.  If needed, select the **Allow Component Substitution** check box to indicate that the stock item can be replaced in the kit.
8.  If needed, on the **Non-Stock Components** tab, do the following for each non-stock item to add a non-stock item to the kit:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Component ID** column, select the non-stock item to be added to the kit.
    3.  In the **UOM** column, make sure that the correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the non-stock item to be added to the kit.
    5.  If needed, select the **Allow Component Qty. Variance** check box and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns, respectively, to allow the quantity of the non-stock item to vary in the kit.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

