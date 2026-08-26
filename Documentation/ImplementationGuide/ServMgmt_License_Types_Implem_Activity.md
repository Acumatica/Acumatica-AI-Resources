# License: To Create a License Type and Assign It to a Service {#_5c9c6d07-a9cc-40ef-8c07-9271c98a0a84 .task}

In this implementation activity, you will learn how to create a license type and then assign the license type to a service.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center wants to keep track of the licenses its employees have. This will give service managers the ability to assign the right employee to each appointment, because for some services, a license can be a requirement for performing this service. Before adding license information to the system, you need to create the appropriate license types based on which the licenses will be added for individual users.

Acting as an administrative user, you will create a license type and then assign this license type to a service to represent which license is required for a staff member who can perform this service.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, the *DELIVERY* service has been created.

## Process Overview { .section}

On the [License Types](../UserGuide/FS_20_09_00.md) \(FS200900\) form, you will add a new type for a license that is required for performing the delivery service. Then on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, which you will open from the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, you will assign the newly created license type to the *DELIVERY* non-stock item of the *Service* type.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step 1: Creating a License Type { .section}

To create a license type, do the following:

1.  Open the [License Types](../UserGuide/FS_20_09_00.md) \(FS200900\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the new row, enter the following settings:
    -   **License Type ID**: `DRIVER`
    -   **Description**: `Driver’s License`
4.  On the form toolbar, click **Save**.

Now that you have added a license type to the system, you will assign this license type to a service that requires the person who performs the service to have a license of this type.

## Step 2: Assigning a License Type to a Service { .section}

To assign a license type to a service, do the following:

1.  On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, click *DELIVERY* in the **Inventory ID** column.

    This opens the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form with the *DELIVERY* non-stock item of the *Service* type selected.

2.  On the **Service License Types** tab, add a row.
3.  In the **License Type ID** column, select *DRIVER*.
4.  Save your changes and close the [Non-Stock Items](../UserGuide/IN_20_20_00.md) form.

You have defined the license type required to perform the delivery service. You can now proceed to adding the license information to the system.

**Parent topic:**[Licenses](../ImplementationGuide/ServMgmt_License_Mapref.md)

