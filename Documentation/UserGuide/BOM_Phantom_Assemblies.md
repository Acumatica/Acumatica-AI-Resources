# Bills of Material: Phantom Assemblies {#_2c8f752b-95c8-4818-8f87-41985f5f346d .concept}

A multilevel bill of material \(BOM\) can include *phantom assemblies*, which are used to represent intermediate structures and processing steps without requiring separate production or inventory tracking.

A phantom assembly is an assembly that serves as a logical grouping of components rather than a physical item that is built, stocked, or issued independently. When an assembly is defined as phantom, the system does not create a separate production order for it. Instead, the phantom assembly explodes into its components when a production order is created for the parent item.

## Phantom Assemblies { .section}

Phantom assemblies are commonly used to:

-   Simplify complex, multilevel BOM structures
-   Reuse common component groupings across multiple finished goods
-   Model preparatory or intermediate processing steps without inventory impact

Because phantom assemblies are defined structurally but processed dynamically:

-   Operation times displayed on production orders may differ from routing setup values
-   Schedule durations may vary depending on phantom assembly quantity requirements
-   Production costs increase proportionally as phantom assemblies roll up across BOM levels

## Configuring Phantom Assemblies { .section}

In Acumatica ERP, an assembly is treated as a phantom assembly when all of the following settings are specified on the **Materials** tab of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form:

-   The **Material Type** of the assembly is set to *Phantom*.
-   An option is selected in the **Phantom Routing** column to control how its routing operations are applied.

Depending on the selected phantom routing option, routing operations defined for the phantom assembly can be:

-   Applied *before* the parent operation
-   Applied *after* the parent operation
-   *Excluded* from the production order

This configuration allows phantom assemblies to contribute operational time, cost, and scheduling information without creating a separate manufacturing step.

## Phantom Assembly Behavior { .section}

When a production order is created from a BOM, estimate, or configuration that includes phantom assemblies, the system processes them as follows:

-   No separate production order is created for the phantom assembly
-   Components of the phantom assembly are rolled directly into the parent assembly
-   Required quantities are multiplied based on the phantom assembly’s position in the BOM hierarchy
-   Routing operations are included or excluded according to the selected phantom routing option

This behavior ensures that production planning reflects the full material and processing requirements without increasing the number of production orders that must be managed.

## Phantom Assemblies in BOMs { .section}

Phantom assemblies rely on the multilevel structure of the BOM. Their effect on required quantities, operation times, and costs is cumulative when phantom assemblies are nested within one another.

As phantom assemblies appear at deeper levels of the BOM, the total quantity required by the production order may exceed the quantity shown at any single level.

## Phantom Prior Level Quantity { .section}

To support accurate quantity, time, and cost calculations, the system determines a **Phantom Prior Level Quantity** for each phantom assembly.

**Phantom Prior Level Quantity** represents the total quantity of a phantom assembly required by the production order, based on its position within the multilevel BOM. The system calculates this value by multiplying the required quantities of phantom assemblies across all preceding BOM levels.

**Example:**

-   Finished good requires **2 units** of Phantom Assembly A
-   Phantom Assembly A requires **3 units** of Phantom Assembly B
-   Phantom Prior Level Quantity for Phantom Assembly B = **2 × 3 = 6**

This calculated quantity is used by the system to proportionally scale:

-   Operation run time
-   Machine time
-   Scheduling duration
-   Labor and variable overhead costs

**Tip:** You can view **Phantom Prior Level Quantity** in the table on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. By default, this column is hidden. You can use the **Column Configuration** dialog box to make the column visible.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

