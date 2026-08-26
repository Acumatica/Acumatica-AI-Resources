# Configuration for the Production of Lot- or Serial-Tracked Items: General Information {#_41b8664f-d60c-484b-a1c7-573ab0f1f45c .concept}

The following sections provide information about the configuration that must be performed before you start recording the production of lot- or serial-tracked items in Acumatica ERP Manufacturing Edition.

## Learning Objectives {#section_bx3_gpp_prb .section}

In this chapter, you will learn how to do the following:

-   Prepare the system to recording the production of lot- or serial-tracked items
-   Create a bill of material for producing lot- or serial-tracked items
-   For a production order type, specify settings that control the assignment of lot or serial numbers for a production order of the type

## Applicable Scenarios {#section_cx3_gpp_prb .section}

You configure the recording of the production of lot- or serial-tracked items in the following cases:

-   When you are initially implementing Acumatica ERP Manufacturing Edition and your organization produces lot- or serial-tracked items, uses lot- or serial-tracked materials in production, or performs both of these processes
-   When your organization already uses Acumatica ERP Manufacturing Edition and recently has started to produce lot- or serial-tracked items, uses lot- or serial-tracked materials in production, or performs both of these processes

## Prerequisites {#section_dfn_vqp_prb .section}

Before you start implementing the recording of the production of lot- or serial-tracked items, you need to make sure that the following tasks have been performed:

-   The system has been prepared for the implementation of manufacturing functionality, as illustrated in [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md).
-   The production of items has been configured, as described in [Production Processing: Implementation Checklist](../UserGuide/MFG_Production_Order_Processing_Implem_Checklist.md).

## System Features to Be Enabled { .section}

Before you configure and process the production of lot- or serial-tracked items in the system, you need to enable the following features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:

-   *Lot and Serial Tracking*: Required for the creation of lot- or serial-tracked items and the processing of documents and transactions with these items
-   *Manufacturing*: Required for the use of the manufacturing functionality

## Configuration Steps {#section_vjz_lh5_prb .section}

To prepare the system for processing the production of lot- or serial-tracked items, you do the following:

1.  On the [Lot/Serial Classes](../UserGuide/IN_20_70_00.md) \(IN207000\) form, you create the lot or serial classes to be used for produced items and for materials that must be tracked in the system by lot or serial numbers. Among other class settings, in the **Assignment Method** box, you should select *When Received* for users to be able to preassign lot or serial numbers to production orders. Also, we recommend that you select the **Auto-Generate Next Number** check box and specify the numbering settings in the table, so that the lot or serial numbers are generated automatically.

    For information about creating lot or serial classes, see [Items with Lot and Serial Numbers: Implementation Activity](../UserGuide/Lot_and_Serial_Numbers_Implem_Activity.md).

2.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, you create the records for stock items to be produced \(*parent* items\) and for materials to be used for producing the items. In the **Lot/Serial Class** box of the **Item Defaults** section on the **General** tab, you specify the lot or serial class to be used for this item.
3.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, you create the bills of material to be used for producing lot- or serial-tracked items.
4.  On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you create the production order type to be used for production orders with lot- or serial-tracked items or specify the needed settings in an existing production order type with the *Regular* function. For details, see the *Default Settings for the Assignment of Lot or Serial Numbers* section below.

## Default Settings for the Assignment of Lot or Serial Numbers { .section}

You need to create a production order type that will facilitate the processing of production orders with lot- or serial-tracked items whose lot or serial numbers need to be assigned before production managers start processing the production orders. The production order type will provide the default settings for the assignment of lot or serial numbers to production orders of this type. On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you need to do the following for this production order type:

1.  In the Summary area, you specify the identifier and description, and select the *Regular* function.
2.  In the **Data Entry** section of the **General** tab, you select the **Allow Preassigning Lot/Serial Numbers** check box. With this check box selected, lot or serial numbers can be specified for items before a production order of the type is released.
3.  In the **Require Parent Lot/Serial Number** box, which becomes available if the **Allow Preassigning Lot/Serial Numbers** check box is selected, you select one of the following options:
    -   *On Issue* if the lot or serial number of a produced item should be assigned to lot- or serial-tracked materials when a material transaction is released on the [Materials](../UserGuide/AM_30_00_00.md) \(AM300000\) form. The system will not release the transaction until a production manager assigns the lot or serial number of the produced item to each lot- or serial-tracked material.

        **Note:** With this option, backflushing of lot- or serial-tracked materials is not supported because this setting requires a lot or serial number to be assigned to the parent item when the materials are issued.

    -   *On Completion* if the lot or serial number of a produced item must be assigned to lot- or serial-tracked materials before produced items are moved into stock through the release of the appropriate transaction when the last operation occurs. On the [Late Assignment](../UserGuide/AM_31_20_00.md) \(AM312000\) form, the production manager assigns the lot or serial numbers of the produced item to its materials after the materials have been issued. The production manager must assign the lot or serial number of the produced item to each material to be able to release the transaction, which is a move transaction on the [Move](../UserGuide/AM_30_20_00.md) \(AM302000\) form or a labor transaction with a positive produced quantity on the [Labor](../UserGuide/AM_30_10_00.md) \(AM301000\) form.
    -   *Never* if the assignment of lot or serial numbers of a parent item to lot- or serial-tracked materials is not needed or if most produced items do not contain lot- or serial-tracked materials. This is the default option.

**Parent topic:**[Implementing Production of Lot- or Serial-Tracked Items](../ImplementationGuide/config_MFG_Lot_Serial_Tracked_Items_Mapref.md)

