# Bills of Material: General Information {#_9789c3f6-67e8-4af3-8ddd-808991f79fa7 .concept}

In Acumatica ERP Manufacturing Edition, by using bills of material \(BOMs\), your organization can describe the details of the process of producing a particular stock item and plan your manufacturing processes. In a bill of material, you directly connect materials, work instructions, tools, attributes, and overhead costs to an operation. Bills of material support revision tracking, phantom assemblies, backflushing of both labor and materials, material effectiveness dates, and by-products; you can create alternate bills of material. You create bills of material by using the [Bill of Material](AM_20_80_00.md) \(AM208000\) form.

In this topic, you will read about bills of material.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare the system for the creation of bills of material
-   Create and activate a bill of material

## Applicable Scenarios { .section}

You configure the system for the use of bills of material in the following cases:

-   When you initially implement Acumatica ERP, and the *Manufacturing* feature is included in your license
-   When you have purchased the *Manufacturing* feature, and you need to configure manufacturing in the existing system
-   When you need to add new bills of material or change the settings of existing bills of material to accommodate changes to business processes

## Bills of Material and Stock Items { .section}

A bill of material is a document that details the production process of a single stock item and defines the operations and materials required to build one base unit of the stock item. Before you start creating a bill of material, you must create the stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

If a stock item is stored in a single warehouse or it is stored in multiple warehouses but its manufacturing-specific settings do not differ in each, you specify the item’s manufacturing-specific settings on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) form. If the stock item is stored in multiple warehouses and its manufacturing-specific settings depend on the warehouse, you specify these settings on the **Manufacturing** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for each item–warehouse pair after defining the stock item on the [Stock Items](IN_20_25_00.md) form.

A stock item may have multiple BOMs assigned, but only one BOM can be specified as the default bill of material in the **Default BOM ID** box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) or [Item Warehouse Details](IN_20_45_00.md) form.

If the stock item is produced in standard lots, you can specify the lot size in the **Lot Size** box of the **Manufacturing** tab on the [Stock Items](IN_20_25_00.md) or [Item Warehouse Details](IN_20_45_00.md) form. The lot size becomes the default for planned orders and production orders and is used in the cost roll process on the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form. On the [Estimate](AM_30_30_00.md) \(AM303000\) form, the **Order Qty.** on the **Totals** tab is used as the lot size.

## Bill of Material Settings { .section}

You create bills of material by using the [Bill of Material](AM_20_80_00.md) \(AM208000\) form. The settings of a bill of material include the following:

