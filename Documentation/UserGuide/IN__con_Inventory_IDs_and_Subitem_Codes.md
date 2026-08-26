# Inventory Subitems {#_38632710-cd4b-473c-85f8-81ff1c0e85e9 .concept}

For peak efficiency, manufacturing and merchandising companies need to precisely track the types and quantities of items of every type stored in inventory. Acumatica ERP provides flexible tools for identifying and tracking various types of such items.

## Subitem Codes { .section}

In addition to inventory IDs, Acumatica ERP supports subitems \(or subitem codes\), which can be useful for otherwise-identical products that have different colors, sizes, or other properties tracked because they are important to customers. Thus, under the same inventory ID, you may have a number of subitems—products that share all the settings of the inventory record but have additional properties that differ, such as size or color. For more information on inventory IDs, see [Stock Items: Identifiers of Items](Stock_Items_Identifiers_of_Items.md).

You decide whether to use subitems on a system-wide level, based on the particular products you stock. If products with differing properties represent a small part of all products stocked in your warehouse, you can assign individual inventory IDs to each product variation. If such products represent a significant percentage of all stock, you may want to save the effort of creating and maintaining inventory records for each variation and instead use subitems, each with a subitem code. See below for a simplified example of subitems in use.

**Note:** If subitems are enabled, subitem codes should be used with every stock item, even if an item has no variations. Make sure to add for each subitem segment values that mean *no variations*.

## Example of Using Subitems { .section}

Suppose the merchandise sold by your company is men's apparel: T-shirts, shoes, and socks. While each model of T-shirts, shoes, and socks has a different inventory ID, the ID offers no information about the material used, the color, and the size. If you used a different ID for every possible permutation of size, color, and material, it would significantly increase the number of IDs in use and would require a significant effort to enter all those inventory records.

Suppose that your men's apparel company stocks and sells only three products with the following properties.

|Product Type|Color|Size|Fabric/Material|
|------------|-----|----|---------------|
|T-Shirt|Yellow, White, or Red|S, M, L, XL, or XXL|Cotton or Viscose|
|Socks|Black|6, 7, 8, or 9|Polyester|
|Shoes|Black, Brown, or White|38, 39, 40, 42, 42, or 43|Nubuck or Leather|

For all types of products at the warehouse, we break down all the properties—such as color, size, and fabric or material—that split the products into subitems and all possible values of these properties as shown in the table below.

|Property|Property Values|
|--------|---------------|
|Color|Yellow, White, Red, Black, Brown|
|Size|S, M, L, XL, XXL , 6, 7, 8, 9, 38, 39, 40, 42, 42, 43|
|Material|Nubuck, Leather, Polyester, Cotton, Viscose|

You would then design the subitem code. It can be segmented, with each segment describing a specific property. For the above example, we could create a subitem code that consists of the following three segments: color, size, and material.

Imagine if you added soap \(with the inventory ID *SOAP*\) to this merchandise; the soap has only one size and one "signature" scent. The color, size, and material properties, then, do not apply to soap. For products without specific properties, you need non-specific values \(those that mean "not applicable"\) for the respective segments. We recommend that you use similar non-specific values for all segments, such as zero values or *N/A* strings. In this example, we could use *000*, *000*, and *0000000000* for color, size, and material, respectively.

By using these properties, you can describe variations of all product subitems. The subitem code consists of the following possible values for the specified three segments.

|Segment|Property|Length|Segment Values|
|-------|--------|------|--------------|
|1|Color|3|000, YLW, WHT, RED, BLK, BRN|
|2|Size|3|000, S\_;\_;, M\_;\_;, L\_;\_;, XL\_;, XXL , \_;\_;6, \_;\_;7, \_;\_;8, \_;\_;9, \_;38, \_;39, \_;40, \_;42, \_;42, \_;43|
|3|Material|9|000000000, Nubuck, Leather, Polyester, Cotton, Viscose|

Thus, we have the following subitems:

-   For the *SHOES* inventory ID: *BLK-038-LEATHER*, *BRN-038-NUBUCK*, *BLK-039-LEATHER*, *BRN-038-LEATHER*, and so forth, with 36 total subitems
-   For the *TSHIRT* inventory ID: *YLW-S\_;\_;-COTTON*,*YLW-XL\_;-COTTON*, *YLW-XXL-COTTON*, and so forth, with 36 total subitems
-   For the *SOCKS* inventory ID: *BLK-\_;\_;8-POLYESTER*, *BLK-\_;10-POLYESTER*, and so forth, with 6 total subitems
-   For the *SOAP* inventory ID: *000-000-000000000* \(the only subitem\)

## Implementation of Subitems { .section}

Subitems allow you to use the same inventory ID with all financial, warehousing, and processing settings for multiple variations of an item. Subitem codes are used in addition to inventory IDs. If you decide to use subitems, subitem codes must be used with each inventory ID, even if the product does not have variations \(as with soap in the above example\).

Once subitems are enabled in the system, users need to enter a subitem code for every inventory transaction in the Inventory, Purchase Orders, and Sales Orders modules. When entering a subitem code for an item on any document, users browse through the possible values of each segment.

By default, the subitem code is independent of inventory items and the system permits all combinations between them, although most combinations make no sense. For example, the inventory item *SOAP* does not actually have the subitem *MGT-XXL-Polyester*, and the inventory item *SOCKS* doesn't have the valid subitem *YLW-42-NUBUCK*.

**Note:** For user reference, you can maintain the list of valid subitems on the [Subitems](IN_20_50_00.md) \(IN205000\) form.

## Configuration of Subitems in Your System { .section}

To configure subitems in your system, perform the following general steps:

1.  To use subitems in the system, enable the *Inventory Subitems* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    **Important:** The **Inventory Subitems** check box has been removed from the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form because the functionality associated with the *Inventory Subitems* feature will be phased out. If you have this feature enabled in your system, the associated functionality remains available. To disable the feature, contact your Acumatica support provider.

2.  Define the segmented structure of subitems by using the *INSUBITEM* key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
3.  Add values for each subitem segment by using the [Segment Values](CS_20_30_00.md) \(CS203000\) form.
4.  Create stock items by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
5.  On the **Cross-References** tab, assign to each inventory ID-subitem pair alternate IDs, if such IDs are used by vendors or customers.
6.  By using the **Restriction Groups** tab of this form, assign the item to appropriate subitem restriction groups.

## Subitem Cost Calculation Options { .section}

Products with different inventory IDs are always costed separately. Products with the same inventory ID and different subitem codes can be costed as one item or as several items. For each subitem segment defined on the [Segmented Keys](CS_20_20_00.md) form, the **Include in Cost** check box controls how cost will be calculated:

-   If the check box is selected, costs of products with the same inventory ID and different values in this subitem segment are calculated as if for different items.
-   If the check box is cleared, in cost calculations, items with different segment values in their subitems will be considered as one item. In this case, the segment should have one value marked as aggregating value on the [Segment Values](CS_20_30_00.md) form. The cost will be shown for the item with the subitem that has this aggregating value in the segment.

**Parent topic:**[Managing Subitems](../UserGuide/IN__mng_Subitems.md)

