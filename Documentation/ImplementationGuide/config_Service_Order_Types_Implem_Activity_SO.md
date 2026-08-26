# Service Order Types for Inventory Sales with Shipping: To Create a Service Order Type {#_ce111daf-6898-4b94-b3c4-12aa21833fe1 .task}

In this implementation activity, you will learn how to create a service order type for service orders and appointments where sales orders are generated during the billing process. The sales order may include both services and inventory items, which may require shipping.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center provides juicer installation services to its customers. Along with these services, the company sells stock items. Acting as an administrative user, you need to create a service order type for service orders and appointments that include installation services and may also include stock items. Sales orders will be generated for these service orders and appointments during the billing process.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, the *30D - 30 Days* credit terms have been created.
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Inventory and Order Management* and *Inventory* features have been enabled.
-   On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, the predefined *SO*, *IN* and *CM* order types have been modified to be used with field services functionality. That is, the **Enable Field Services Integration** check box has been selected in the **Field Services Settings** section on the **General** tab of the form.

## Process Overview { .section}

In this activity, you will create a new service order type on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form and specify the needed settings for sales orders to be generated during the billing process.

## System Preparation {#section_dmn_5gy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating the Service Order Type { .section}

To create a service order type for service documents that generate sales orders during billing, do the following:

1.  On the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, click **Add New Record**.
2.  In the Summary area, enter the following settings:
    -   **Service Order Type**: `EQP`
    -   **Description**: `Equipment installation services`
3.  On the **General** tab:
    1.  In the **Numbering Sequence** box, select *FSSO - Service Orders*.
    2.  In the **Behavior** box, make sure that *Regular* is selected. This option is typically used for standard service documents that involve a customer.
    3.  In the **Take Address and Contact Information From** box \(**Default Settings** section\), make sure that *Business Account* is selected.
    4.  In the **Generated Billing Documents** box \(**Billing Settings** section\), select *Sales Orders*.
    5.  In the **Order Type for Billing** box, select *IN - Invoice*. Sales orders of this type can be used for processing sales of goods and services without shipping.
    6.  In the **Order Type for Negative Balance Billing** box, select *CM - Credit Memo*, which means that credit memo orders will be created during billing for service documents with a negative balance.
    7.  In the **Order Type for Allocation** box, ensure that *SO - Sales Order* is selected.
    8.  In the **Default Terms for AR and SO** box, select *30D - 30 Days*.
    9.  Select the **Bill Only Closed Appointments** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Service Order Types for Inventory Sales](../ImplementationGuide/config_Service_Order_Types_Inventory_Mapref.md)

