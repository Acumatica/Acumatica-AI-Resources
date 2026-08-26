# Bills of Material: Key Features {#_16ed7dcb-8920-432b-a210-1d3f4e12aac6 .concept}

The bill of material is the building block of the manufacturing software. It is where the operations and work centers are defined, along with materials, steps, overhead, and tools and/or machines. This is where the production order needs can be defined for your inventory items to become that finished good.

What this section will cover:

-   The key features of bills of materials
-   The relationship of bills of material to other Acumatica ERP functional areas

## Key Features { .section}

-   BOM / Routing Maintenance: The BOM / Routing provides the ability to directly update the bills of material and routing information by using the [Bill of Material](AM_20_80_00.md) \(AM208000\) form.
-   Planning Bills of Material: This process facilitates the forecast, or master production schedule, of product families and/or to order assemblies where the specific configuration is not known until you receive the customer order. For details, see [Bills of Material: Planning BOMs](MFG_PlanningBills.md).
-   Activity Based Costing: The system provides a means to provide detailed costing well beyond the cost of the raw materials and labor. Tools costs can be consumed based on usage setup through the [Tools](AM_20_55_00.md) \(AM205500\) form. User-defined overhead costs can be setup through the [Overhead](AM_20_25_00.md) \(AM202500\) form. These costs can be accrued at a fixed rate, by labor hour and by the quantity completed. The overhead costs can be associated to a specific product \(BOM / routing\) or they can be tied to a work center. You are not limited to a finite number of overhead IDs. The user can set up as many or as few as they want.
-   Alternate BOM / Routing: Too often in manufacturing systems, the systems will only support a single bill of material for a finished good product. To setup alternate bills of material, you often had to set up multiple inventory items. Manufacturing edition provides you with the ability to set up a single finished good item \(or subassembly\) and create alternate BOMs and routings for that same product. A good use of this is in a situation where the manufacturer has multiple sites. However, they make the same product at the sites. All too often, the different sites have different machinery, work centers, shifts, and costs. You can set up a specific bill of material for each site.
-   Backflushing: The production transactions can backflush labor and materials and is controlled by the bills of material. By selecting the operations and materials that need to be backflushed this provides the user more control in how and what is being costed.

    **Note:** The system will backflush lot- and serial-tracked items based on the usage parameters.

-   By-Products Support: By-products are entered as negative materials on the BOM. These materials will be received into inventory at the cost specified on the BOM or at the standard cost if that is what is being used. By-products can be setup to backflush automatically or can be received by using the [Materials](AM_30_00_00.md) \(AM300000\) or [Release AM Documents](AM_50_30_00.md) \(AM503000\) forms.
-   Phantoms: *Phantom* items can be entered on the BOM. They are referred to as phantoms because they show up on the BOM but disappear when a production order is created. Only manufactured items with a BOM can become phantoms.

    Several advantages to phantoms in the system include the following:

    -   Ability to be a true phantom or subassembly
    -   Phantoms can be stocked
    -   Multilevel phantoms are supported
    -   Changes to a phantom such as components or quantities when made at the BOM level are carried through the system
-   Production Steps: Specific steps can be defined at the operation level. Steps are the instructions of what needs to be done for the operation. This allows for full documentation when added with any additional notes of the production process.
-   Revision Tracking: A complete revision history of a BOM can be maintained. Multiple revisions can be saved to the revision history tables which provides the ability for the information from the past production BOM to be referenced instead of the most current revision.
-   Shifts: Multiple shift operations are supported through this application through the [Shifts](AM_20_50_00.md) \(AM205000\) form. You can create as many shifts as is needed together with the following information:
    -   Work centers that are available
    -   Number of people or machines
    -   Efficiency factors
    -   Working times by shift
    -   Shift differential

## Relationship to Other Functional Areas { .section}

|Area|Usage|
|----|-----|
|Inventory &gt; Manufacturing|Creation of a bill of material will fill in the **Primary BOM ID** box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.|
|Item Warehouse Details &gt; Manufacturing|Creation of a bill of material will fill in the **Primary BOM ID** box on the **Manufacturing** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form.|

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

