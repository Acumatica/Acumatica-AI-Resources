# Outside Processing: Implementation Activity {#_9eab45fa-ec47-419d-bc7e-fc7d3ca96e4c .task}

In this implementation activity, you will learn how to implement production processes that include outside operations.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has started to receive many customer orders for assembled juicers. The current capacity of work centers has been reached, so the production manager has decided to outsource the assembly of some of the juicers to an outside vendor, Custom Assembly Services. The materials required for juicer assembly will still be stored at the SweetLife Fruits &amp; Jams warehouse and will be shipped to the vendor. The materials are the same as for in-house assembly. The vendor will use their own tools and charge SweetLife Fruits &amp; Jams for their service in the amount of $50 per juicer. The assembled juicers will be received to the warehouse and then inspected by a warehouse worker. Suppose that the warehouse worker inspects four juicers per hour and no specific setup or tools are required for this operation.

Acting as the implementation manager, you need to configure outside processing for juicer assembly in the system. That is, you need to create a work center for outside processing, a work center for inspection, and a bill of material to be used for the outside assembly of juicers.

## Configuration Overview { .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* warehouse
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CFJFRUIT*, *PULPCONT1L*, *JUICECUP05L*, *MRBASE*, *FNSIEVE*, and *GRDISC01* stock items
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *CSEMBLY* vendor \(which provides the subcontractor services for juicer assembly\)
-   On the [Work Calendar](CS_20_90_00.md) \(CS209000\) form, the *MAIN* work calendar, which is used for standard working hours
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *MFGSUBCON* non-stock item

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, review the default settings related to outside processing.
2.  On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, create a work center for outside processing.
3.  On the same form, create a work center for inspecting the juicers assembled by the subcontractor.
4.  On the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, create a bill of material for producing juicers that will be assembled by the subcontractor.

## System Preparation { .section}

Before you start performing the activity, do the following:

