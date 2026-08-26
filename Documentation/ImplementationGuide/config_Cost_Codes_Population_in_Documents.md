# Cost Codes: Cost Code Population in Project-Related Documents {#_abee3f96-af87-4d9c-b70b-080a4c6a9711 .concept}

You can set up the system to automatically use default cost codes from your preferred source: the vendor, project task, or inventory item.

**Tip:** We use the term *inventory item* to refer to both stock items and non-stock items.

## Specifying Default Cost Codes { .section}

You can configure the system to populate default cost codes not only from the vendor’s settings, but also from the settings of the project task, inventory item, or both of these. This gives you the ability to define a context-sensitive way to allocate costs based on your business processes.

You can specify default cost codes for records on the following forms:

-   [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) for project tasks
-   [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) for stock items
-   [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) for non-stock items
-   [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\), the **Tasks** tab, for project tasks

**Attention:**

-   If both a project task and an inventory item have default cost codes, the item’s code takes priority.
-   The system doesn’t insert cost codes in documents and document lines where **Project** is set to the non-project code X.

Also, to speed up project creation, you can define default cost codes on these forms:

-   [Project Template Tasks](../UserGuide/PM_20_80_10.md) \(PM208010\) for project template tasks
-   [Common Tasks](../UserGuide/PM_20_80_30.md) \(PM208030\) for common tasks

When you create a project task based on a project task template or add a common task to a project, the system assigns the corresponding default cost code to each project task. You can override these default cost codes later, if needed.

## Project Commitments and Project-Related Documents with Cost Codes { .section}

A project commitment is an obligation—represented by a purchase order, subcontract, or related document—to incur a future project-related expense. When you’re adding a document line to a project commitment, the system populates the line’s cost code based on this priority:

1.  Project task
2.  Inventory item
3.  Vendor

This applies to the following forms: [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\), [Subcontracts](../UserGuide/SC_30_10_00.md) \(SC301000\), [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\), [Cash Purchases](../UserGuide/AP_30_40_00.md) \(AP304000\), [Generate Intercompany Documents](../UserGuide/AP_50_35_00.md) \(AP503500\), and [Change Orders](../UserGuide/PM_30_80_00.md) \(PM308000\).

If the system finds no applicable cost code, the **Cost Code** column remains empty for the line.

## GL Transactions with Cost Codes { .section}

When you’re entering a project-related journal transaction on the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form, the system populates the cost code of a row based on the following priority:

1.  Project task
2.  Default cost code \(for example, *00-000*\) defined in the system

## Project Transactions with Cost Codes { .section}

When you’re entering a project-related row of a project transaction on the [Project Transactions](../UserGuide/PM_30_40_00.md) \(PM304000\) form, the system populates the cost code based on the following priority:

1.  Project task
2.  Inventory item

If the system finds no applicable cost code, the **Cost Code** column remains empty.

**Attention:** Even though the project transaction row may have a vendor specified, the system ignores the vendor’s default cost code during the search.

## Time and Expense Documents with Cost Codes { .section}

Suppose that you’re entering a line of a project-related record on the [Expense Claim](../UserGuide/EP_30_10_00.md) \(EP301000\), [Expense Receipt](../UserGuide/EP_30_10_20.md) \(EP301020\), [Employee Time Activities](../UserGuide/EP_30_70_00.md) \(EP307000\), or [Employee Time Cards](../UserGuide/EP_30_50_00.md) \(EP305000\) form. The system populates the cost code based on the following priority:

1.  Project task
2.  Labor \(non-stock\) item

If the system finds no applicable cost code, the **Cost Code** column remains empty.

## Tasks and Activities with Cost Codes { .section}

When you’re entering a task or activity on the [Activity](../UserGuide/CR_30_60_10.md) \(CR306010\), [Email Activity](../UserGuide/CR_30_60_15.md) \(CR306015\), or [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, the system populates the cost code of each project-related line based on the following priority:

1.  Project task
2.  Labor \(non-stock\) item
3.  Default cost code \(for example, *00-000*\) defined in the system

## Project Quotes with Cost Codes { .section}

When you’re entering an estimation detail of a project quote on the [Project Quotes](../UserGuide/PM_30_45_00.md) \(PM304500\) form, the system inserts the default cost code specified in the inventory item. If no default cost code is specified, the **Cost Code** column remains empty.

## Production Orders with Cost Codes { .section}

Suppose that you’re entering a project-related line of a production order on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) or [Estimate](../UserGuide/AM_30_30_00.md) \(AM303000\) form, or in the **Create Production Order** dialog box of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form. To populate the **Cost Code** column of the line, the system searches for the default cost code specified for the project task. If none is specified for the project task, the column remains empty.

## Cost Code Population in Imported, Copied, and Related Documents { .section}

Here’s how the system populates cost codes in project-related document lines, depending on how the document is created:

-   Imported documents: The system takes the cost code from the import source, such as an Excel file. If no cost code is provided, it inserts a default cost code.
-   Documents created from source documents: The system copies the cost code from the source document \(for example, from an AP bill to a purchase order\).
-   Copied documents: The system copies the cost code from the original document to the new one.

**Parent topic:**[Project Budgets with Cost Codes](../ImplementationGuide/config_Cost_Codes_Mapref.md)

