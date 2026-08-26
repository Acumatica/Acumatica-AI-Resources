# Branch Locations: Implementation Activity {#_edfda857-0841-4347-8588-1b0749d4f227 .task}

In this implementation activity, you will learn how to create a branch location in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

An administrative user of the SweetLife Service and Equipment Sales Center has already created the *WEST BRIGHTON* branch location in Acumatica ERP. This location represents the main office of the Service and Equipment Sales Center and corresponds to the *SWEETEQUIP* branch in the system. The company is now opening a new office under this branch to provide services. As the administrative user, you will create a branch location in the system for the new office.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.

## Process Overview { .section}

In this lesson, you will specify the settings for the new branch location on the [Branch Locations](../UserGuide/FS_20_25_00.md) \(FS202500\) form.

## System Preparation {#section_l4h_xgy_1hc .section}

Before you start the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating a Branch Location { .section}

To create a new branch location, do the following:

1.  Open the [Branch Locations](../UserGuide/FS_20_25_00.md) \(FS202500\) form.
2.  In the **Branch Location ID** box, type `BROOKLYN`.
3.  On the form toolbar, click **Add New Record**.
4.  In the **Description** box, enter `Brooklyn Office`.
5.  In the **Branch** box, select *SWEETEQUIP*.
6.  On the **General** tab \(**Main Address** section\), specify the following settings:
    -   **Address Line 1**: `1230 Surf Ave`
    -   **City**: `Brooklyn`
    -   **Country**: *US*
    -   **State**: *NY*
    -   **Postal Code**: `11224`
7.  In the **Default Warehouse** box \(**Inventory Defaults** section\), select *EQUIPHOUSE*.
8.  On the form toolbar, click **Save**.

The *SWEETEQUIP* branch now has two branch locations providing services: *WEST BRIGHTON* and *BROOKLYN*.

**Parent topic:**[Branch Locations](../ImplementationGuide/config_ServMgmt_Branch_Locations_Mapref.md)

