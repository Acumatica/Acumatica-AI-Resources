# Service Order Types: To Create a Service Order Type for Route Appointments {#_1f9e5cf5-5026-435c-a30b-f27286d9436e .task}

In this implementation activity, you will learn how to create a service order type for the company's service orders and appointments that are a part of route management.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center periodically performs route management. Acting as an administrative user, you need to create a service order type for route appointments.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The minimum system configuration has been performed, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality has been performed, as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, the *30D - 30 Days* credit terms have been defined.

## Process Overview { .section}

In this activity, you will create a service order type for service orders and appointments that are a part of route management on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form and specify the needed settings.

## System Preparation { .section}

Before you start configuring a service order type, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.
2.  As a prerequisite activity, in the company to which you are signed in, be sure you have enabled the *Service Management* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.
3.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.

## Step: Creation of the Service Order Type { .section}

To create the new service order type for route appointments, do the following:

1.  Open the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, enter the following settings:
    -   **Service Order Type**: `RTS`
    -   **Description**: `Routes`
4.  On the **General** tab, in the **Numbering Sequence** box of the **General Settings** section, select *FSSO*.
5.  In the **Behavior** box, select *Route*.
6.  In the **Default Settings** section, in the **Take Address and Contact Information From** box, make sure *Business Account* is selected.
7.  In the **Billing Settings** section, select *AR Documents* in the **Generated Billing Documents** box.
8.  In the **Default Terms for AR and SO** box, select *30D*.
9.  Select the **Bill Only Closed Appointments** check box.
10. On the form toolbar, click **Save**.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

