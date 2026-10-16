# Item Costs and Valuation Methods: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for selling and purchasing stock items, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially start selling or purchasing stock items, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
-   *Inventory*, which gives users the ability to maintain stock items by using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
-   *Lot and Serial Tracking* if you need to give users the ability to track costs for stock items with the *Specific* valuation method that have lot or serial numbers

</td></tr><tr><td>

[Inventory Preferences](IN_10_10_00.md) \(IN101000\)

</td><td>

All necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Warehouses](IN_20_40_00.md) \(IN204000\)

</td><td>

The needed warehouses have been created.

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

The needed stock items have been created.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in the following activities:

-   [Item Costs and Valuation Methods: To Sell Items with the Average Method](Item_Costs_Valuation_Methods_Average_Activity.md)
-   [Item Costs and Valuation Methods: To Sell Items with the FIFO Method](Item_Costs_Valuation_Methods_FIFO_Activity.md)
-   [Item Costs and Valuation Methods: To Sell Items with the Specific Method](Item_Costs_Valuation_Methods_Specific_Activity.md)
-   [Item Costs and Valuation Methods: To Sell Items with the Standard Method](Item_Costs_Valuation_Methods_Standard_Activity.md)

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

