# Service Order Types Without Inventory Sales: To Create a Service Order Type {#_0cf31f70-33a7-4851-8d84-107f16c89e14 .task}

In this implementation activity, you will learn how to create a service order type for service orders and appointments that provide services only, with accounts receivable invoices generated as billing documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

The SweetLife Service and Equipment Sales Center receives a request for consulting services. As the administrative user, your task is to create a service order type for service orders and appointments that include only services. Customers will be billed through accounts receivable invoices.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, the *30D - 30 Days* credit terms have been created.

## Process Overview { .section}

In this lesson, you will create a new service order type on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form and specify the settings needed to generate accounts receivable invoices for billing.

## System Preparation {#section_nyr_wgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating the Service Order Type { .section}

To create a new service order type for service orders and appointments that include services only, do the following:

1.  On the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, click **Add New Record**.
2.  In the Summary area, enter the following settings:
    -   **Service Order Type**: `CNSL`
    -   **Description**: `Consulting`
3.  On the **General** tab, do the following:
    1.  In the **Numbering Sequence** box \(**General Settings** section\), select *FSSO*.
    2.  In the **Behavior** box, make sure *Regular* is selected. This option is typically used for standard service documents that involve a customer.
    3.  In the **Take Address and Contact Information From** box \(**Default Settings** section\), make sure *Business Account* is selected.
    4.  In the **Generated Billing Documents** box \(**Billing Settings** section\), select *AR Documents*.
    5.  In the **Default Terms for AR and SO** box, select *30D - 30 Days*.
    6.  Select the **Bill Only Closed Appointments** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

