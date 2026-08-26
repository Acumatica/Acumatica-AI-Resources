# Product Configurator: Processes and Functions {#_485d6403-7846-47f6-9153-7b84fcdd9095 .concept}

In this topic, you will read about processes related to product configuration.

## Defining a Configured Item { .section}

Each item to be configured must be set up as a configured item, source of manufacturing, contain a bill of material, and have an active revision configuration definition. You set up these values as follows:

1.  On the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, you create an active bill of material \(BOM\) for an item–warehouse pair. This bill of material will be used as a template to add materials to each of the operations.
2.  On the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form, you create a configuration with an active revision for the stock item and BOM.
3.  On the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, you do the following:

    -   In the **Inventory ID** box, you select the stock item.
    -   In the **Warehouse** box, you select the warehouse.
    -   On the **Replenishment** tab, you make sure that *Manufacturing* is selected in the **Replenishment Source** box.
    -   In the **Default BOM ID** box on the **Manufacturing** tab, you select the BOM linked to configuration definition.
    -   In the **Configuration ID** box on the same tab, you select the configuration to be assigned for the item.
    **Note:** If the record for the needed item–warehouse pair does not exist, you specify the default BOM ID and the configuration ID in the same boxes of the **Manufacturing** tab on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.


## Labels { .section}

You can create labels to make selections more user-friendly. The concept of labels is similar to an ID and CD configuration in the Acumatica ERP database, such as `Inventory ID` and `Inventory CD`: `Inventory ID` is the database key but the `Inventory CD` can be changed. This concept provides you with the ability to select rules, attributes, and other parameters based on the label value \(visible string label\) but the stored value in the database is the ID-like value \(non-visible integer value\). Due to this, you can rename the label while keeping the related data connected without needing to update all necessary tables.

## Formulas { .section}

To support dimensional configurations of certain fields by using the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form, you can enter formulas. The formula concept is the same as used in Acumatica Report Designer and general inquiries. The configuration maintenance provides you with the ability to enter a fixed value or a formula value to be calculated during configuration entry on the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form. The calculation of formulas in configuration entry is constantly updated when rules are processed and values are changed. Formulas are only visible on the [Configuration Maintenance](AM_20_75_00.md) form and never displayed on the [Configuration Entry](AM_30_60_00.md) form. On the [Configuration Entry](AM_30_60_00.md) form, boxes that contain formulas will always contain a value as a result of the formula execution. The [Formula Editor Dialog Box](SM__ref_IS_Formula_Editor_Dialog.md) is used for building formulas. After entering a formula, you should click **Validate** in the editor.

## Rule Processing { .section}

Rules are controlled by three types: *Exclude*, *Include*, and *Require*. When rules are processed, you only see the available remaining options. You can select attributes, features, and options in any order. For example, one user might select color as an important choice and select it first. Another user might select the fabric first as the importance. For additional information, see [Product Configurator: Rule Processing](MFG_Product_Configurator_RulesProcessing.md).

## Supplemental Items { .section}

Supplemental items are supporting option items selected during configuration entry and indicated as a supplemental item in the configuration definition. When supplemental items are selected and the configuration entry is complete, the options will be added to a quote or sales order as a new line item. The concept is a supporting item that is shipped and sold separately from the configured item. These line items cannot be edited by the user in the quote or sales order. Supplemental item price and cost does not get rolled into the configured item. For additional information, see [Product Configurator: Supplemental Items](MFG_Product_Configurator_SupplementalItems.md).

## Configuration Keys { .section}

The concept for configuration keys is to define a completed configuration entry with a selectable value for future configuration. It also supports the selections of subitems when the subitem feature is enabled. Configuration keys are generated at the completion of a configuration and recalculated if adjustments to a configuration entry are made. Completions of configuration entries are made when the user clicks the finish button. A user can select a configuration key before starting a new configuration entry to preload the selections or attributes used from the last completed configuration entry with the same configuration key. Only those features and options not selected to *Results Copy* will not be included in the preloaded configuration.

## Pricing { .section}

The standard Acumatica ERP pricing logic is used for the parent item, including items in the parent bill of material, and the options selected. For more information, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md).

## Cost { .section}

Factors that impact costing are the same as those used for calculating the cost of produced items. Cost factors are labor, machine, material, tools, and overhead and are not individual, configurable components. These cost factors are attached to the BOM as fixed entries. The only configurable cost factor is material which may vary depending on the configuration results through selected options and multilevel configurations. Cost is determined only when a production order is created.

For more information about costs, see [Configuring Production Cost Drivers: General Information](../ImplementationGuide/config_MFG_Production_Cost_Drivers_GeneralInfo.md).

## Production Order Details { .section}

When a production order is created for a configured item, the [Production Order Details](AM_20_90_00.md) \(AM209000\) form displays the operations defined in the bill of material of the configured item. The operations may have materials, steps, overhead, and tools predefined. The materials selected by a configuration are attached to their defined operations.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

