# Browsing the Catalog {#_05b6ab00-9689-4e01-91f8-7b68641cf53e .concept}

You can browse the catalog on the [Catalog](SP_70_00_00.md) \(SP700000\) form of the Acumatica Self-Service Portal. The catalog contains the list of items that you can add to your shopping cart.

**Attention:** This functionality appears in the Self-Service Portal, if the *B2B Ordering* feature is enabled on the Enable/Disable \(CS100000\) form in Acumatica ERP.

## Item Availability { .section}

The catalog provides information about the available quantities of the items in different warehouses. On the [Catalog](SP_70_00_00.md) \(SP700000\) form, you can view all the items in the catalog or only the items that are immediately available for ordering. For each item, you can see a short description and the price.

**Attention:** You can add inventory items to the cart only if the *Inventory* feature has been enabled in your vendor’s instance of Acumatica ERP. You can see the catalog and inventory items in the Self-Service Portal even if the *Inventory* feature is disabled; when you click the **Add To Cart** button on the table toolbar, the system displays a warning message.

Additionally, if an item is stored in different warehouses, in the **Warehouse** column, you can select the warehouse you want the item to be shipped from. If the column has a default value, you can keep it or change. For details, see [To Browse the Catalog and Select a Warehouse](SP__how_Shopping_Browse_by_category.md).

**Attention:** This column appears on the form if the *Multiple Warehouses* or *Multiple Warehouse Locations* feature is enabled \(or both features are enabled\) on the Enable/Disable \(CS100000\) form in Acumatica ERP.

For a default warehouse to appear in the **Warehouse** column of the [Catalog](SP_70_00_00.md) form, the following conditions must be met on the [Portal Preferences](SP_80_00_00.md) \(SP800000\) form \(the **B2B Ordering Settings** tab\):

-   The **Include in Warehouse List** check box is selected for the warehouse in the table.
-   The warehouse is selected as the default one in the **Default Stock Item Warehouse** or **Default Non-Stock Item Warehouse** box \(the **General Settings** section\).

## Search and Filtering Capabilities { .section}

In the selection area of the [Catalog](SP_70_00_00.md) \(SP700000\) form, you can do the following:

-   Search for specific items
-   Filter items by category
-   Show or hide items that are not available in stock
-   Monitor the total cost of the items that you plan to add to your cart

You can select an item category in the **Category** box to narrow the search results. If you are looking for a specific item, you can start typing part of the item’s identifier or description in the **Find Item** box. As you type, the table displays the inventory items whose ID or description contains the string you have typed.

Also, you can select the **Show Available Items Only** check box to view the items that are available in stock.

**Attention:** This check box is shown if the **Show Available Quantities** check box is selected on the **B2B Ordering Settings** tab of the [Portal Preferences](SP_80_00_00.md) \(SP800000\) form.

For details, see [To Search for Specific Items](SP__how_Shopping_Search_for_specific_item.md).

## Item Descriptions { .section}

You can view the detailed information about any item from the list by clicking its identifier in the **Inventory ID** column of the [Catalog](SP_70_00_00.md) \(SP700000\) form.

The **Item Details** dialog box, which opens, shows images and the extended description of the item. You can also immediately add the required quantity of the item to the cart.

For details, see [To View an Item’s Details](SP__how_Shopping_Item_details.md).

-   **[To Browse the Catalog and Select a Warehouse](../Portal/SP__how_Shopping_Browse_by_category.md)**  

-   **[To View an Item’s Details](../Portal/SP__how_Shopping_Item_details.md)**  

-   **[To Search for Specific Items](../Portal/SP__how_Shopping_Search_for_specific_item.md)**  


**Parent topic:**[Managing Online Orders](../Portal/SP__mng_Orders.md)

