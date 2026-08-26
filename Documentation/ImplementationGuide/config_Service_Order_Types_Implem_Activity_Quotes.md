# Service Order Types: To Create a Service Order Type for Quotes {#_c69c88a1-5277-45dc-b715-d6b0f7bc1f5d .task}

In this implementation activity, you will learn how to create a service order type for quotes. A quote can be converted into a service order if the customer agrees to the terms.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center sends quotes that include details about the services and stock items to be used during appointments. These quotes can later be converted into service orders. As the administrative user, your task is to create a service order type specifically for quotes.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.

## Process Overview { .section}

In this activity, you will create a service order type for quotes on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form and specify the needed settings.

## System Preparation {#section_asx_tgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Service Order Type for Quotes { .section}

To create a new service order type for quotes, do the following:

1.  On the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, click **Add New Record**.
2.  In the Summary area, enter the following settings:
    -   **Service Order Type**: `QUOT`
    -   **Description**: `Quotes`
3.  On the **General** tab:
    1.  In the **Numbering Sequence** box, select *FSSO*.
    2.  In the **Behavior** box, select *Quote*. This behavior is used for service order quotes. When you select it, unnecessary settings \(such as billing settings\) are removed from the form.
    3.  In the **Take Address and Contact Information From** box \(**Default Settings** section\), make sure that *Business Account* is selected.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

