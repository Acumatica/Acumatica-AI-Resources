# Service Classes: To Create a Service Class for Services with Fixed Prices {#_410e80bb-b1f7-42f9-b57d-9d2030526d22 .task}

In this implementation activity, you will learn how to create a service class that is intended to group services for which a flat rate is charged—that is, the services of the class will have fixed prices, regardless of the time that was spent to perform a service.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center has decided to offer business consulting services related to juicing—for example, developing custom recipes for customers or creating profitable menu pricing strategies. As the administrative user, you will create a new service class in the system to group these consulting services under similar settings.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*: Enables you to process sales and purchase orders that include non-stock items of the *Service* type.
        -   *Inventory*: Enables you to process the sales and purchase orders that include non-stock items with shipments and PO receipts.
        -   *Multiple Units of Measure*: Enables you to configure multiple units of measure.
-   On the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form, the *NONSTOCK* has been created.
-   On the [Units of Measure](../UserGuide/CS_20_35_00.md) \(CS203500\) form, the *ITEM*, and *HOUR* units have been created.
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the definition of the necessary tax categories, which you will assign to the new non-stock item.

## Process Overview { .section}

On the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, you will create a new service class.

## System Preparation {#section_edj_sgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Service Class { .section}

To create a service class, do the following:

1.  Open the [Service Classes](../UserGuide/FS_40_09_00.md) \(FS400900\) form.
2.  On the form toolbar, click **New Record**.

    The [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form opens in a new window.

3.  In the **Class ID** box of the Summary area, enter `CONSULTING`.
4.  In the **Description** box, enter `Juice Business Consulting Services`.
5.  On the **General** tab \(**General Settings** section\), do the following:
    -   Clear the **Stock Item** check box.
    -   In the **Item Type** box, select *Service*.
    -   In the **Tax Category** box, select *EXEMPT*.
    -   In the **Posting Class**, select *NONSTOCK*.
6.  In the **Unit of Measure** section, select *ITEM* in the **Base Unit**, **Sales Unit**, and **Purchase Unit** boxes.
7.  On the **Service Management** tab, in the **Default Billing Rule** box, select *Flat Rate*.
8.  Save your changes and close the window with the item class.
9.  On the [Service Classes](../UserGuide/FS_40_09_00.md) form, make sure that the *CONSULTING* service class is now displayed in the table.

You have created the new service class. When you create a new service on the [Non-Stock Items](../UserGuide/IN_20_20_00.md)\(IN202000\) form and select this service class, the system will populate relevant elements of the service with the values you have specified for the class.

**Parent topic:**[Service Classes](../ImplementationGuide/ServMgmt_Service_Class_Mapref.md)

