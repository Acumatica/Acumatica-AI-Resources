# Service Order Types for Inventory Sales: To Review Sales Order Types {#_0aa143f6-c564-4ede-8e4a-8a2e453ef97f .task}

If your company plans to sell inventory items as part of field services, you must define the order types used to create sales orders for service documents.

In this activity, you will review the settings of the order types intended for use in service documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center plans to sell inventory items together with services during appointments. As the administrative user, you need to set up the system to process the sale of services and stock items, and to manage appointments where services are performed and related items may be sold. Specifically, your task is to review the order types used for sales orders generated for service orders and appointments.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Inventory and Order Management* and *Inventory* features have been enabled.
-   On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, the predefined *SO*, *IN* and *CM* order types have been created and defined to be used with the field services functionality. That is, the **Enable Field Services Integration** check box has been selected in the **Field Services Settings** section on the **General** tab of the form.

## Process Overview { .section}

On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you will review the sales order type settings to be sure that sales orders of the type can be used for service management.

## System Preparation {#section_d2y_vgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Reviewing Order Types for Field Service Functionality { .section}

In this step, you will review the *SO*, *IN*, and *CM* order types to ensure they are defined for use with the field service functionality. On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, do the following:

1.  In the **Order Type** box, select *SO - Sales Order*.
    -   Sales orders of this type are created on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form and are used to process sales of items that require shipping.
    -   On the **General** tab \(**Field Services Settings** section\), ensure that the **Enable Field Services Integration** check box is selected.
2.  In the **Order Type** box, select *IN - Invoice*.
    -   Sales orders of this type are also created on the [Sales Orders](../UserGuide/SO_30_10_00.md) form and are used to process sales of items without shipping.
    -   On the **General** tab \(**Field Services Settings** section\), ensure that the **Enable Field Services Integration** check box is selected.
3.  In the **Order Type** box, select *CM - Credit Memo*.
    -   The orders of this type are created on the [Sales Orders](../UserGuide/SO_30_10_00.md) form. In service management, credit memo orders are created during billing for service documents with a negative balance.
    -   On the **General** tab \(**Field Services Settings** section\), ensure that the **Enable Field Services Integration** check box is selected.

You have now reviewed the *SO*, *IN*, and *CM* order types to ensure their settings are appropriate for sales orders used in field service processes.

**Parent topic:**[Service Order Types for Inventory Sales](../ImplementationGuide/config_Service_Order_Types_Inventory_Mapref.md)