-   Bill of material identifier: If the numbering sequence used for the identifier is configured to be entered manually, you type it into the **BOM ID** box according to numbering conventions used in your organization. Otherwise, the system generates this identifier automatically according to the settings of the numbering sequence and inserts it into the box. For more information, see [BOM Identifiers](#_baca71ba-6899-443b-aeb5-e5207c1d5b58).
-   Revision: In the **Revision** box, you specify the BOM revision. For more information about BOM revisions, see [BOM Revisions](#_4c3d24d2-bc89-40b0-a680-aaec1db53eba).
-   Identifier of the stock item: You specify the identifier of the stock item that will be produced in the **Inventory ID** box.
-   Warehouse \(optional\): In the **Warehouse** box, you specify the warehouse in which the production of items detailed in the bill of material will take place.
-   Start date: You enter the date when the BOM revision becomes effective in the **Start Date** box.
-   End date: In the **End Date** box, you enter the date after which this revision of the bill of material will no longer be effective. This setting is optional.
-   Operations: In the Operations table below the Summary area, you add the operation or operations \(one in each row\) that will be performed during the production of items based on the bill of material. You add operations in the order in which they will be performed in the production. For more information, see [Bills of Material: Operations](BOM_Operations.md).

You can also specify attributes for a bill of material by using the [BOM Attributes](AM_20_85_00.md) \(AM208500\) form.

## BOM Identifiers {#_baca71ba-6899-443b-aeb5-e5207c1d5b58 .section}

The identifier of the bill of material, in the **BOM ID** box of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, can be up to 15 characters. The format of the bill of material ID is determined by the numbering sequence that is created by using the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form and specified on the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form \(in the **BOM Numbering Sequence** box of the **General** tab\). As with all numbering sequences in Acumatica ERP, you may have different sequences for each branch. You may choose automatic numbering or manual entry of identifiers. You may prefer to type in the **BOM ID** box the inventory ID of the stock item that is produced by using the bill of material \(as long as the inventory ID is fewer than 15 characters\).

If you want to have multiple bills of material for a warehouse because of alternate production methods, you might consider using manual numbering for the BOM ID and use a suffix to indicate the method.

**Tip:** When you are importing bills of material, we recommend that you specify an identifier for each bill of material in the file that contains import data to reflect the format of the BOM ID; then as the **BOM Numbering Sequence** on the [BOM Preferences](AM_10_10_00.md) form, you need to select a numbering sequence for which the **Manual Numbering** check box is selected on the [Numbering Sequences](CS_20_10_10.md) form.

## BOM Revisions {#_4c3d24d2-bc89-40b0-a680-aaec1db53eba .section}

The revision entered into the **Revision** box of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form is the version of the bill of material. When you initially create a bill of material, this BOM also serves as the first revision of this BOM. You can create as many revisions as you need for the same BOM ID. In the **Default Revision** box on the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form, you specify the default revision identifier to be inserted in the **Revision** box for the first revision of all BOMs created in the system. When creating a BOM, you can change the default revision identifier.

**Attention:** If you use engineering change control, you can manage BOM revisions by using engineering change orders or requests. To indicate this, you select the **Require ECR/ECO for New BOM Revisions** check box on the [BOM Preferences](AM_10_10_00.md) form. For details about engineering change control, see [Engineering Change Control: General Information](MFG_ECC_GeneralInfo.md).

A BOM revision can have one of the following statuses, which are specified in the **Status** box of the [Bill of Material](AM_20_80_00.md) form:

-   *On Hold*: The revision is not active, and you can make changes in the bill of material. To assign this status to a revision, you select **Hold** in the Summary area of the [Bill of Material](AM_20_80_00.md) form.
-   *Active*: The revision can be used for production and planning. You cannot make changes to a BOM revision with this status. Multiple revisions can be active at the same time. The default revision is the active revision that was created most recently; this revision is used for production orders and for planning orders.
-   *Archived*: The revision has been archived and is not effective anymore.

You can control whether all new BOM revisions will have a status of *On Hold*. You can clear the **Hold BOM Revisions on Entry** check box on the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form if you want all new BOM revisions to be created with the *Active* status; in this case, the BOM revisions can be used in production immediately after creation. By default, the check box is selected, and the revisions will be created with the *On Hold* status.

To create a new revision of a particular bill of material, you do the following:

1.  In the **BOM ID** box on the [Bill of Material](AM_20_80_00.md) form, select the BOM for which you want to add a new revision.
2.  In the **Revision** box, type the revision identifier to be used for the new revision.

    This box has the *string* data type, meaning that you can enter both alphabetic and numeric characters.

    **Attention:** If you choose to use numeric values for revision tracking, it is important that you add leading zeros to ensure the correct sort order \(for example, *02*\). Without leading zeros, string-based sorting will incorrectly sequence revisions. For example, revisions *2*, *3*, and *10* would be sorted into the following order: *10*, *2*, and *3*.

    When you create an additional BOM revision, the system copies to the new revision all settings \(including all attributes, notes, and attachments\) of the revision whose ID is last in the string-based sort \(when the list is sorted by ID in ascending order\). In the example above, revision 3 would be used as the basis for the new BOM revision.

3.  Make all the needed changes to the BOM and click **Save** on the form toolbar.

You can archive a BOM revision by using the **Archive BOM** command on the [Bill of Material](AM_20_80_00.md) form. Archiving a bill of material sets the **End Date** to the current business date. You can put a revision with a status of *Archived* on hold to edit it again. When you remove the revision from hold, the system changes the status of the revision to *Active*.

## Inactivation of Bills of Material { .section}

You can make a bill of material inactive on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form in one of the following ways:

-   To temporarily inactivate the bill of material, you select the **Hold** check box in the Summary area. The system changes the status of the BOM to *On Hold* and makes the BOM unavailable for production, planning, or as a source for estimates and configurations until you clear the check box.
-   To permanently inactivate the bill of material, you click **Archive BOM** on the More menu. The system changes the status of the BOM to *Archive* and makes the BOM unavailable for production, planning, or as a source for estimates and configurations.

## Deletion of Bills of Material { .section}

You cannot delete a bill of material in any of the following cases:

-   When it is the source for a production order
-   When it is used by a product configuration
-   When it is specified in the material details of a bill of material or production order
-   When it is the default BOM or default planning BOM for an item

**Attention:** If there are no constraints preventing the deletion, bill of material revisions are always physically deleted from the database.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

