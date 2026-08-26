# Capable to Promise: Implementation Activity {#_268e5b86-6e52-489c-ac12-33251a3a42ee .task}

In the following implementation activity, you will learn how to configure the system so that you can use the capable-to-promise \(CTP\) functionality.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has decided to use the capable-to-promise functionality so that sales managers can provide customers with accurate dates when ordered items will be shipped. You will act in the role of the implementation manager who needs to prepare the system for the use of the CTP functionality.

You need to create a separate order type for CTP-related planning orders and specify this order type in the production settings. You also need to set up the configurable citrus juicer stock item so that the system can include the stock item in calculation of CTP dates.

## Configuration Overview {#_59ac3ed3-9150-44d0-a52d-ed0a06cc65bc .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, the *AMCTP* numbering sequence
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CFJCITRUS* stock item

## Process Overview { .section}

In this activity, to specify the settings and create the entity related to the capable-to-promise functionality, you will do the following:

1.  On the [Production Order Types](AM_20_11_00.md) \(AM201100\) form, create a production order type to be used by the CTP functionality for creating planning orders.
2.  On the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, specify the created production order type as the default order type for CTP-related planning orders.
3.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, set up the configurable citrus juicer stock item and include the item in calculation of CTP dates.

## System Preparation { .section}

Before you start preparing the system to process CTP, do the following:

1.  As a prerequisite to the current activity, complete [Bills of Material: Implementation Activity](BOM_Implem_Activity.md) and the all prerequisite activities to configure manufacturing functionality in the company with the *U100* dataset preloaded.
2.  As a prerequisite to the current activity, complete [Production Order Types: To Create a Regular Production Order Type](../ImplementationGuide/config_MFG_Production_Order_Types_Implem_Activity_RO.md) so that the system can use this production order type for creating regular production orders.
3.  Sign in to the company in which the prerequisite activities have been performed as a system administrator by using the *gibbs* username and *123* password.
4.  Make sure that the *Advanced Planning and Scheduling* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Creating a Production Order Type Dedicated to CTP { .section}

To create a production order type that the system will use for new CTP-related planning orders, do the following:

1.  Open the [Production Order Types](AM_20_11_00.md) \(AM201100\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    1.  **Order Type**: `CP`
    2.  **Active**: Selected
    3.  **Description**: `CTP planning orders`
    4.  **Function**: *Planning*
4.  On the **General** tab, do the following:
    1.  In the **Order Numbering Sequence** box of the **Numbering Settings** section, select *AMCTP*.
    2.  In the **Account Settings** section, select the following accounts:
        -   **Work in Process Account**: *12400*
        -   **WIP Variance Account**: *51500*
    3.  In the **Order Defaults** section, do the following:
        1.  In the **Costing Method** box, select *Estimated*.
        2.  Select the **Exclude from MRP** check box.
    4.  In the **Copy BOM Notes** section, select all the check boxes so that the system copies the notes to production orders of the type.
5.  On the form toolbar, click **Save**.

## Step 2: Specifying Production Preferences { .section}

Now that you have created an order type for planning orders to be created during the calculation of projected dates, you will specify this type as the default type for these orders in the production settings. Do the following:

1.  Open the [Production Preferences](AM_10_20_00.md) \(AM102000\) form.
2.  In the **Capable to Promise Order Type** box \(**Data Entry Settings** section\), select *CP*.
3.  On the form toolbar, click **Save**.

## Step 3: Specifying Settings of Stock Items { .section}

To indicate that projected dates can be calculated for the configurable citrus juicer stock item, do the following:

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
2.  In the **Inventory ID** box, select *CFJCITRUS*.
3.  On the **Manufacturing** tab \(**General** section\), select the **CTP Item** check box.
4.  On the form toolbar, click **Save**.

In this activity, you have created the production order type to be used by the CTP process, specified this type in production preferences, and marked the configurable citrus juicer stock item to be used by the CTP process.

**Parent topic:**[Processing Capable to Promise](../UserGuide/MFG_CTP_Mapref.md)

