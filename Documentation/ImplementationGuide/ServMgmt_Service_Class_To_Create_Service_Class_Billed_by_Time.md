# Service Classes: To Create a Service Class for Services Billed by Time {#_8d5be111-07dd-4874-bf61-4f4bae23f397 .task}

In this implementation activity, you will learn how to create a service class intended to group services that are billed by time.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center has decided to sell a set of educational services that will include teaching, coaching, and instructing. All these services are going to be billed by time. Acting as an administrative user, you need to create a service class that will contain the general settings of this group of services.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*: Makes it possible to process sales and purchase orders that include non-stock items of the *Service* type.
        -   *Inventory*: Provides the ability to process sales and purchase orders that include non-stock items with shipments and PO receipts.
        -   *Multiple Units of Measure*: Gives you the ability to defined multiple units of measure.
-   On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, the *NONSTOCK* posting class has been created.
-   On the [Units of Measure](../UserGuide/CS_20_35_00.md) \(CS203500\) form, the *HOUR* unit has been created.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *EXEMPT* tax category has been created.

## Process Overview { .section}

On the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, you will create a service class that is used to group services that are billed by the number of hours spent while providing a service.

## System Preparation {#section_bpw_rgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Service Class { .section}

To create the service class, do the following:

1.  Open the [Service Classes](../UserGuide/FS_40_09_00.md) \(FS400900\) form.
2.  On the form toolbar, click **New Record**.

    The [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form opens in a new window.

3.  In the **Class ID** box of the Summary area, type `EDU`.
4.  In the **Description** box, enter `Educational Services (Billed by Time)`.
5.  On the **General** tab \(**General Settings** section\), do the following:
    -   Clear the **Stock Item** check box.
    -   In the **Item Type** box, select *Service*.
    -   In the **Tax Category** box, select *EXEMPT*.
    -   In the **Posting Class**, select *NONSTOCK*.
6.  In the **Unit of Measure** section, select *HOUR* in the **Base Unit**, **Sales Unit**, and **Purchase Unit** boxes.
7.  On the **Service Management** tab, in the **Default Billing Rule** box, select *Time*.
8.  Save your changes and close the window with the item class.
9.  On the [Service Classes](../UserGuide/FS_40_09_00.md) form, make sure that the *EDU* service class is now displayed in the table.

You have created the new service class. When you create a new service on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form and select this service class, the system will populate relevant elements of the service with the values you have specified for the class.

**Parent topic:**[Service Classes](../ImplementationGuide/ServMgmt_Service_Class_Mapref.md)

