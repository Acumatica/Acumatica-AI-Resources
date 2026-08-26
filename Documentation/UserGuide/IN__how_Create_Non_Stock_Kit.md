# To Create a Non-Stock Kit {#_e3e5e5ce-9c57-4423-b383-1af069c6cc3a .task}

If your organization offers non-stock kits \(that is, bundles of stock and non-stock components that are neither produced in advance nor tracked in inventory\) to its customers, you must create these non-stock kits in the system to be able to include them in sales orders. In this topic, you will find information on how to create a non-stock kit with basic settings by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

-   Make sure the *Kit Assembly* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   If you use item classes for non-stock kits, make sure that you have created an item class that provides default settings for the kit.
-   If you do not use item classes, make sure that the following have been created in the system: the posting class, tax category, and units of measure that you want to use for the kit.

## To Create a Non-Stock Kit { .section}

1.  Open the [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Inventory ID** box, type a unique identifier of the kit.
4.  In the **Description** box, type an extended description of the kit.
5.  If needed, in the **Item Class** box of the **Item Defaults** section on the **General** tab, select the item class to provide default settings for the kit.

    Make sure that default settings copied from the item class are applicable to the non-stock kit. If not, specify new values for the settings.

6.  In the **Item Defaults** section on the **General** tab, select the **Is a Kit** check box to indicate that the non-stock item you are creating is a kit.
7.  If needed, on the **Price/Cost** tab, specify the settings to calculate the cost and price for the non-stock kit.
8.  On the form toolbar, click **Save** to save your changes.

After you have created a non-stock kit, you must create a kit specification to define the items to be included in the kit. For details, see [To Create a Specification for a Non-Stock Kit](IN__how_Create_Specification_for_Non_Stock_Kit.md).

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

