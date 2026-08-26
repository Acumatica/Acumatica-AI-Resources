# Production Order Types: Implementation Checklist {#_15a3dda4-ce9b-44db-865b-4d7521b1d765 .concept}

The following sections provide details you can use to ensure that the system is configured properly for creating production order types, and to understand \(and change, if needed\) the minimum required settings of a production order type.

## The Needed Feature Enablement { .section}

You should make sure the *Manufacturing* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## System Configuration { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create production order types:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the Work in Process and WIP Variance GL accounts have been created.
-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, at least one numbering sequence for production orders has been created.

    **Attention:** We recommend that you create a separate numbering sequence for planning orders on the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form to distinguish them from regular production orders.

-   On the [BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\) form, the system settings for bills of material have been specified.
-   On the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, the numbering sequences for WIP adjustments, move, material, labor, and cost transactions have been specified.

For more information on configuring the system before you start to create order types, see [System Preparation for Manufacturing Implementation: General Information](config_MFG_General_Settings_GeneralInfo.md).

## Minimum Required Settings { .section}

For each production order type that you are going to use, you should specify the following minimum settings to configure and activate the order type on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.

|Location on the Form|Settings to Specify|
|--------------------|-------------------|
|Summary area|-   The **Active** check box, indicating that the production order type is available for use, is selected.
-   The **Function**, which determines the workflow of production orders of this type, is selected.

|
|**General** tab|-   The **Order Numbering Sequence**, which is the sequence to be used to assign order reference numbers, is specified.
-   The **Work in Process Account**, which is the account for posting item costs until the production order is closed, is specified.
-   The **WIP Variance Account**, which is the account for posting a difference between the cost of the produced item recorded to the Work in Progress account and the final cost of the produced item in the completed production order, is specified.
-   The **Costing Method**, which is the method for calculating item costs produced by using the production orders of the type, is selected.

|

## Recommended Settings { .section}

We recommend that you specify the following on the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form when you have created production order types for regular and disassembly orders:

|Location on the Form|Settings to Specify|
|--------------------|-------------------|
|**Data Entry Settings** section of the **General** tab|-   In the **Default Order Type** box, the production order type that will be used by the system by default for regular production orders is specified.
-   In the **Default Disassemble Order Type** box, the production order type that will be used by the system by default for disassembly orders is specified.

|

**Parent topic:**[Configuring Production Order Types](../ImplementationGuide/config_MFG_Production_Order_Types_Mapref.md)

