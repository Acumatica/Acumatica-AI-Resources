# To Create a Specification for a Stock Kit {#_cca6ecba-7a89-455b-9f80-6d547378e28f .task}

After you have created a stock kit, you must add the needed stock and non-stock items to the kit \(that is, create a kit specification\) by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

-   Make sure that the stock kit for which you want to add a specification has been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   Make sure that stock and non-stock items that you want to add to the kit have been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms.

## To Create a Specification for a Stock Kit { .section}

1.  Open the [Kit Specifications](../Shared/../UserGuide/IN_20_95_00.md) \(IN209500\) form.
2.  In the **Kit Inventory ID** box of the Summary area, select the stock kit for which you want to create a specification.
3.  In the **Revision** box, type the identifier of the kit revision, which is unique for the kit.
4.  In the **Description** box, type a description of the kit specification that will help users to identify it.
5.  Make sure that the **Active** check box is selected.
6.  If you want to allow users to add components to the kit during assembly or shipping, select the **Allow Component Addition** check box.
7.  On the **Stock Components** tab, do the following for each stock item you want to add to the kit:
    1.  On the table toolbar, click **Add Row** to add a new stock component.
    2.  In the **Component ID** column, select a stock item to be added to the kit.
    3.  In the **UOM** column, make sure that a correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the stock item to be assembled to the kit.
    5.  If you want to allow the quantity of the stock item to vary in the kit, select the **Allow Component Qty. Variance** check box and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns correspondingly.
    6.  If needed, in the **Disassembly Coeff.** column, specify a decimal value between 0 and 1 that will indicate to what extent the component can be returned to the inventory during disassembly.
    7.  If needed, select the **Allow Component Substitution** check box to indicate that the stock item can be substituted in the kit.
8.  If needed, on the **Non-Stock Components** tab, do the following for each non-stock item to add a non-stock item to the kit:
    1.  On the table toolbar, click **Add Row** to add a new non-stock component.
    2.  In the **Component ID** column, select the non-stock item to be added to the kit.
    3.  In the **UOM** column, make sure that the correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the non-stock item to be added to the kit.
    5.  If you want to allow the quantity of the non-stock item to vary in the kit, select the **Allow Component Qty. Variance** check box, and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns, respectively.
9.  On the form toolbar, click **Save**.

If you need to change any settings in the stock kit specification, you can add a new revision, as described in [To Add a Revision to a Stock Kit](IN__how_Add_Revision_to_Stock_Kit.md).

After you have created a specification for a stock kit, you have to assemble the kit so that users can select the kit in sales orders. For details, see [To Assemble a Stock Kit](IN__how_Assemble_Stock_Kit.md).

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

