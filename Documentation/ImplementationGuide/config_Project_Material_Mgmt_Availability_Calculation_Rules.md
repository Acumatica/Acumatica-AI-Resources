# Configuration of Project Material Management: Availability Calculation Rules {#_c95730fe-f2d8-4277-8f97-760c20502ed8 .concept}

Each document that affects inventory creates at least one *item plan*—a system record representing future increases or decreases in item quantity. Each item plan's *plan type* determines how that planned quantity affects item availability. You use availability calculation rules to define which plan types affect the calculation of available quantities of inventory items in the system. Depending on the item's plan type, available item quantity decreases or increases when you allocate or purchase project materials.

When you create an availability calculation rule on the [Availability Calculation Rules](../UserGuide/IN_20_15_00.md) \(IN201500\) form, you specify how item plans related to material lines affect the availability calculation. To do this, you select or clear the needed check boxes:

-   **Deduct Qty. on Material Lines Prepared**: Indicates whether the available item quantity is decreased when some item quantity is added to a material line with the *Material Prepared* item plan.
-   **Deduct Qty. on Material Lines**: Indicates whether the available item quantity is decreased when some item quantity is added to a material line with the *Material Booked* item plan.
-   **Deduct Qty. Allocated for Material Lines**: Indicates whether the available item quantity is decreased when some item quantity is added to a material line with the *Material Allocated* item plan.
-   **Deduct Qty. Dispatched**: Indicates whether the available item quantity is decreased when some item quantity is added to a material line with the *Material Dispatched* item plan.
-   **Include Qty. of Material Purchase and Material to Purchase**: Indicates that:
    -   The available item quantity is decreased when some item quantity is added to a material line with the *Material to Purchase* item plan.
    -   The available item quantity is increased when some item quantity is added to a material line with the *Material Purchase* or *Material Receipts* item plan.

Once the rule has been set up, you specify it in the **Availability Calculation Rule** box on the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form for the item classes used to create project materials. For details, see [Availability Calculation Rules: General Information](../UserGuide/Availability_Calculation_Rules_GeneralInfo.md).

**Tip:** To view how an inventory item is distributed across warehouses and warehouse locations, you use the [Inventory Allocation Details](../UserGuide/IN_40_20_00.md) \(IN402000\) form.

**Parent topic:**[Implementing Project Material Management](../ImplementationGuide/config_Mapref_Project_Material_Mgmt.md)

