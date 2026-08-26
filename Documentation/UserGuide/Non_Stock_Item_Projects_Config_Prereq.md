# Labor Items: Configuration Prerequisites {#_8a2d0984-d48e-4a96-a136-51bf85d8b7fe .concept}

Before starting to create labor items, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin creating labor items for projects:

-   On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the basic project accounting settings have been specified: numbering sequences, non-project code, visibility settings, and posting settings. The actual combination of settings you need to specify depends on the processes in your organization and on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details, see [Basic Project Configuration: Implementation Activity](../ImplementationGuide/config_Project_Basic_Implem_Activity.md).
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the GL accounts used for labor items have been mapped to appropriate account groups. \(Otherwise, the transactions related to labor on projects won’t be visible in projects.\) For details on configuring account groups, see [Account Groups: To Create an Expense Account Group](Account_Groups_Implem_Activity.md).
-   On the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, all necessary system-wide units of measure that you will use for labor items have been added. For details, see [Creating Units of Measure](UOMs_Mapref.md).
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the necessary tax categories have been created.

## Configuring Posting Classes { .section}

If the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form in your system, a posting class must be specified in non-stock item you create, including each labor item. Before you create labor items, make sure that on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, the necessary posting classes have been created. For details, see [Creating Posting Classes](Posting_Classes_Mapref.md).

## Configuring Labor Item Identifiers { .section}

The *INVENTORY* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form defines the structure of the identifiers of non-stock items. By default, this segmented key specifies that the item identifier is an alphanumeric string of up to 10 characters. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide item identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

**Parent topic:**[Creating Labor Items](../UserGuide/Non_Stock_Item_Projects_Mapref.md)

