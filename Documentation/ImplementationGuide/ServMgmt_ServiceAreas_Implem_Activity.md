# Service Areas: To Add a Service Area and Assign a Staff Member to It {#_572f45df-d4a9-454a-8328-5db6129e743f .task}

In this implementation activity, you will learn how to define a service area to the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are an administrative user of the SweetLife Service and Equipment Sales Center, and you need to add a new service area to the system. The company plans to use this area to provide services to customers in that region.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, the *EP00000043 \(Edward Smith\)* and *EP00000044 - Ricardo Martinez* employees have been created and have been defined as a service management staff members. That is, the **Staff Member in Service Management** check box has been selected on the **General** tab for each employee.

## Process Overview { .section}

On the [Service Areas](../UserGuide/FS_20_19_00.md) \(FS201900\) form, you will create a new service area record; on the **Postal Codes** tab, you will add the list of ZIP codes related to the service area. Then on the **Employees** tab of this form, you will add the staff members who can perform services in the service area.

## System Preparation { .section}

Before you start this activity, do the following:

-   Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
-   Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.
-   On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
-   Download the following Excel file, which includes the list of postal codes needed for the current activity: [GeoZones\_JAMAICA](Files/GeoZones_JAMAICA.xlsx)

    **Important:** In this activity, you will use the list of postal codes provided in the sample Excel file. In a production environment, however, you will need to prepare your own Excel file containing the postal codes relevant to your service area.


## Step 1: Adding a Service Area { .section}

To add a service area to the system, do the following:

1.  Open the [Service Areas](../UserGuide/FS_20_19_00.md) \(FS201900\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area of the form, specify the following settings:
    -   **Service Area ID**: `JAMAICA`
    -   **Description**: `Jamaica`
    -   **Country**: *US - United States of America*
4.  On the form toolbar, click **Save**.
5.  On the **Postal Codes** tab, click **Load Records from File** on the table toolbar, and upload the postal codes from the `GeoZones_JAMAICA.xlsx` file.

    In the **Import Data** dialog box that opens, keep the default values, and click **Next**, then **Finish**.

    The list of postal codes appears on the **Postal Codes** tab, defining the area to be served.

    **Tip:** If the service area includes only a few postal codes, you can instead add them manually: on the **Postal Codes** tab, click **Add Row** on the table toolbar, and enter each postal code included in the service area.

6.  On the form toolbar, click **Save**.
7.  In the **Service Area ID** box of the Summary area, click the magnifier button. In the lookup table that opens, you can see the list of service areas created in the system, including the *JAMAICA* service area, which you have created in this step.

## Step 2: Assigning Employees to the New Service Area { .section}

To assign staff members to particular geographical areas, you can assign each staff member to the service area where they are available for performing services.

To assign multiple staff members to the service area you created, do the following:

1.  While you are still viewing the [Service Areas](../UserGuide/FS_20_19_00.md) \(FS201900\) form, in the **Service Area ID** box, select *JAMAICA*.
2.  On the **Employees** tab, add rows for the following employees, and save your changes:
    -   *EP00000043 \(Edward Smith\)*
    -   *EP00000044 \(Ricardo Martinez\)*
3.  On the form toolbar, click **Save**.

**Tip:** You can also assign any number of service areas to a particular staff member on the **Service Areas** tab of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.

**Parent topic:**[Service Areas](../ImplementationGuide/ServMgmt_ServiceArea_Mapref.md)

