# Production Order Types: General Information {#_3b562e48-71cc-4600-88ac-4f359700c3b8 .concept}

In Acumatica ERP Manufacturing Edition, a production order type provides default settings for production orders of the type and determines the workflow for these production orders. You use the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form to create production order types, which are described further in this topic.

## Learning Objectives { .section}

In this chapter, you will learn how to create a production order type for each of the following categories of production orders: regular, planning, and disassembly.

## Applicable Scenarios { .section}

You configure production order types in any of the following cases:

-   When you initially implement Acumatica ERP and the *Manufacturing* feature is included in your license
-   When you have purchased the *Manufacturing* feature, and you need to configure manufacturing in the existing Acumatica ERP system
-   When you need to add new production order types or change the settings of existing order types to accommodate business process changes

## Settings of Production Order Types { .section}

When you create a production order type, you specify the following settings for it on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form:

-   The function of production orders of the type, which determines the workflow
-   The Work in Process and WIP Variance GL accounts
-   The cost calculation methods for produced items in production orders of the type
-   The scrap settings to be used for production orders of the type
-   The settings of data entry validation that apply to orders of the type
-   The attributes that users specify for production orders of the type

The settings of a production order type are inserted or used when a new production order is created on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form and the type is selected in the **Order Type** box.

**Attention:** You cannot change the order type in a production order once the order has been created.

In the following sections, you will find detailed information about the settings of a production order type.

## Functions of Production Order Types {#_c9be96dd-98fd-4f4d-b056-18c64839dad6 .section}

The workflow of a production order in the system depends on the function specified in the production order type assigned to the production order. The following functions are available in the **Function** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form:

-   *Regular*: The production order is used to produce items.

    You can specify a default order type with this function in the **Default Order Type** box of the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form. If you do, when a new production order is created on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form and the *Regular* function is selected, this production order type is inserted, as are its default settings.

-   *Planning*: The production order is used for planning purposes, such as reserving materials and capacity. Processing of an order with this function does not generate transactions, such as issue of materials or labor. The inventory planning regeneration process on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form also uses orders with this function, but these orders do not reserve materials and capacity.

    You can specify the default planning order type in the **Plan Order Type** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. If you do, when a new production order is created on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form and the *Planning* function is selected, this production order type is inserted, as are its default settings.

-   *Disassemble*: The production order is used to disassemble items.

    You can specify the default disassembly order type in the **Default Disassemble Order Type** box on the [Production Preferences](../UserGuide/AM_10_20_00.md) form. If you do, when a new production order is created on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form and the *Disassemble* function is selected, this production order type is inserted, as are its default settings.


You can create as many production order types as you need but you must create at least one *Regular* order type and one *Planning* order type.

## GL Accounts for Production Order Types {#_9f0b4fca-dbe0-4e4e-b02a-1234f77e2f17 .section}

In each production order type, you can select a specific Work in Progress and WIP Variance GL accounts in the **Work in Process Account** and **WIP Variance Account** boxes on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form accordingly. The system uses these GL accounts for posting amounts only if the accounts are not specified in posting classes assigned to the stock items that are included in the production order of this type.

## Cost Calculation for Produced Items {#_39178698-8be5-468d-804c-8cf6e2d346a4 .section}

In the **Costing Method** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you specify the costing method to be used for production orders of the type. The costing method determines how the cost of produced items is calculated for items with the *Average*, *FIFO*, or *Specific* valuation methods. You can select one of the following costing methods:

-   *Actual*: The actual balance of the Work in Process GL account is used to calculate the cost. This method is always used for disassembly orders. For other order types, we recommend that you use it only if you can ensure that during production processing, all materials and labor have been issued before the last operation move.
-   *Estimated*: Actual and planned costs are combined during the cost calculation. We recommend that you use this method when material and labor transactions are not always reported before the inventory is receipted from the production order. This method is recommended for all regular and planning orders.

For production orders that include items with the *Standard* valuation method, the system specifies the *Standard* costing method, regardless of the costing method specified for the production order type assigned to the production order, and a user cannot change the costing method for the production order.

**Attention:** Before you select the costing method for a production order type, we recommend that you read detailed information about costing methods in [Cost Calculation for Produced Items: General Information](../UserGuide/MFG_Production_Cost_Calculation_GeneralInfo.md).

## Data Entry Validation on Production Orders {#_589f99a7-ee41-40d0-bc19-cc2a279f454b .section}

A production order type provides settings that will help users minimize errors when they enter data to a production order assigned to this type; that is, the system can validate whether the appropriate quantity of items used as materials is specified in the production order and whether the production order has the appropriate status. You specify these settings in the **Data Entry Settings** section of the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.

## Attributes of Production Orders {#_438cb3b2-7011-4839-ae18-9e5745ecb108 .section}

For a production order type, you can specify attributes for orders of the type, which may be informational or can require data entry. You first define the needed attributes on the [Attributes](../UserGuide/CS_20_50_00.md) \(CS205000\) form \(if they do not already exist\) and then add the attributes to the **Attributes** tab of the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.

The system can capture the values for the attributes from production attributes when a user reports production. These attributes are in addition to the attributes specified for the bill of material used to create the production order and the attributes used in the product configurator.

**Parent topic:**[Configuring Production Order Types](../ImplementationGuide/config_MFG_Production_Order_Types_Mapref.md)