1.  As prerequisites to the current activity, complete the following activities in the specified order:
    1.  [System Preparation for Manufacturing Implementation: Implementation Activity](../ImplementationGuide/config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been made in a company with the *U100* dataset preloaded
    2.  [Configuring Production Cost Drivers: Implementation Activity](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Implem_Activity.md) so that the needed cost drivers have been created in a company with the *U100* dataset preloaded
    3.  [Configuring Work Centers: Implementation Activity](../ImplementationGuide/config_MFG_Work_Centers_Implem_Activity.md) so that the shift for standard working hours has been created
2.  Sign in to the company in which the prerequisite activities have been performed. You should sign in as a system administrator by using the *gibbs* username and *123* password.

## Step 1: Reviewing Default Settings for Outside Processing { .section}

In a production system, you would need to specify the settings related to outside processing before you start processing production orders that include outside operations. These settings have been predefined in the *U100* dataset for simplicity. In this step, you will review them settings. On the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, do the following:

1.  Notice that *AMVSHIP* is specified in the **Vendor Shipment Numbering Sequence** box of the **Numbering Settings** section.
2.  Notice that the following settings have been specified in the **Vendor Shipment Settings** section:
    -   **Hold Shipments on Entry**: Selected
    -   **Validate Shipment Total on Confirmation**: Cleared

## Step 2: Creating a Work Center for Outside Processing { .section}

To create a work center for outside processing, do the following:

1.  On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following settings:
    -   **Work Center**: `OUTPROC`
    -   **Active**: Selected
    -   **Description**: `Work center for outside assembly of juicers`
    -   **Warehouse**: *WORKHOUSE*
3.  On the **General** tab, specify the following settings:
    -   **Standard Cost**: `0`
    -   **Basis for Capacity**: *Crew Size*
    -   **Allow Clock Entry for Multiple Production Orders**: Cleared
    -   **Scrap Action Default:** *No Action*
    -   **Backflush Materials**: Selected
    -   **Backflush Labor**: Selected
    -   **Control Point**: Cleared
    -   **Outside Process**: Selected
4.  On the **Shifts** tab, do the following:
    1.  Notice that the row for the *0001* shift has been added. \(The row for the first shift is always added automatically because the work center must have at least one shift.\)
    2.  In this row, specify the following:
        -   **Crew Size**: `0`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *MAIN*
        -   **Labor Code**: *DIRLAB* \(specified automatically\)

            You created this labor code in [Configuring Production Cost Drivers: Implementation Activity](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    3.  Notice that the **Diff Type** column contains *Amount* and the **Shift Diff** column contains *0.0000*. These values have been copied from the shift settings on the [Shifts](AM_20_50_00.md) \(AM205000\) form.
5.  On the form toolbar, click **Save**.

## Step 3: Creating a Work Center for Inspection { .section}

To create a work center for inspection of juicers assembled by the outsource vendor, do the following on the [Work Centers](AM_20_70_00.md) \(AM207000\) form:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following settings:
    -   **Work Center**: `WCR100`
    -   **Active**: Selected
    -   **Description**: `Work center for inspection`
    -   **Warehouse**: *WORKHOUSE*
3.  On the **General** tab, specify the following settings:
    -   **Standard Cost**: `10`
    -   **Basis for Capacity**: *Crew Size*
    -   **Allow Clock Entry for Multiple Production Orders**: Cleared
    -   **Scrap Action Default:** *No Action*
    -   **Backflush Materials**: Cleared
    -   **Backflush Labor**: Selected
    -   **Control Point**: Cleared
    -   **Outside Process**: Cleared
4.  On the **Shifts** tab, do the following:
    1.  In the only row, specify the following:
        -   **Crew Size**: `1`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *MAIN*
        -   **Labor Code**: *DIRLAB*
    2.  Notice that the **Diff Type** column contains *Amount* and the **Shift Diff** column contains *0.0000*. These values have been copied from the shift settings on the [Shifts](AM_20_50_00.md) \(AM205000\) form.
5.  On the form toolbar, click **Save**.

## Step 4: Creating a Bill of Material with the Outside Processing Operation { .section}

To create a bill of material that includes an outside processing operation, do the following:

1.  On the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Revision**: `A`
    -   **Hold**: Selected
    -   **Description**: `A bill of material for outside assembly of configurable juicers`
    -   **Inventory ID**: *CFJFRUIT*
    -   **Warehouse**: *WORKHOUSE*
    -   **Start Date**: 1/1/2025
    -   **End Date**: Empty
3.  On the form toolbar, click **Save**.
4.  Add an operation for the outside assembly of juicers as follows:
    1.  On the toolbar of the Operations table, click **Add Row**.
    2.  In the row, specify the following settings:
        -   **Operation ID**: `010`
        -   **Work Center**: *OUTPROC*
        -   **Setup Time**: `00:00`
        -   **Run Units**: `1`
        -   **Run Time**: `00:00`
        -   **Backflush Labor**: Selected
    3.  On the **Materials** tab, add rows for the items listed in the following table, specifying the listed settings for each.

        |Inventory ID|Qty. Required|UOM|Unit Cost|Material Type|Backflush Materials|Subcontract Source|
        |------------|-------------|---|---------|-------------|-------------------|------------------|
        |*MFGSUBCON*|`50`|*EA*|`1`|*Subcontract*|Selected|*Purchase*|
        |*PULPCONT1L*|`1`|*EA*|*17.59*|*Subcontract*|Cleared|*Ship to Vendor*|
        |*JUICECUP05L*|`1`|*EA*|*16.79*|*Subcontract*|Cleared|*Ship to Vendor*|
        |*MRBASE*|`1`|*EA*|*325.89*|*Subcontract*|Cleared|*Ship to Vendor*|
        |*FNSIEVE*|`1`|*EA*|*60.95*|*Subcontract*|Cleared|*Ship to Vendor*|
        |*GRDISC01*|`1`|*EA*|*42.95*|*Subcontract*|Cleared|*Ship to Vendor*|

        **Tip:** Alternatively, you can use the *Purchase and Move* subcontract source for the *MFGSUBCON* item. In this case, you will not need to create and release a move transaction in the process activity.

    4.  Go to the **Outside Process** tab, and notice that the **Outside Process** check box is selected. \(The system copied its state from the work center settings.\)
    5.  In the **Vendor** box, select *CSEMBLY*.
5.  Add an operation for inspection as follows:
    1.  On the toolbar of the Operations table, click **Add Row**.
    2.  In the row, specify the following settings:
        -   **Operation ID**: `020`
        -   **Work Center**: *WCR100*
        -   **Setup Time**: `00:00`
        -   **Run Units**: `4`
        -   **Run Time**: `01:00`
        -   **Backflush Labor**: Selected
6.  On the form toolbar, click **Save**.
7.  In the Summary area, clear the **Hold** check box. The status of the bill of material changes to *Active*.
8.  On the form toolbar, click **Save**.

You have successfully created the bill of material that production managers will use to create production orders for juicers to be assembled by the subcontractor.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

