# Services: To Create a Service with a Fixed Price {#_5693a3ca-525f-46dc-a3fe-454c9a7631a2 .task}

In this implementation activity, you will learn how to create a service with a fixed price, regardless of the time spent providing it. You will still specify the typical duration of the service to help the service manager plan workloads in the future.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose the SweetLife Service and Equipment Sales Center has hired a chef who previously worked at top fine-dining restaurants. The company has brought him on as a full-time consultant to develop custom recipes for each business. As a result, SweetLife has decided to offer a recipe development service at a fixed price. Acting as the administrative user, you will create this service in the system.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*: Enables you to process sales and purchase orders that include non-stock items of the *Service* type.
    -   *Multiple Units of Measure*: Enables you to configure multiple units of measure.
-   On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, the *NONSTOCK* has been created.

    **Important:** While the U100 dataset you are going to use to configure a non-stock item of the *Service* type has predefined posting classes, in a production environment you can configure a non-stock item without posting classes.

-   On the [Units of Measure](../UserGuide/CS_20_35_00.md) \(CS203500\) form, the *ITEM* unit has been created.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *EXEMPT* tax category has been created.
-   On the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, the *TRAINING* service class, that is an item class with the *Service* item type has been created.

## Process Overview { .section}

By using the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form as a starting point, you will add a new record. The system will open the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, on which you will specify the settings of the new service. Then you will confirm that the service has been added to the list on the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form.

## System Preparation {#section_lt2_rgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Service with a Fixed Price { .section}

To create the fixed-price recipe development service, do the following:

1.  Open the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form.
2.  On the form toolbar, click **New Record**.

    The [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form opens in a new window.

3.  In the **Inventory ID** box of the Summary area, type `RECIPE DEV`.
4.  In the **Description** box, enter `Development of Unique Recipes`.
5.  On the **General** tab, in the **Item Class** box \(**Item Defaults** section\), select *COACHING*.

    After you select the service class, the billing rule on the **Price/Cost** tab and the units of measure on the **General** tab are filled in automatically with the settings of the service class. The posting class and tax category are also automatically assigned to the service.

6.  In the **Estimated Duration** box \(the **Field Service Defaults** section\), enter `2 h 00 m`.
7.  In the **Units of Measure** section, make sure that *ITEM* is selected in the **Base Unit**, **Sales Unit**, and **Purchase Unit** boxes.
8.  On the **Price/Cost** tab, do the following:
    -   In the **Default Price** box, enter `200.00`.
    -   In the **Billing Rule** box, make sure that *Flat Rate* is selected.
9.  Save your changes, and close the window with the item.
10. On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, click **Refresh** on the form toolbar, and verify that the *RECIPE DEV* service appears in the list of services.

**Parent topic:**[Services](../ImplementationGuide/ServMgmt_Services_Mapref.md)

