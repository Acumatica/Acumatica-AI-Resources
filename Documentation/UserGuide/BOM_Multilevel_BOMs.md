# Bills of Material: Multilevel BOMs {#_c57ff506-82ac-4e96-b06f-09563823c183 .concept}

Bills of material \(BOMs\) become multilevel when a subassembly \(that is, an item with another BOM assigned\) is used as a material in another assembly or subassembly. The complete structure, from finished goods to each subassembly to raw materials, is referred to a multilevel bill of material.

You can view all levels of multilevel bills of material in a tree by using the [Engineering Workbench](AM_20_81_00.md) \(AM208100\) form. On this form, you can also create bills of material and modify existing BOMs.

## Creation of a Multilevel BOM { .section}

You can create a multilevel BOM with any number of levels; that is, a top-level BOM may include subassemblies as materials, which may also include subassemblies as materials. To create a multilevel bill of material, you do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you make sure that stock items for all needed materials and items to be produced have been created.
2.  Either on the [Bill of Material](AM_20_80_00.md) \(AM208000\) or on the [Engineering Workbench](AM_20_81_00.md) \(AM208100\) form, you create a bill of material for each item that is a subassembly.
3.  On the [Engineering Workbench](AM_20_81_00.md) form, you create a bill of material for the top-level item to be produced. On this form, you add subassemblies as materials to production operations in which the subassemblies are used.

## BOM Creation on the Engineering Workbench Form { .section}

For bills of materials that do not contain subassemblies as materials, you can use either the [Bill of Material](AM_20_80_00.md) \(AM208000\) or the [Engineering Workbench](AM_20_81_00.md) \(AM208100\) form. For multilevel bills of material, you can also use either of the two forms, but the [Bill of Material](AM_20_80_00.md) form does not display the structure of subassemblies, so it would be more convenient to use the [Engineering Workbench](AM_20_81_00.md) form.

You create a bill of material by using this form as follows:

1.  In the **Inventory ID** box of the Summary area, you select the item to be produced.
2.  You specify other settings in the Summary area \(including the warehouse, if applicable\).
3.  You save these changes. The node for the bill of material appears in the tree.
4.  In the More menu of the BOM node, you select **Add child**.
5.  You click the **New Operation** node, which appears under the BOM node, to create an operation, and on the **Operation** tab of the right pane, you specify the needed settings for the operation.
6.  You save these changes.
7.  If the operation requires materials, you do any of the following for each material, which you first select in the BOM tree:
    1.  On the **Material** tab of the right pane, you click **Add Row** on the table toolbar and specify the needed material settings, as you would on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form.
    2.  On the More menu of the operation node, you select **Add child**. You then click the **New Material** node that appears in the BOM tree and specify the needed material settings on the **Material** tab of the right pane.
8.  You specify the steps, tools, overhead, or outside processing settings on the corresponding tabs of the right pane.
9.  You save these changes. If any of the added materials is a subassembly, the system displays the operations and materials of the subassembly BOM in the tree under the parent material node.
10. You add as many operations as are needed.

## Modification of the BOM Structure in the Tree { .section}

On the [Engineering Workbench](AM_20_81_00.md) \(AM208100\) form, you can modify the BOM structure as follows:

-   Change the order of operations

    **Attention:** When you reorder operations, the system automatically updates the operation IDs based on the new order.

-   Change the order of materials within an operation
-   Move materials between operations
-   Add new operations or materials
-   Delete operations or materials

To move a node within the tree, you drag the node to the needed position. Some movements are forbidden, such as the movement of an operation at a lower level than another operation or the movement of a material under another material. If you attempt a forbidden movement, the system displays an error message and does not move the node.

**Attention:** The system saves changes to the selected bill of material each time you move nodes in the tree.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

