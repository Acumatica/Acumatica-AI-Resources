# Cost Codes: Configuration Prerequisites {#_43d84cf8-78d7-44d2-bf2e-d0bc115bdeae .concept}

Before starting to create a cost code, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Preparing the Needed Functionality { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Cost Codes* feature must be enabled. On the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form, the default settings must be saved before you start configuring the cost codes.

## Configuring Cost Code Identifiers {#section_u35_tjv_gmb .section}

The *COSTCODE* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form defines the identifiers of cost codes in the system. By default, this segmented key specifies that the cost code identifier is a one-segment key that consists of four numerals. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide item identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](../UserGuide/CS__con_Identifier_Segmentation.md).

The [Cost Codes](../UserGuide/PM_20_95_00.md) \(PM209500\) form contains a table in which you can define cost codes. Initially, the table contains a row with the default cost code, which has *0000* in the **Cost Code** column and *Default* in the **Description** column. You can change the name of the default cost code and its description by clicking the cost code and clicking **Change ID** on the form toolbar.

**Parent topic:**[Project Budgets with Cost Codes](../ImplementationGuide/config_Cost_Codes_Mapref.md)

