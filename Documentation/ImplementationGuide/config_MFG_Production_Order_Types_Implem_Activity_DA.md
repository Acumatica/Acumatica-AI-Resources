# Production Order Types: To Create a Disassembly Production Order Type {#_a7f0bd04-ff80-4900-beef-1a3f3363722b .task}

In this implementation activity, you will learn how to create a production order type for disassembly production orders.

## Story { .section}

Suppose that you are an implementation manager who needs to define production orders that will be used for disassembly. You need to create the production order type that will generally provide the settings for these production orders, and define it as the default type for the orders.

## Configuration Overview { .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, the *AMDIS* numbering sequence
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *12500 - Work in Progress* and *51500 - COGS - WIP Inventory Variance* GL accounts

## Process Overview { .section}

On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you will create an order type for disassembly orders. Then on the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form, you will specify this order type as the default type for orders used for disassembly operations.

## System Preparation { .section}

Before you start creating the order type, do the following:

1.  As a prerequisite to the current activity, complete [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been made in a company with the *U100* dataset preloaded.
2.  Sign in to this company \(in which the prerequisite activity has been performed\) as a system administrator with the *gibbs* username and *123* password.

## Step 1: Creating the Disassembly Production Order Type { .section}

To create the production order type for disassembly, do the following:

1.  On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    1.  **Order Type**: `DA`
    2.  **Active**: Selected
    3.  **Function**: *Disassemble*
    4.  **Description**: `Disassembly orders`
3.  On the **General** tab, do the following:
    1.  In the **Order Numbering Sequence** box of the **Numbering Settings** section, select *AMDIS*.
    2.  In the **Account Settings** section, select the following accounts:
        -   **Work in Process Account**: *12500*
        -   **WIP Variance Account**: *51500*
    3.  Notice that *Actual* is selected in the **Costing Method** box of the **Order Defaults** section and that this setting is non-editable because only the *Actual* costing method can be applied to disassembly operations.
    4.  In the **Copy BOM Notes** section, select all the check boxes so that the system copies the notes to production orders of the type.
    5.  In the **Data Entry Settings** section, specify the following settings:
        -   **Over Issue Material**: *Warn*
        -   **Include Unreleased Batch Qty.**: Selected
        -   **Issue Material Not on Order**: *Warn*
        -   **Move on Completed Operations**: *Warn*
        -   **Excess Qty. for Operations**: *Warn*
        -   **Excess Qty. for Orders**: *Warn*
        -   **Default Operation Move Qty.**: Selected
4.  On the form toolbar, click **Save**.

## Step 2: Specifying the Default Production Order Type for Disassembly { .section}

Because you have created an order type for disassembly production orders, you will specify this type as the default type for disassembly in the production settings. Do the following:

1.  Open the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form.
2.  In the **Default Disassemble Order Type** box of the **Data Entry Settings** section, select *DA*.
3.  On the form toolbar, click **Save**.

You have successfully created the production order type for disassembly and specified it as the default order type for disassembly in the production settings.

**Parent topic:**[Configuring Production Order Types](../ImplementationGuide/config_MFG_Production_Order_Types_Mapref.md)

