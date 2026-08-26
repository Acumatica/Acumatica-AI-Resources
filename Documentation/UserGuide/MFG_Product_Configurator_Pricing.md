# Product Configurator: Pricing and Cost {#_e85d2759-5ecd-4830-b17a-39b7e4446e76 .concept}

Pricing for product configuration is calculated and processed based on configuration pricing settings specified on the **Price** tab of the [Configuration Maintenance](AM_20_75_00.md) \(AM207500\) form. This topic describes the values available in boxes on this tab and costs.

## Price Tab Reference { .section}

|Element|Description|
|-------|-----------|
|**Rollup**|The source of the configured total price. In this box, you can select any of the following values:-   *Parent*: You select this value of the price is fixed.
-   *Children All*: The children of the order \(stock and non-stock items\). All material already existing in the bill of material is included in the price.
-   *Children CFG*: The children of the order \(stock and non-stock items\). The existing material is not added to the price.
-   *Parent/Children*: Both the parent and children. This value combines the *Parent* and *Children All* values.

|
|**Calculate**|The moment when the prices are calculated. In this box, you can select any of the following values:-   *On Completion*: At the end of configuration
-   *After Selections*: After each option selection and attribute value change

|

The standard Acumatica ERP pricing logic is used for the parent item, including items in parent bill of material, and the options selected. For more information, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md).

You can download the following file for an example of pricing: [Pricing Example](Files/MFG_Pricing_Examples.pdf).

## Cost { .section}

Factors that impact costing are the same as currently implemented in Manufacturing Edition. Cost factors are the following: labor, machine, material, tools, and overhead. These factors are not individual, configurable components. The cost factors are attached to bill of material as fixed entries. The only configurable cost factor is material which may vary depending on the configuration results through selected options and multilevel configurations.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

