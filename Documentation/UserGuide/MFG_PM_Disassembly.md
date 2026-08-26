# Disassembly Process {#_3f3a272b-cc4e-4418-bcba-472b6f039df1 .concept}

Sometimes the products you produce need to be issued out of inventory and disassembled to salvage their components. The item may be obsolete, returned non-functional from a customer, have appearance flaws that would not be accepted. or maybe purchased just for the value of a component. The disassembly process allow users to manage and track the disassembly process of a product, capture related costs, and put the usable component parts back into inventory. Defective or non-recoverable components can be scrapped. Disassemble type production orders are used to capture the costs incurred and a single-step disassembly transaction, which can be processed by using the [Disassembly](AM_30_15_00.md) \(AM301500\) form, used to record the inventory issue, scrap, and component returns to stock.

## Features { .section}

The following features are provided:

-   Generates an issue transaction for the item being disassembled and a receipt for the components salvaged.
-   Allows for scrap of disassembled component materials.
-   Create a new disassemble production order based on disassemble order type.
-   Create a disassembly transaction directly on the [Disassembly](AM_30_15_00.md) \(AM301500\) form \(and select a disassembly production order\) or on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.
-   The source for materials to be returned by the disassemble process can be a bill of material or copied from another production order.
-   Disassembly entry allows for batch correction \(reverse previous disassembly entry\).
-   By-products not supported for disassemble orders.
-   Allows actual labor entry.
-   Copies predefined attributes from the order type, bill of material, and source production orders to the disassemble orders.
-   Allow for entry of attribute values for disassembly transactions.
-   Allows for override of the unit cost of materials returned to stock.

## Processing Disassemble Production Orders { .section}

Although production orders are used for disassembly the processing steps have been simplified.

-   A disassembly transaction is performed in a single step. The item to disassembly is issued from inventory and the salvaged components received into inventory.
-   The **Release Materials** and **Generate Orders for Subassemblies** commands cannot be used for disassemble production orders.
-   The disassembly transaction will generate Inventory Issues and Receipt for the Disassembly transaction and Inventory Adjustments for correction transactions.
-   Disassemble production orders can be selected only on the [Disassembly](AM_30_15_00.md) \(AM301500\) form. \(On this form, only disassemble orders can be selected\).
-   Move and material transactions are not required and the forms do not allow the selection of disassemble production orders.
-   Configuration entry performed on the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form cannot be run for disassembly production orders. However, you can disassemble a configured item by using the production order that made it as the source.
-   Labor transactions do allow selection of disassembly order types, but restrict entry to any quantity related fields. Disassembly orders do not require operations. Unlike Move/Labor transactions which are operation specific, the disassembly entry does not provide an entry for operation number for the production item.
-   Disassemble orders use the same production order status codes as regular orders.

## Configuration Requirements { .section}

The disassembly process is the part of production management. Before you can use the process the you must create a production order type with the *Disassemble* function on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form.

-   The order type can use a different numbering sequence and GL accounts.
-   Define the following on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form:
    -   The **Disassembly Numbering Sequence** for the disassembly transactions.
    -   The optional **Default Disassembly Order Type**.

**Note:** You may want to create a separate bill of material for disassembly production orders otherwise you may be adding additional costs for operations marked for backflush. Alternatively, remove the unnecessary operations, clear backflush, and/or set their run and machine times to zero.

## Accounting { .section}

The costing method for disassemble production order is *Actual*. Any difference between the value of inventory issued and returned or scrap is booked to WIP Variance account when the production order is closed. When releasing the disassembly transaction the following accounting entries are generated:

-   Credit Inventory and debit Work in Process account for the cost of the item being disassembled.
-   Debit Inventory and credit Work in Process for the component returned to stock.
-   Credit Work in Process and debit the scrap expense account for components scrapped.
-   Credit Work in Process and debit the inventory account for components scrapped.
-   Debit Work in Process and credit the expense accounts for labor, overhead, tools, and/machines.

**Parent topic:**[Production Management](../UserGuide/MFG_PD_00_00.md)

