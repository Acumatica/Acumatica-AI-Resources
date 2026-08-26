# To Create a Specification for a Non-Stock Kit {#_fcad9992-e2dc-4e8d-ad4d-750e3c91f123 .task}

After you have created a non-stock kit, you must add the needed non-stock and stock items to the kit \(that is, create a kit specification\) by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

-   Make sure that the non-stock kit for which you want to add a specification has been created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
-   Make sure that non-stock and stock items that you want to add to the kit have been created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Stock Items](IN_20_25_00.md) \(IN202500\) forms.

## To Create a Specification for a Non-Stock Kit { .section}

1.  Open the [Kit Specifications](../Shared/../UserGuide/IN_20_95_00.md) \(IN209500\) form.
2.  In the **Kit Inventory ID** box of the Summary area, select the non-stock kit for which you want to create a specification.
3.  In the **Revision** box, type the identifier of the specification revision, which is unique within this kit.

    **Note:** When creating a specification you also are creating the first revision of this specification.

4.  In the **Description** box, type a description of the kit specification that will help users to identify it.
5.  Make sure that the **Active** check box is selected.
6.  Select the **Allow Component Addition** check box if you want to allow users to add components to the kit during assembly or shipping.
7.  On the **Stock Components** tab, do the following for each stock item you want to add to the kit:
    1.  On the table toolbar, click **Add Row** to add a new stock component.
    2.  In the **Component ID** column, select the stock item to be added to the kit.

        **Note:** Any lot- and serial-tracked stock items can be added to the specification of a non-stock kit, except for the items with the *When Used* assignment method or with the *User-Enterable* issue method specified for their lot/serial classes on the [Lot/Serial Classes](../Shared/../UserGuide/IN_20_70_00.md) \(IN207000\) form.

    3.  In the **UOM** column, make sure that the correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the stock item to be added to the kit.
    5.  Select the **Allow Component Qty. Variance** check box and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns correspondingly to allow the quantity of the stock item to vary in the kit.
    6.  If needed, in the **Disassembly Coeff.** column, specify a decimal value between 0 and 1 that will indicate to what extent the component can be returned to the inventory during disassembly.
    7.  If needed, select the **Allow Component Substitution** check box to indicate that the stock item can be substituted in the kit.
8.  On the **Non-Stock Components** tab, do the following for each non-stock item you want to add to the kit:
    1.  On the table toolbar, click **Add Row** to add a new non-stock component.
    2.  In the **Component ID** column, select the non-stock item to be added to the kit.
    3.  In the **UOM** column, make sure that the correct unit of measure for the item is selected.
    4.  In the **Component Qty.** column, specify the quantity of the non-stock item to be added to the kit.
    5.  Select the **Allow Component Qty. Variance** check box, and specify the minimum and maximum quantity in the **Min. Component Qty.** and **Max. Component Qty.** columns, respectively, to allow the quantity of the non-stock item to vary in the kit.
9.  On the form toolbar, click **Save**.

After you have created a specification for a non-stock kit, you can start selling it; no further actions are required.

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

