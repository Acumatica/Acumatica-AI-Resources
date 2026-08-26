# Inventory Planning Configuration: To Implement MRP {#_7a71bef5-764e-4eab-821c-eb125556ae79 .task}

In this implementation activity, you will learn how to specify the system settings related to material requirements planning \(MRP\)—that is, inventory planning that includes production order planning.

## Story { .section}

Suppose that you are an implementation manager who needs to prepare the system for the MRP type of inventory planning.

Based on the business processes of SweetLife Fruits &amp; Jams, exceptions must be generated for supply orders dated seven days before the requested date of a demand order; they must also be generated for supply orders dated five days after the requested date. The demand time fence and MPS time fence should be 30 days, which is the same as the grace period for supply orders. The *Reorder Point* stocking method must be used for replenishing materials. During planning, the system must consider the following orders when they are on hold: sales orders, production orders, and purchase orders. Also, the system should generate lead times dynamically for planned orders.

You need to create buckets \(that is, time periods\) for inventory planning to aggregate demand and supply data. You will have 13 weekly periods, 1 monthly period, and 1 yearly past due period.

You need to make sure that the warehouse involved in manufacturing has been defined properly for inventory planning.

Also, for stock items that are used as materials, you need to specify replenishment settings, such as the safety stock quantity, the reorder point, the minimum order quantity, and the maximum order quantity.

## Configuration Overview {#_59ac3ed3-9150-44d0-a52d-ed0a06cc65bc .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, the *AMMPS* and *AMFCST* numbering sequences
-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, the *MAIN* calendar
-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* warehouse
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the *JUICECUP1L* stock item

## Process Overview { .section}

In this activity, to specify the settings related to MRP, you will do the following:

1.  On the [MPS Type](../UserGuide/AM_20_30_00.md) \(AM203000\) form, create a master production schedule \(MPS\) type to be used in the inventory planning settings.
2.  On the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form, specify the system settings that affect the inventory planning process.
3.  On the [Inventory Planning Buckets](../UserGuide/AM_20_12_00.md) \(AM201200\) form, create the needed buckets for inventory planning.
4.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, review the settings of the *WORKHOUSE* warehouse related to inventory planning.
5.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, specify the settings of the *JUICECUP1L* stock item that will be used by the system during inventory planning.

## System Preparation { .section}

Before you start specifying MRP settings, do the following:

1.  As prerequisites to the current activity, perform the following activities in the specified order:
    1.  [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) to specify the needed settings in a company with the *U100* dataset preloaded
    2.  [Production Order Types: To Create a Planning Production Order Type](config_MFG_Production_Order_Types_Implem_Activity_PL.md) to create the order type for planning orders in a company with the *U100* dataset preloaded
2.  Sign in to the company in which the prerequisite activities have been performed as a system administrator by using the *gibbs* username and *123* password.
3.  Make sure that the *Material Requirements Planning* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Step 1: Creating an MPS Type { .section}

To create an MPS type, do the following:

1.  Open the [MPS Type](../UserGuide/AM_20_30_00.md) \(AM203000\) form.
2.  On the form toolbar, click **Add Row**.
3.  In the new row, specify the following settings:
    -   **Type ID**: `MPS`
    -   **Description**: `Master production schedule`
    -   **Numbering Sequence**: *AMMPS*
    -   **Dependent**: Selected
4.  On the form toolbar, click **Save**.

## Step 2: Specifying General Inventory Planning Settings { .section}

To specify the system settings that affect inventory planning, do the following:

1.  Open the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.
2.  In the **Exceptions** section, specify the following settings:
    -   **Days Before**: `7`
    -   **Days After**: `3`
3.  In the **Forecast** section, specify the following settings:
    -   **Demand Time Fence**: `30`
    -   **Numbering Sequence**: *AMFCST*
4.  In the **MPS** section, specify the following settings:
    -   **MPS Time Fence**: `30`
    -   **Default Type**: *MPS*
5.  In the **General** section, specify the following settings:
    -   **Planning Horizon**: `0` \(inserted by default\)
    -   **Plan Order Type**: *PL*
    -   **Grace Period**: `30` \(inserted by default\)
    -   **Stocking Method**: *Reorder Point*
    -   **Purchase Calendar ID**: *MAIN*
    -   **Include On-Hold Sales Orders**: Selected
    -   **Include On-Hold Purchase Orders**: Selected
    -   **Include On-Hold Production Orders**: Selected
    -   **Use Fixed Manufacturing Times**: Cleared
    -   **Include Expired Blanket Sales Orders**: Cleared
6.  On the form toolbar, click **Save**.

## Step 3: Creating the Inventory Planning Buckets { .section}

To create the needed inventory planning buckets, do the following:

1.  Open the [Inventory Planning Buckets](../UserGuide/AM_20_12_00.md) \(AM201200\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Bucket ID**: `MAIN`
    -   **Active**: Selected
    -   **Description**: `Main bucket`
4.  In the Buckets table, add a bucket for a yearly past due period as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the new row, specify the following settings:
        -   **Bucket**: `-1`
        -   **Value**: `1`
        -   **Interval**: *Year*
5.  Add 13 buckets for weeks as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the new row, specify the following settings:
        -   **Bucket**: `1`
        -   **Value**: `1`
        -   **Interval**: *Week*
    3.  Repeat the previous instruction 12 times, incrementing the **Bucket** value by 1 in each row \(that is, type 2 in the next row, type 3 in the row after that, and continue this pattern through 13 in the last row\).
6.  Add a bucket for a month as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the new row, specify the following settings:
        -   **Bucket**: `14`
        -   **Value**: `1`
        -   **Interval**: *Month*
7.  On the form toolbar, click **Save**.

## Step 4: Reviewing the Inventory Planning Settings for a Warehouse { .section}

You will review the inventory planning-related settings that have been predefined for the *WORKHOUSE* warehouse in the *U100* dataset. Do the following:

1.  On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, open the *WORKHOUSE* record.
2.  Go to the **Locations** tab, and notice that the check boxes in the **Inventory Planning** column are selected for the *MAIN*, *MGI*, and *MTL* rows in the table. This means that these locations are involved in the inventory planning process.
3.  Notice that all check boxes are selected in the **Inventory Planning Settings** section of the **Inventory Planning** tab. This means that all documents and entities will be considered by the system during the inventory planning process.

## Step 5: Specifying Inventory Planning Settings for Stock Items { .section}

You will specify the inventory planning settings for the *JUICECUP1L* stock item, which has been predefined in the *U100* dataset. In a production environment, you would need to specify similar settings for all stock items that will be used for inventory planning. Do the following:

1.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, select the *JUICECUP1L* item.
2.  On the **General** tab, in the **Item Defaults** section, select *MRP* in the **Planning Method** box.
3.  On the **Inventory Planning** tab, specify the following:
    -   **Safety Stock**: `3`
    -   **Reorder Point**: `5`
4.  On the **Vendors** tab, do the following in the row for the *JALOOZA* vendor:
    -   Verify that the value in the **Lead Time \(Days\)** column is *7*.
    -   In the **Min. Order Qty.** column, specify `2`.
    -   In the **Max. Order Qty.** column, specify `10`.
5.  On the form toolbar, click **Save**.

You have gained experience with specifying the system settings that are related to inventory planning.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

