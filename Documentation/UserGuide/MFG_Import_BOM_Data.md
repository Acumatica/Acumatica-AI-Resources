# Importing Bills of Material Master Data {#_62ca4f66-b6c1-4c05-a91a-ceb05156daa4 .concept}

In this topic, you will read about importing master data related to bills of material.

## Importing Bills of Material { .section}

*Steps*, *Tools*, *Reference Designators*, and *Overhead* data are not included in the *Import BOM* provider or scenario but can be added if desired.

**Tip:** The keys to the bill of master data are *BOMID* and *RevisionID* and both are required. Additionally, the *Hold* column should be specified as either *True* or *False*.

## BOM ID { .section}

BOM ID is up to 15 alphanumeric characters in length and its length is defined on the [Numbering Sequences](CS_20_10_10.md) \(CS201010 form. You can use manual or automatic numbering. For the automatic numbering you can use an alphabetic prefix; that is, to use a start number like BOM00000. If you have an external PDM or drawing system, you might want to synchronize the data between the external system and Acumatica ERP by using the same identity scheme. Keep in mind however that the BOM ID must be unique; that is, the same BOM ID cannot be used for another inventory id or warehouse.

**Attention:** Note the following:

-   If you use automatic numbering for the BOM ID, then rerunning the import for the same data will create another bill of material with a different BOM ID. For this reason, we recommend that you select the **Manual Numbering** check box for the initial load. Generate in your spreadsheet a BOM ID conforming to the numbering sequence you plan to use and after your final import you can set the *Last Number* to the appropriate value. The values in the **BOM ID** and **Revision** columns should be the same for each line associated with a particular bill or material.
-   This import scenario cannot be used to update existing bills of material so if a bill of material was imported incorrectly then you should delete it by using the [Bill of Material](AM_20_80_00.md) \(AM208000\) form. On the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, use the *TOGGLE ACTIVATION* and *TOGGLE PROCESSING* buttons to clear the **Active** and **Processed** check boxes respectively for all rows and then find the lines that need to be imported and select the **Active** check box for all of lines of a bill of material.

## Effective Start Date { .section}

The effective start date of a new bill of material is the system date and cannot be overridden on the form but it can be included in the import data. The import mapping defaults the element to the current Acumatica ERP business date using the `@Today` parameter because all key fields must be specified on an import scenario.

## Inventory Subitems { .section}

By default, the subitem elements are inactive in the both the data provider and import scenario. If you are using subitems, then select the **Active** boxes in both the provider and import scenario. The following elements are related to subitems:

-   *Subitem*: The subitem ID for the assembly in the BOM Summary area
-   *Matl Subitem*: The subitem for the material on the Materials area.

## Required Fields { .section}

In the following table, you can find the fields that must be filled on import.

|Target Object|Field or Action|
|-------------|---------------|
|BOM Summary|BOM ID|
|BOM Summary|Inventory ID|
|BOM Summary|Subitem \(only if enabled\)|
|BOM Summary|Warehouse|
|Operations|Open Nbr|
|Operations|Work Center|
|Operations**Tip:** You can clear the **Active** check box for this field in the import scenario to copy it from the work center

|Operation Description|
|Operations**Attention:** You can clear the **Active** check box for this field in the import scenario to copy it from the work center

|Backflush Labor \(Default to Flash if null\)|
|Materials**Attention:** If there are no materials for an operation, all materials columns need to be blank in the row.

|Inventory Id|
|Materials|Subitem \(only if enabled\)|
|Materials**Tip:** You can clear the **Active** check box for this field in the import scenario to copy it from the base UOM of the stock or non-stocki tem.

|UOM|
|Materials**Attention:** You can clear the **Active** check box for this field in the import scenario to copy it from the work center

|Backflush \(True or False\)|

## Additional Fields { .section}

For these fields you can only leave blank if you make them inactive in the import scenario and they will be defaulted.

|Target Object|Field or Action|Default|
|-------------|---------------|-------|
|Operations|Setup Time|0 \(zero\)|
|Operations|Run Units|0 \(zero\)|
|Operations|Run Time|01:00 \(1 hour\)|
|Operations|Machine Units|0 \(zero\)|
|Operations|Machine Time|01:00 \(1 hour\)|
|Operation|Queue Time|0 \(zero\)|
|Materials|Qty Required|1|

**Parent topic:**[Importing Master Data into Manufacturing](../UserGuide/MFG_Import.md)

