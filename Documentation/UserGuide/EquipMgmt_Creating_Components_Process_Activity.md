# Stock Items to Be Tracked Post-Sale: To Create Components {#_a2622301-f7d5-406d-92ff-fecef3eb49d5 .task}

In this activity, you will create components for a stock item. To do this, you will first create an item class that is intended to group and provide similar settings to components \(that is, stock items of a component equipment class\). Then you will create stock items based on this item class. You will also specify warranty settings for these components.

## Story {#section_cnz_jns_kdc .section}

Suppose that the SweetLife Service and Equipment Sales Center is planning to sell cold press juicers with components. Acting as an administrative user, you will create the *CPRESSCOMP - Cold press juicer components* item class designed for components, which will group the components of cold press juicers. You will then create stock items based on this item class to represent the individual components for the cold press juicers.

## Process Overview {#section_ssq_44v_3dc .section}

On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, you will create an item class with the **Component** option button selected on the **Service Management** tab. Then on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you will create stock items based on the newly created item class.

## System Preparation {#section_z4x_b2b_ldc .section}

Before you begin performing the steps of this activity, on the Acumatica ERP website, sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating an Item Class for Components {#section_otl_f5v_3dc .section}

To create an item class for components, do the following:

1.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, add a new record and specify the following settings in the Summary area:
    -   **Class ID**: `CPRESSCOMP`
    -   **Description**: `Cold press juicer components`
2.  On the **General** tab \(**General Settings** section\), specify the following settings:
    -   **Stock Item**: Selected
    -   **Item Type**: *Finished Good*
    -   **Tax Category**: *EXEMPT*
    -   **Posting Class**: *AOL*
    -   **Default Warehouse**: *EQUIPHOUSE*
    -   **Availability Calculation Rule**: *ALLOTHER*
3.  In the **Unit of Measure** section, specify the following settings:
    -   **Base Unit**: *ITEM*
    -   **Sales Unit**: *ITEM*
    -   **Purchase Unit**: *ITEM*
4.  On the **Service Management** tab, select **Component** under **Equipment Class**.
5.  On the form toolbar, click **Save**.

Now you can create the stock items \(that is, the individual components\) in the item class that you have created.

## Step 2: Creating Components {#section_nz5_lns_kdc .section}

In this step, you will create the components listed in the table below.

|Description|Inventory ID|Company Warranty|Vendor Warranty|
|-----------|------------|----------------|---------------|
|*Juice Cup H30J*|*CUPH300J*|6 months|3 months|
|*Hopper for cold press juicers \(plastic\)*|*HOPPERH3*|3 months|N/A|
|*Hopper H30J metallic*|*30HOPPERJK*|3 months|N/A|
|*Plunger H30J*|*PLUNGERH30J*|6 months|12 months|
|*Auger H30J*|*AUGERH30J*|12 months|12 months|
|*Drum H30J*|*DRUMH30J*|12 months|6 months|

To create the components, do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, add a new record and specify the following settings in the Summary area:
    -   **Inventory ID**: `CUPH300J`
    -   **Item Status**: *Active*
    -   **Description**: `Juice Cup H30J`
2.  On the **General** tab, in the **Item Class** box \(**Item Defaults** section\), select *CPRESSCOMP*.

    The **Type**, **Tax Category**, **Posting Class**, and **Default Warehouse** boxes, as well as those in the **Unit of Measure** section, have been populated with the values from the selected item class.

3.  On the **Price/Cost** tab, set the **Default Price** to `50`.
4.  On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Equipment General Warranty** section, set **Company Warranty** to `6` *Months* and **Vendor Warranty** to `3` *Months*.

        Notice that the **Component** option button \(under **Equipment Class**\) has been selected based on the settings of the item class you selected, and you cannot change this setting.

5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Add New Record** to create a new component and specify the following settings:
    -   **Inventory ID**: `HOPPERH3`
    -   **Item Status**: *Active*
    -   **Description**: `Hopper for cold press juicers (plastic)`
7.  On the **General** tab, select *CPRESSCOMP* as the **Item Class**.
8.  On the **Price/Cost** tab, set the **Default Price** to `40`.
9.  On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Company Warranty** box, specify `3` *Months*, and in the **Vendor Warranty** box, leave *0*.

        Notice that the **Component** option button is again selected and unavailable.

10. On the form toolbar, click **Save**.
11. On the form toolbar, click **Add New Record** to create a new component and specify the following settings in the Summary area:
    -   **Inventory ID**: `30HOPPERJK`
    -   **Item Status**: *Active*
    -   **Description**: `Hopper H30J metallic`
12. On the **General** tab, select *CPRESSCOMP* as the **Item Class**.
13. On the **Price/Cost** tab, set the **Default Price** to `50`.
14. On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Company Warranty** box, specify `3` *Months*, and in the **Vendor Warranty** box, leave *0*.

        Notice that the **Component** option button is again selected and unavailable.

15. On the form toolbar, click **Save**.
16. On the form toolbar, click **Add New Record** to create a new component and specify the following settings:
    -   **Inventory ID**: `PLUNGERH30J`
    -   **Item Status**: *Active*
    -   **Description**: `Plunger H30J`
17. On the **General** tab, select *CPRESSCOMP* as the **Item Class**.
18. On the **Price/Cost** tab, set the **Default Price** to `25`.
19. On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Company Warranty** box, specify `6` *Months*, and in the **Vendor Warranty** box, specify `12` *Months*.

        Notice that the **Component** option button is again selected and unavailable.

20. On the form toolbar, click **Save**.
21. On the form toolbar, click **Add New Record** to create a new component, and specify the following settings:
    -   **Inventory ID**: `AUGERH30J`
    -   **Item Status**: *Active*
    -   **Description**: `Auger H30J`
22. On the **General** tab, select *CPRESSCOMP* as the **Item Class**.
23. On the **Price/Cost** tab, set the **Default Price** to `70`.
24. On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Company Warranty** box, specify `12` *Months*, and in the **Vendor Warranty** box, specify `12` *Months*.

        Notice that the **Component** option button is again selected and unavailable.

25. On the form toolbar, click **Save**.
26. On the form toolbar, click **Add New Record** to create a new component and specify the following settings in the Summary area:
    -   **Inventory ID**: `DRUMH30J`
    -   **Item Status**: *Active*
    -   **Description**: `Drum H30J`
27. On the **General** tab, select *CPRESSCOMP* as the **Item Class**.
28. On the **Price/Cost** tab, set the **Default Price** to `100`.
29. On the **Service Management** tab, do the following:
    -   In the **Manufacturer** box, select *JUICEAPP*.
    -   In the **Company Warranty** box, specify `12` *Months*, and in the **Vendor Warranty** box, specify `6` *Months*.

        Notice that the Component option button is again selected and unavailable.

30. On the form toolbar, click **Save**.

Now you can create a piece of equipment with components, but first, you need to create the appropriate item class for it.

**Parent topic:**[Configuring Stock Items to Be Tracked Post-Sale](../UserGuide/EquipMgmt_Configuration_of_Equipment_to_Be_Tracked_Post_Sale_Mapref.md)

