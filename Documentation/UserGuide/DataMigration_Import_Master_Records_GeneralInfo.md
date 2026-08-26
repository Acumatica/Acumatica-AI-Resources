# Migration of Master Records: General Information {#_4c7bee01-b129-4f78-998a-99738814ac94 .concept}

You import master records from the old system with their IDs that were exported from the old system. For customers and vendors, you can then enable auto-numbering so that new vendor and customer accounts will automatically get new IDs from the specified sequence.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare import scenarios and data to be uploaded
-   Import customers to the system
-   Import vendors to the system
-   Import non-stock items to the system
-   Enable auto-numeration for the master records

## Applicable Scenarios { .section}

You migrate master records from a legacy system before you start to use Acumatica ERP as an ERP system.

## Import of Master Records { .section}

You can review the predefined import scenarios on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form and update them according to the needs of the company being migrated. To import master records into the system, the following predefined import scenarios are provided with the system:

-   The *ACU Import Customers* import scenario, which is used to import customer records to the [Customers](AR_30_30_00.md) \(AR303000\) form.

    **Attention:** Customer locations are excluded from the data template provided for this import scenario. We strongly recommend that you import customer locations separately from the main customer data by using the *ACU Import Customer Locations* import scenario.

-   The *ACU Import Vendors* import scenario, which is used to import vendor records to the [Vendors](AP_30_30_00.md) \(AP303000\) form.

    **Attention:** Vendor locations are excluded from the data template provided for this import scenario. We strongly recommend that you import vendor locations separately from the main vendor data by using the *ACU Import Vendor Locations* import scenario.


## Auto-Numbering of the Master Records { .section}

If in the previous system, the master records \(vendors, customer, or inventory items\) were auto-numbered, you may want to keep the original IDs from the legacy system and continue the numeration in the newly implemented system by using the established format. To keep the original identifiers, you need to disable the auto-numbering of particular types of records before the import.

After the records are imported, you enable auto-numbering and configure the numbering sequence to start with the number that follows the last imported record identifier. For example, to enable the auto-numbering of vendor records, you perform the following general steps:

1.  On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, you create the numbering sequence for numbering of vendors \(for example, *VENDORNUM*\).
2.  In the Summary area of the form, you make sure that the **Manual Numbering** check box is cleared to enable the auto-numbering of vendor records. In the only row of the table, you specify the ID of the last imported vendor in the **Last Number** column and save your changes.
3.  On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, you select the *VENDOR* segmented key. You review the structure of the segmented key to make sure that the key has the needed length and edit mask. Also, you make sure that *VENDORNUM* is selected in the **Numbering ID** box.
4.  In the only row of the table, you select the check box in the **Auto Number** column.

    As new vendor records are created, their numeration will proceed starting from the next ID according to the settings of the numbering sequence.


**Attention:** For the customer records, you perform the same sequence of steps with the *CUSTOMER* segmented key and *CUSTNUM* numbering sequence, respectively.

For more information about numbering sequences and segmented keys, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).

## Import of Inventory Items { .section}

To simplify the process of importing stock and non-stock items, you can use item classes. Item classes are available in the system if the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. In an item class, you predefine common item settings, such as the valuation method, the base unit of measure, and the posting class. You can plan item classes so that they contain the maximum possible settings for the groups of similar inventory items.

You then include the item class of each item among the settings to be imported for a non-stock item or stock item. When each item is imported, the system uses the settings specified for the item class to fill in the corresponding elements on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. You can then specify a small number of settings to be inserted by an import scenario for each imported item, because the rest of the settings have been automatically inserted based on the item classes.

**Parent topic:**[Migrating Master Records](../UserGuide/DataMigration_Import_Master_Records_Mapref.md)

