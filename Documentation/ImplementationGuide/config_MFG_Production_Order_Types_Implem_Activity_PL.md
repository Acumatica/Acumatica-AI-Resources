# Production Order Types: To Create a Planning Production Order Type {#_4c9ab85d-613d-4ae0-9907-df637ea055dd .task}

In this implementation activity, you will learn how to create a production order type for production orders that will be used for planning.

## Story { .section}

Suppose that you are an implementation manager who needs to define production orders that will be used to plan production. You need to create the order type that will generally provide the settings for these production orders, and define it as the default type for the orders.

## Configuration Overview {#_59ac3ed3-9150-44d0-a52d-ed0a06cc65bc .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, the *AMPLAN* numbering sequence
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *12500 - Work in Progress for Manufacturing* and *51500 - COGS - WIP Inventory Variance* GL accounts

## Process Overview { .section}

On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you will create an order type for planning orders. Then on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, you will specify this order type as the default order type for orders used for planning.

## System Preparation { .section}

Before you start creating the order type, do the following:

1.  As a prerequisite to the current activity, complete [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been made in a company with the *U100* dataset preloaded.
2.  Sign in to this company \(in which the prerequisite activity has been performed\) as a system administrator with the *gibbs* username and *123* password.

## Step 1: Creating the Planning Production Order Type { .section}

To create the production order type for planning, do the following:

1.  On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    1.  **Order Type**: `PL`
    2.  **Active**: Selected
    3.  **Function**: *Planning*
    4.  **Description**: `Planning orders`
3.  On the **General** tab, do the following:
    1.  In the **Order Numbering Sequence** box of the **Numbering Settings** section, select *AMPLAN*.
    2.  In the **Account Settings** section, select the following accounts:
        -   **Work in Process Account**: *12500*
        -   **WIP Variance Account**: *51500*
    3.  Make sure that *Estimated* is selected in the **Costing Method** box of the **Order Defaults** section.
    4.  In the **Copy BOM Notes** section, select all the check boxes so that the system copies the notes to production orders of the type.
4.  On the form toolbar, click **Save**.

## Step 2: Specifying the Default Planning Order Type { .section}

Because you have created an order type for planning orders, you will specify this type as the default type for planning in the inventory planning settings. Do the following:

1.  Open the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.
2.  In the **Plan Order Type** box of the **General** section, select *PL*.
3.  On the form toolbar, click **Save**.

You have successfully created the order type for planning and specified it as the default order type in the inventory planning settings.

**Parent topic:**[Configuring Production Order Types](../ImplementationGuide/config_MFG_Production_Order_Types_Mapref.md)

