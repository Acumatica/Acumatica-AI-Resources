# Service Order Types: To Configure Quick Processing for a Service Order Type {#_5b7c4b58-361d-453b-9401-6cc7b7536765 .task}

In this implementation activity, you will learn how to configure quick processing for a service order type.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Acting as an administrative user of the SweetLife Service and Equipment Sales Center, you need to set up quick processing for an existing service order type. During quick processing for a service document of this type, the system must perform the following actions:

-   Run billing for the service document
-   Complete and close the service document
-   Prepare and release the sales invoice, and send it by email to the customer

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Inventory and Order Management* and *Inventory* features have been enabled.

## Process Overview { .section}

In this activity, you will set up quick processing for an existing service order type by modifying it on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form and specifying the necessary settings on the **Quick Processing** tab.

## System Preparation {#section_krc_tgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Configuring Quick Processing { .section}

To configure quick processing for a service order type, do the following:

1.  On the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, open the *CSLT* service order type.
2.  On the **General** tab \(**Billing Settings** section\), select the **Allow Quick Process** check box.
3.  On the **Quick Processing** tab, which appears on the form, do the following to specify the settings that define which actions the system performs when a user runs quick processing for a service order or appointment of this type:
    1.  In the **Appointment Actions** section, make sure that the **Run Billing** check box is selected.
    2.  In the **Service Order Actions** section, do the following:
        1.  Select the **Close** check box.
        2.  Make sure that the **Run Billing** check box is selected.
    3.  In the **Invoice Actions** section, do the following:
        -   Select the **Release Invoice** check box.
        -   Select the **Email Invoice** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Service Order Types for Inventory Sales](../ImplementationGuide/config_Service_Order_Types_Inventory_Mapref.md)

