# To Create a Stock Kit {#_d076d5bc-b603-4f42-bf2c-ee6e7ffb3caa .task}

If your organization sells kits \(that is, a combination of stock and non-stock items, which you want to track in the Inventory module\), you have to create stock kits in the system by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

-   Make sure the *Kit Assembly* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Make sure that you have created an item class that provides the default settings for the item \(that is, the kit\).

## To Create a Stock Kit { .section}

1.  Open the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Inventory ID** box, type a unique identifier of the kit.
4.  In the **Description** box, type an extended description of the kit that will help users to identify it.
5.  In the **Item Class** box of the **Item Defaults** section on the **General** tab, select the item class to provide the default settings for the kit.

    Make sure that default settings copied from the item class are applicable to the stock kit. If not, specify new values for the settings.

6.  In the **Item Defaults** section on the **General** tab, select the **Is a Kit** check box to indicate that the stock item you are creating is a stock kit.
7.  If needed, on the **Price/Cost** tab, specify the settings to calculate the cost and price for the stock kit.
8.  If needed, on the **Packaging** tab, specify the weight and volume dimensions for the stock kit to be used by third-party carriers.
9.  On the form toolbar, click **Save** to save your changes.

After you have created a stock kit, you must create a kit specification to define the items to be included in the kit. For details, see [To Create a Specification for a Stock Kit](IN__how_Create_Specification_for_Stock_Kit.md).

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

