# Configuration of Production with Backflushing: Implementation Activity {#_84922725-2ece-4fa4-bbd0-71a508e5a4a7 .task}

In this implementation activity, you will learn how to implement production processes with the backflushing of materials and labor.

## Story { .section}

Suppose that the production department of SweetLife Fruits &amp; Jams started to pack the assembled juicers before shipping them to customers. So the production process will include the assembly operation and the packing operation. Each operation is performed in a specific work center. In the work center where packing is performed, workers put each assembled juicer in a box, fill in the box with packing peanuts, and seal the box with packing tape. For packing a juicer, the following materials are required: one packing box, approximately 3 meters of packing tape, and approximately 2 liters of packing peanuts. The exact quantity of the peanuts and the tape is not known until the workers finish packing, so these materials should be backflushed, as should the box so that production managers do not release any materials for the packing operation manually. Also, the workers of this work center pack not only juicers but other items, so the time they spend on packing juicers should also be backflushed.

Acting as an implementation manager, you need to implement the production of juicers with material and labor backflushing in the system—that is, create a work center dedicated to the packing operation and a bill of material to be used for the assembly and packing of the juicers.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* warehouse has been defined, and its locations include *MGI* and *MTL*.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the *CFJFRUIT*, *PULPCONT1L*, *JUICECUP05L*, *MRBASE*, *FNSIEVE*, *GRDISC01*, *PACKTAPE*, *PPEANUTS*, and *PACKBOX* stock items have been defined.
-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, the *MAIN* work calendar has been defined, which is used for standard working hours.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, create a work center for packing.
2.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, create a bill of material for the assembly and packing of the juicers.

## System Preparation { .section}

Before you start performing the activity, do the following:

1.  As prerequisites to the current activity, complete the following activities in the specified order:
    1.  [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been specified in a company with the *U100* dataset preloaded
    2.  [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md) so that the work center for the assembly operation has been created in the same company with the *U100* dataset preloaded
2.  Sign in to this company \(in which the prerequisite activities have been performed\) as a system administrator with the *gibbs* username and *123* password.

## Step 1: Creating a Work Center { .section}

To create a work center where the packing operation will be performed, do the following:

1.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    -   **Work Center**: `WCR200`
    -   **Active**: Selected
    -   **Description**: `Work center for packing`
    -   **Warehouse**: *WORKHOUSE*
3.  On the **General** tab, specify the following settings:
    -   **Standard Cost**: *12*
    -   **Basis for Capacity**: *Crew Size*
    -   **Allow Clock Entry for Multiple Production Orders**: Cleared
    -   **Scrap Action Default:** *No Action*
    -   **Backflush Materials**: Selected
    -   **Backflush Labor**: Selected
    -   **Control Point**: Cleared
    -   **Outside Process**: Cleared
4.  On the **Shifts** tab, do the following:
    1.  Notice that the row for the *0001* shift has been added. \(The row for the first shift is always added automatically because a work center must have at least one shift.\)
    2.  In this row, specify the following settings:
        -   **Crew Size**: `1`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *MAIN*
        -   **Labor Code**: *DIRLAB*

            You created this labor code in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md), \(which is a prerequisite activity of the [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md) prerequisite activity, which you have performed as part of the *System Preparation*\)

        -   Notice that the **Diff Type** column contains *Amount* and the **Shift Diff** column contains *0.0000*. These values have been copied from the shift settings on the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form.
5.  On the form toolbar, click **Save**.

## Step 2: Creating a Bill of Material { .section}

To create a bill of material that includes the packing operation, do the following:

1.  On the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Revision**: `A`
    -   **Hold**: Selected
    -   **Description**: `A bill of material for the assembly and packing of juicers`
    -   **Inventory ID**: *CFJFRUITBF*
    -   **Warehouse**: *WORKHOUSE*
    -   **Start Date**: 1/1/2025
    -   **End Date**: Empty
3.  On the form toolbar, click **Save**.
4.  Add an assembly operation as follows:
    1.  On the toolbar of the Operations table, click **Add Row**.
    2.  In the row, specify the following settings:
        -   **Operation ID**: `010`
        -   **Work Center**: *WCR10*

            You created this work center for the assembly of juicers in [Configuring Work Centers: Implementation Activity](config_MFG_Work_Centers_Implem_Activity.md) \(which was a prerequisite to the current activity\).

        -   **Setup Time**: `00:30`
        -   **Run Units**: `3`
        -   **Run Time**: `01:00`
        -   **Backflush Labor**: Cleared
    3.  On the **Materials** tab, add rows for the items listed in the following table, specifying the listed settings for each.

        |Inventory ID|Qty. Required|
        |------------|-------------|
        |*PULPCONT1L*|`1`|
        |*JUICECUP05L*|`1`|
        |*MRBASE*|`1`|
        |*FNSIEVE*|`1`|
        |*GRDISC01*|`1`|

    4.  On the **Tools** tab, add rows for the tools listed in the following table, specifying the listed settings for each.

        You created these tools in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

        |Tool ID|Qty. Required|Unit Cost|
        |-------|-------------|---------|
        |*HAMMER*|`1`|0.02|
        |*SCREWDRIVER*|`1`|0.20|

5.  On the form toolbar, click **Save**.
6.  Add the packing operation as follows:
    1.  On the toolbar of the Operations table, click **Add Row**.
    2.  In the row, specify the following settings:
        -   **Operation ID**: `020`
        -   **Work Center**: *WCR200*
        -   **Setup Time**: `00:00`
        -   **Run Units**: `3`
        -   **Run Time**: `01:00`
        -   **Backflush Labor**: Selected
    3.  On the **Materials** tab, add rows for the items listed in the following table, specifying the listed settings for each.

        |Inventory ID|Qty. Required|UOM|Backflush Materials|
        |------------|-------------|---|-------------------|
        |*PACKTAPE*|`3`|*METER*|Selected|
        |*PPEANUTS*|`2`|*LITER*|Selected|
        |*PACKBOX*|`1`|*EA*|Selected|

7.  On the form toolbar, click **Save**.
8.  In the Summary area, clear the **Hold** check box. The status changes to *Active*.
9.  On the form toolbar, click **Save**.

You have successfully created the bill of material that production managers will use to create production orders for juicers to be assembled and packed.

**Parent topic:**[Implementing Item Production with Backflushing](../ImplementationGuide/config_MFG_Backflushing_Mapref.md)

