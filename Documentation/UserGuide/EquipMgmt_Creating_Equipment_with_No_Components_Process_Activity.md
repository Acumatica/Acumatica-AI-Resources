# Stock Items to Be Tracked Post-Sale: To Create a Stock Item with No Components {#_416e594e-d66c-45e3-95b8-50902c20fb3a .task}

In this activity, you will create a stock item with no components that will be tracked after the item is sold. To do this, you will first create an item class with the **Model Equipment** equipment class specified, which indicates that the stock items of this class will be tracked post-sale. Then you will create a piece of equipment—a stock item of an equipment class designed for model equipment without components—based on the newly created item class.

## Story {#section_nyc_vms_kdc .section}

Suppose that the SweetLife Service and Equipment Sales Center is planning to sell a range of centrifugal juicers, including models with features like automatic pulp ejection, and to track these items after the sale. Acting as an administrative user, you will create the *CENTRIFJUC - Centrifugal Juicers* item class with the **Model Equipment** option button selected. Various centrifugal juicer models will belong to this equipment class, which is intended for items sold without components.

You will then create a specific stock item, *JUICE\_J22C - Multifruit Centrifugal Juicer J22C*, based on this item class. This juicer model, featuring automatic pulp ejection, will be tracked after the sale.

## Process Overview {#section_ssq_44v_3dc .section}

On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, you will create an item class with the **Model Equipment** option button selected. Then on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you will create a piece of equipment with no components based on the created item class.

## System Preparation {#section_z4x_b2b_ldc .section}

Before you begin performing the steps of this activity, on the Acumatica ERP website, sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating an Item Class for Equipment {#section_rbs_blv_3dc .section}

To create an item class, do the following:

1.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Class ID**: `CENTRIFJUC`
    -   **Description**: `Centrifugal Juicers`
2.  On the **General** tab \(**General Settings** section\), specify the following settings:
    -   **Stock Item**: Selected
    -   **Item Type**: *Finished Good*
    -   **Tax Category**: *EXEMPT*
    -   **Posting Class**: *AOL*
    -   **Default Warehouse**: *EQUIPHOUSE*
    -   **Availability Calculation Rule**: *ALLOTHER*
3.  In the **Unit of Measure** section of the tab, specify the following settings:
    -   **Base Unit**: *ITEM*
    -   **Sales Unit**: *ITEM*
    -   **Purchase Unit**: *ITEM*
4.  On the **Service Management** tab, select **Model Equipment** under **Equipment Class**. Stock items of the *CENTRIFJUC* item class will be tracked after they are sold.
5.  On the form toolbar, click **Save**.

## Step 2: Creating a Stock Item with No Components {#section_ors_xms_kdc .section}

To create a stock item with no components that will be tracked after it is sold, do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, add a new record and specify the following settings in the Summary area:
    -   **Inventory ID**: `JUICE_J22C`
    -   **Item Status**: *Active*
    -   **Description**: `Multifruit Centrifugal Juicer J22C`
2.  On the **General** tab \(**Item Defaults** section\), select *CENTRIFJUC* as the **Item Class**.

    The **Type**, **Tax Category**, **Posting Class**, and **Default Warehouse** boxes, as well as the boxes in the **Unit of Measure** section, have been populated with the values from the item class you selected.

3.  On the **Service Management** tab, in the **Manufacturer** box, select *JUICEAPP*.

    Notice that the **Model Equipment** option button on this tab \(under **Equipment Class**\) has been selected because this option button is selected for the item class. Unlike most settings specified for the item class, this setting cannot be overridden.

4.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Stock Items to Be Tracked Post-Sale](../UserGuide/EquipMgmt_Configuration_of_Equipment_to_Be_Tracked_Post_Sale_Mapref.md)

