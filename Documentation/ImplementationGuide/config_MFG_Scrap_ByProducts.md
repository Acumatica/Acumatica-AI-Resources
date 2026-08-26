# Configuration of Scrap, Waste, and By-Products in Production: By-Products {#_8271baad-0f9f-4e42-a723-19d0de86bfd4 .concept}

If some of the production processes in your organization yield by-products, Acumatica ERP Manufacturing Edition provides you with the ability to include by-products in a bill of material \(BOM\) and deduct their costs from the cost of the production orders based on the bill of material. In the following sections, you can find information about setting up by-products in the system.

## Setup of By-Product Processing { .section}

When you need to set up the system so that by-products are included in production orders, you do the following:

1.  If your organization uses lot control for by-products, you create a lot class on the [Lot/Serial Classes](../UserGuide/IN_20_70_00.md) \(IN207000\) form. If by-product costs will be backflushed, you need to specify the assignment method of *When Received*, the issue method of *Sequential*, and the settings for automatic generation of lot numbers. For more information about lot and serial classes, see [Items with Lot and Serial Numbers: General Information](../UserGuide/Lot_and_Serial_Numbers_GeneralInfo.md).
2.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you create a stock item for each by-product. If you need to reduce the cost of a production order by the by-product cost, on the **Price/Cost** tab, you specify the item cost according to the valuation method specified for the item in the **Valuation Method** box of the **General** tab. If the cost of the by-product must be excluded from the cost of a production order that includes the by-product, you specify *Standard Cost* as the valuation method of the by-product and make sure that all costs are zero in the **Standard Cost** section of the **Price/Cost** tab.
3.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, for a new or existing bill of material, you do the following:
    1.  In the Operations table, you add a row for the operation that will produce the by-product and specify all the needed settings.
    2.  On the **Materials** tab, you add the stock item that represents the by-product as a material required for this operation, and specify a negative quantity for the material in the **Qty Required** column.

        **Tip:** You can add any number of rows for by-products.


## Example of a BOM with a By-Product { .section}

The following example demonstrates how you can specify the settings for by-products in a bill of material.

Suppose that all of the following are true:

-   Your organization produces fresh orange juice, bottles the juice to bottles of 32 liquid ounces, and sells these bottles to restaurants.
-   Your organization sells the orange peels that remain after juice squeezing to a company that produces candied peels.
-   The production of orange juice includes two operations—squeezing the juice, which includes peels as an output, and bottling the juice.

A bill of material will describe the production of one bottle \(or 32 liquid ounces\) of orange juice. For the squeezing operation, 4.4 pounds of oranges with a cost of $2.15 per pound are required; the quantity of peels remaining from this quantity of oranges will be 1.1 pounds with a cost of $0.30 per pound. For the bottling operation, a bottle is needed at a cost of $0.20 per unit as well as a lid at a cost of $0.05 per unit.

As a production manager, you need to create a bill of material on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form with the materials \(and their settings\) displayed in the following table. \(Assume that the production manager has already defined the work centers for the operations and the noted materials in the system.\)

|Operation/Material|Quantity|UOM|Unit Cost|Planned Cost|
|------------------|--------|---|---------|------------|
|For squeezing|
|Oranges|*4.4*|*Pounds*|*2.15*|*9.46*|
|Peels|*–1.1*|*Pounds*|*0.30*|*0.33*|
|For bottling|
|Bottle|*1*|*EA*|*0.20*|*0.20*|
|Lid|*1*|*EA*|*0.05*|*0.05*|

The planned cost of materials for a production order based on the bill of material will be calculated as follows: $9.46 – $0.33 + $0.20 + $0.05 = $9.38.

**Parent topic:**[Implementing Production with Scrap, Waste, and By-Products](../ImplementationGuide/config_MFG_Scrap_Mapref.md)

