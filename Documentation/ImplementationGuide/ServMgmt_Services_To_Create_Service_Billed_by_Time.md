# Services: To Create a Service Billed by Time {#_3c4e77fd-1a20-4ee5-b4bf-0d9160ddb621 .task}

In this implementation activity, you will learn how to create a service that is billed based on time.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center has decided to offer a set of educational services that will be billed based on time. These services include teaching, coaching, and instruction. As the administrative user, you will create the *Training Course* service and specify its typical duration and hourly rate.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*: Provides the ability to process sales and purchase orders that include non-stock items of the *Service* type.
    -   *Multiple Units of Measure*: Gives you the ability to define multiple units of measure.
-   On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, the *NONSTOCK* posting class has been created.
-   On the [Units of Measure](../UserGuide/CS_20_35_00.md) \(CS203500\) form, the *ITEM* unit has been created.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *EXEMPT* tax category has been created.
-   On the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, the *TRAINING* service class \(that is, an item class with the *Service* item type\) has been created.

## Process Overview { .section}

By using the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form as a starting point, you will add a new record. The system will open the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, on which you will specify the settings of the new *Training course* service. Then you will confirm that the service has been added to the list on the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form.

## System Preparation {#section_k34_qgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Service Billed by Time { .section}

To create a service that is billed by time, do the following:

1.  Open the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form.
2.  On the form toolbar, click **New Record**.

    The [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form opens in a new window.

3.  In the **Inventory ID** box of the Summary area, type `TRAINING CRS`.
4.  In the **Description** box, enter `Courses on Juicer Usage: Theory and Practice`.
5.  On the **General** tab, in the **Item Class** box \(**Item Defaults** section\), select *TRAINING*.

    After you select the service class, the billing rule on the **Price/Cost** tab and the units of measure on the **General** tab are filled in automatically with the settings of the service class. The posting class and tax category are also automatically assigned to the service.

6.  In the **Estimated Duration** box \(**Field Service Defaults** section\), enter `3 h 00 m`.
7.  In the **Units of Measure** section, make sure that *HOUR* is selected in the **Base Unit**, **Sales Unit**, and **Purchase Unit** boxes.
8.  On the **Price/Cost** tab, do the following:
    -   In the **Default Price** box, enter `70.00`.
    -   In the **Billing Rule** box, make sure that *Time* is selected.
9.  Save your changes, and close the window with the [Non-Stock Items](../UserGuide/IN_20_20_00.md) form.
10. On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, click **Refresh** on the form toolbar, and verify that the *TRAINING CRS* service appears in the list of services.

**Parent topic:**[Services](../ImplementationGuide/ServMgmt_Services_Mapref.md)

