# Bills of Material: Implementation Checklist {#_7cc0c571-d48f-4fbb-b460-dae8e39f0fdf .concept}

The following section provides details you can use to ensure that the bill of material and the related entities are configured properly for processing production transactions.

## Implementation Checklist { .section}

We recommend that before you initially process manufacturing transactions, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[BOM Preferences](AM_10_10_00.md) \(AM101000\)|The following basic settings have been specified on the **General** tab:-   The numbering sequence for bills of material in the **BOM Numbering Sequence** box \(**Numbering Settings** section\)
-   The default revision identifier in the **Default Revision** box \(**Data Entry Settings** section\)
-   The appropriate options in the **Duplicates on Operation** and **Duplicates on BOM** boxes \(**Data Entry Settings** section\) to indicate whether the duplicated materials can be added at the operation and bill of material levels
-   The default work center in the **Default Work Center** box \(**Data Entry Settings** section\)
-   The appropriate state of the **Hold BOM Revisions on Entry** check box \(**Data Entry Settings** section\) to indicate whether the default status of new BOM revisions must be *On Hold* \(if the check box is selected\) or *Active* \(if it is cleared\)

|
|[Labor Codes](AM_20_65_00.md) \(AM206500\)|At least one labor code of the *Direct* type has been created.|
|[Machines](AM_20_45_00.md) \(AM204500\)|The machines that are involved in production have been created.|
|[Tools](AM_20_55_00.md) \(AM205500\)|The tools that are used in production and whose costs must be included in the cost of the finished goods have been created.|
|[Overhead](AM_20_25_00.md) \(AM202500\)|The overhead entities have been created to represent the extra costs that must be included in the cost of the finished goods, and in each overhead entity, the unit cost associated with this overhead entity.|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|For the stock items used as materials, costs have been specified on the **Price/Cost** tab.

 If these items are to be produced, if the item is produced in lots, the lot size has been specified in the **Lot Size** box on the **Manufacturing** tab.

|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|For the non-stock items used as materials, costs have been specified on the **Price/Cost** tab.|
|[Work Calendar](CS_20_90_00.md) \(CS209000\)|The work calendars that define the available hours for the manufacturing floor have been created.|
|[Shifts](AM_20_50_00.md) \(AM205000\)|At least one shift has been created. If the shift describes overtime or holiday work, the differential compared to the base pay must be specified.|
|[Work Centers](AM_20_70_00.md) \(AM207000\)|At least one work center has been created; a work center represents the physical or virtual location in a warehouse or production facility.|
|[Bill of Material](AM_20_80_00.md) \(AM208000\)|Bills of material have been created for all stock items to be produced.|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Bills of Material: Implementation Activity](BOM_Implem_Activity.md).

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

